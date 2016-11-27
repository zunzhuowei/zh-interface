package org.keega.idea.dao.modify;

import com.alibaba.fastjson.JSON;
import org.apache.commons.dbutils.DbUtils;
import org.dom4j.Document;
import org.dom4j.Element;
import org.keega.idea.dao.ModifyAbstractDao;
import org.keega.idea.log.WriteLogUtil;
import org.keega.idea.xml.util.XMLUtil;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by zun.wei on 2016/11/15.
 * To change this template use File|Default Setting
 * |Editor|File and Code Templates|Includes|File Header
 */
@Repository
public class ModifyDao extends ModifyAbstractDao implements IModifyDao {

    //被调用的方法
    @Override
    public String modifyData(String interfaceKey, String xmlFileName, String conditions) {
        Document document = XMLUtil.getModifyDocument(xmlFileName);
        String keyXml = this.cheakKeyAndXmlFile(interfaceKey, document);
        return returnModifyJson(keyXml, interfaceKey, xmlFileName, conditions, document);
    }

    //返回请求json
    private String returnModifyJson(String keyXml, String interfaceKey, String xmlFileName, String conditions, Document document) {
        if (keyXml != null) {
            WriteLogUtil.writeLog2File(simpleDateFormat4FileName.format(new Date()), interfaceKey,
                    xmlFileName, conditions, simpleDateFormat.format(new Date()), keyXml);
            return keyXml;
        } else {
            WriteLogUtil.writeLog2File(simpleDateFormat4FileName.format(new Date()), interfaceKey,
                    xmlFileName, conditions, simpleDateFormat.format(new Date()), getExecuteModifyResult(document, conditions));
            return getExecuteModifyResult(document, conditions);
        }
    }

    //获取执行修改的结果
    private String getExecuteModifyResult(Document document, String conditions) {
        String executeResult = null;
        try {
            Element element = document.getRootElement();
            String jsonModifyField = element.attributeValue("jsonModifyField");
            String jsonTableNameField = element.attributeValue("jsonTableNameField");
            List<Element> elementSets = element.elements();
            List<Map> conditionMap = null;
            try {
                conditionMap = JSON.parseArray(conditions, Map.class);
            } catch (Exception e) {
                System.err.println("传过来的json格式出错！");
                e.printStackTrace();
            }
            executeResult = this.ExecuteModify(elementSets, jsonModifyField, jsonTableNameField, conditionMap);
        } catch (SQLException e) {
            return String.format(RETURN_MSG, LEVEL3, LEVEL3_MESSAGE);
            //e.printStackTrace();
        }
        return String.format(RETURN_MSG, LEVEL0, executeResult);
    }

    //执行修改
    private String ExecuteModify(List<Element> elementSets, String jsonModifyField, String jsonTableNameField
            , List<Map> conditionMap) throws SQLException {
        for (int i = 0; i < elementSets.size(); i++) {
            String systemSetName = elementSets.get(i).attributeValue("systemSetName");
            String matchSetName = elementSets.get(i).attributeValue("matchSetName");
            String modifyType = elementSets.get(i).attributeValue("modifyType");
            for (int j = 0; j < conditionMap.size(); j++) {
                allocationModify(i, j, jsonModifyField, jsonTableNameField, conditionMap,
                        modifyType, matchSetName, systemSetName, elementSets);
            }
        }
        return "execute success";
    }

    //分配执行修改
    private void allocationModify(int i, int j, String jsonModifyField, String jsonTableNameField,
                                  List<Map> conditionMap, String modifyType, String matchSetName,
                                  String systemSetName, List<Element> elementSets) throws SQLException {
        String otherModifyType = conditionMap.get(j).get(jsonModifyField) + "";//获取json中名字为modify的属性的值
        String otherTableName = conditionMap.get(j).get(jsonTableNameField) + "";//从json中获取其他系统的表名
        if (modifyType.equals(otherModifyType) && matchSetName.equals(otherTableName)) {
            List<Element> elementParams = null;
            List<Element> elementWheres = null;
            if (elementSets.get(i).element("params") != null) {
                elementParams = elementSets.get(i).element("params").elements();
            }
            if (elementSets.get(i).element("whereConditions") != null) {
                elementWheres = elementSets.get(i).element("whereConditions").elements();
            }
            if ("insert".equals(modifyType)) {
                this.insertModify(elementParams, systemSetName, conditionMap, j);
            } else if ("update".equals(modifyType)) {
                this.updateModify(elementParams, systemSetName, conditionMap, elementWheres, j);
            } else if ("delete".equals(modifyType)) {
                //this.deleteModify(systemSetName, conditionMap, elementWheres, j);
            } else {
                System.err.println("modifyType must in insert , update or delete ! It's out of these !");
            }
        }
    }

    //执行插入
    private void insertModify(List<Element> elementParams, String systemSetName,
                              List<Map> conditionMap, int j) throws SQLException {
        StringBuffer sb = new StringBuffer(" (");
        StringBuffer sb1 = new StringBuffer(" (");
        String[] realValues = new String[elementParams.size() + 1];
        String A0100 = null;
        for (int k = 0; k < elementParams.size(); k++) {
            String dataType = elementParams.get(k).attributeValue("dataType");
            String systemName = elementParams.get(k).attributeValue("systemName");
            String matchName = elementParams.get(k).attributeValue("matchName");
            String value = conditionMap.get(j).get(matchName) + "";
            sb.append(systemName).append(",");
            sb1.append("?").append(",");
            realValues[k] = value;
            if ("A0100".equals(systemName)) {
                A0100 = value;
            }
        }
        String sql = "insert into " +
                systemSetName + sb.toString().substring(0, sb.toString().length() - 1) + ",I9999) values" +
                sb1.toString().substring(0, sb1.toString().length() - 1) + ",?" + ")";
        realValues[realValues.length - 1] = getMaxPrimaryKeyAddOne(systemSetName, A0100);
        Connection connection = getConn();
        try {
            queryRunner.update(connection, sql, realValues);
        } finally {
            DbUtils.close(connection);
        }
    }

    //执行更新
    private void updateModify(List<Element> elementParams, String systemSetName, List<Map> conditionMap,
                              List<Element> elementWheres, int j) throws SQLException {
        StringBuffer sb = new StringBuffer();
        Object[] realValues = new Object[elementParams.size()];
        for (int k = 0; k < elementParams.size(); k++) {
            String dataType = elementParams.get(k).attributeValue("dataType");
            String systemName = elementParams.get(k).attributeValue("systemName");
            String matchName = elementParams.get(k).attributeValue("matchName");
            String value = conditionMap.get(j).get(matchName) + "";
            sb.append(systemName).append("=").append("'").append(value).append("'").append(" ,");
            realValues[k] = value;
        }
        StringBuffer sbWhere = new StringBuffer();
        if (elementWheres != null) {
            for (int t = 0; t < elementWheres.size(); t++) {
                String dataType = elementWheres.get(t).attributeValue("dataType");
                String systemName = elementWheres.get(t).attributeValue("systemName");
                String matchName = elementWheres.get(t).attributeValue("matchName");
                String value = conditionMap.get(j).get(matchName) + "";
                sbWhere.append(systemName).append("=").append("'").append(value).append("'")
                        .append(" and ");
            }
        }
        String sql = null;
        if (sbWhere.length() < 3) {
            sql = "update " + systemSetName + " set " +
                    sb.toString().substring(0, sb.toString().length() - 1);
        } else {
            sql = "update " + systemSetName + " set " +
                    sb.toString().substring(0, sb.toString().length() - 1) +
                    " where " + sbWhere.toString().substring(0, sbWhere.toString().length() - 4);
        }
        Connection connection = getConn();
        try {
            queryRunner.update(connection, sql);
        } finally {
            DbUtils.close(connection);
        }
    }

    //执行删除
    private void deleteModify(String systemSetName, List<Map> conditionMap,
                              List<Element> elementWheres, int j) throws SQLException {
        StringBuffer sbWhere = new StringBuffer();
        if (elementWheres != null) {
            for (int f = 0; f < elementWheres.size(); f++) {
                //String dataType = elementWheres.get(f).attributeValue("dataType");
                String systemName = elementWheres.get(f).attributeValue("systemName");
                String matchName = elementWheres.get(f).attributeValue("matchName");
                String value = conditionMap.get(j).get(matchName) + "";
                sbWhere.append(systemName).append("=").append("'").append(value).append("'")
                        .append(" and ");
            }
        }
        String sql = null;
        if (sbWhere.length() < 3) {
            sql = "delete from " + systemSetName;
        } else {
            sql = "delete from " + systemSetName + " where " +
                    sbWhere.toString().substring(0, sbWhere.toString().length() - 4);
        }
        //System.out.println(sql);
        Connection connection = getConn();
        try {
            queryRunner.update(connection, sql);
        } finally {
            DbUtils.close(connection);
        }
    }


}
