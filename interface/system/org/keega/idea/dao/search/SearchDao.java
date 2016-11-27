package org.keega.idea.dao.search;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.handlers.MapHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;
import org.dom4j.Document;
import org.dom4j.Element;
import org.keega.idea.dao.SearchAbstractDao;
import org.keega.idea.log.WriteLogUtil;
import org.keega.idea.xml.util.Json2XmlUtil;
import org.keega.idea.xml.util.XMLUtil;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by zun.wei on 2016/11/5.
 * To change this template use File|Default Setting
 * |Editor|File and Code Templates|Includes|File Header
 */
@Repository
public class SearchDao extends SearchAbstractDao implements ISearchDao {

    //密匙，xml名称，传过来的json内容
    @Override
    public String getSearchJsonObject(String interfaceKey, String xmlFileName, String conditons) {
        Document document = XMLUtil.getSearchDocument(xmlFileName);
        String keyXml = this.cheakKeyAndXmlFile(interfaceKey, document);
        return returnObjectJson(keyXml, interfaceKey, xmlFileName, conditons, document);
    }

    //密匙，xml名称，传过来的json内容
    @Override
    public String getSearchJsonArray(String interfaceKey, String xmlFileName, String conditons) {
        Document document = XMLUtil.getSearchDocument(xmlFileName);
        String keyXml = this.cheakKeyAndXmlFile(interfaceKey, document);
        return returnArrayJson(keyXml, interfaceKey, xmlFileName, conditons, document,1);
    }

    @Override
    public String writeJsonData2Xml(String interfaceKey, String xmlFileName, String conditions) {
        Document document = XMLUtil.getSearchDocument(xmlFileName);
        String keyXml = this.cheakKeyAndXmlFile(interfaceKey, document);
        String json = returnArrayJson(keyXml, interfaceKey, xmlFileName, conditions, document,0);
        String xmlString = Json2XmlUtil.json2xml(xmlFileName.substring(0,xmlFileName.indexOf("-")),
                xmlFileName.substring(xmlFileName.indexOf("-") + 1),1,json);
        WriteLogUtil.writeLog2File(simpleDateFormat4FileName.format(new Date()), interfaceKey, xmlFileName
                , conditions, simpleDateFormat.format(new Date()), Json2XmlUtil.json2xml(xmlFileName,"set",0,json));
        Json2XmlUtil.writeXml2File(simpleDateFormat4FileName.format(new Date()), xmlString);
        return xmlString;
    }

    //返回请求json
    private String returnObjectJson(String keyXml, String interfaceKey, String xmlFileName,
                                    String conditons, Document document) {
        if (keyXml != null) {
            WriteLogUtil.writeLog2File(simpleDateFormat4FileName.format(new Date()), interfaceKey,
                    xmlFileName, conditons, simpleDateFormat.format(new Date()), keyXml);
            return keyXml;
        } else {
            WriteLogUtil.writeLog2File(simpleDateFormat4FileName.format(new Date()), interfaceKey, xmlFileName,
                    conditons, simpleDateFormat.format(new Date()), getJsonObjectContext(document, conditons));
            return getJsonObjectContext(document, conditons);
        }
    }

    //返回请求json//returnFlag=0的时候表示返回写入xml的json，returnFlag等于0以外的时候等于返回调用接口时的返回格式。
    private String returnArrayJson(String keyXml, String interfaceKey, String xmlFileName,
                                   String conditons, Document document,int returnFlag) {
        if (keyXml != null) {
            if (0 != returnFlag) {
                WriteLogUtil.writeLog2File(simpleDateFormat4FileName.format(new Date()), interfaceKey,
                        xmlFileName, conditons, simpleDateFormat.format(new Date()), keyXml);
            }
            return keyXml;
        } else {
            if (0 != returnFlag) {
                WriteLogUtil.writeLog2File(simpleDateFormat4FileName.format(new Date()), interfaceKey,
                        xmlFileName, conditons, simpleDateFormat.format(new Date()), getJsonArrayContext(document, conditons,returnFlag));
            }
            return getJsonArrayContext(document, conditons,returnFlag);
        }
    }

    //获取返回单个对象的json内容
    private String getJsonObjectContext(Document document, String condition) {
        String json = null;
        Connection connection = null;
        try {
            connection = getConn();
            String sql = this.getQuerySql(document, condition);
            String[] whereValues = this.getWhereValues(document, condition);
            Map<String, Object> map = queryRunner.query(connection,
                    sql, new MapHandler(), whereValues);
            json = JSON.toJSONStringWithDateFormat(map, "yyyy-MM-dd", SerializerFeature.WriteDateUseDateFormat);
        } catch (SQLException e) {
            return String.format(RETURN_MSG, LEVEL3, LEVEL3_MESSAGE);
            //e.printStackTrace();
        } finally {
            try {
                DbUtils.close(connection);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return String.format(RETURN_MSG, LEVEL0, json);
    }

    //获取返回对象数组的json内容
    private String getJsonArrayContext(Document document, String condition,int returnFlag) {
        String json = null;
        Connection connection = null;
        try {
            connection = getConn();
            String sql = this.getQuerySql(document, condition);
            String[] whereValues = this.getWhereValues(document, condition);
            List<Map<String, Object>> mapList = queryRunner.query(connection,
                    sql, new MapListHandler(), whereValues);
            json = JSON.toJSONStringWithDateFormat(mapList, "yyyy-MM-dd", SerializerFeature.WriteDateUseDateFormat);
        } catch (SQLException e) {
            return String.format(RETURN_MSG, LEVEL3, LEVEL3_MESSAGE);
            //e.printStackTrace();
        } finally {
            try {
                DbUtils.close(connection);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (0 == returnFlag) {//当时0的时候返回用于写入xml的json
            return json;
        } else {//否则返回调用接口返回的格式.
            return String.format(RETURN_MSG, LEVEL0, json);
        }
    }

    private String[] getWhereValues(Document document, String condition) {
        Element eleSet = document.getRootElement().element("set");
        Map whereMap = getWhereCondition(eleSet, condition);
        String[] whereValues = (String[]) whereMap.get("values");
        return whereValues;
    }

    private String getQuerySql(Document document, String condition) {
        Element eleSet = document.getRootElement().element("set");
        String setName = eleSet.attributeValue("name");
        Map whereMap = getWhereCondition(eleSet, condition);
        String whereSql = whereMap.get("whereSql") + "";
        String fields = getFields(eleSet);
        String sql = "select" + fields + " from " + setName + whereSql;
        return sql;
    }

    //sql的where部分的字段和参数的设置
    private Map<String, Object> getWhereCondition(Element eleSet, String condition) {//条件都是=,and
        List<Element> params = eleSet.element("params").elements();
        Map conditionMap = null;
        try {
            conditionMap = JSON.parseObject(condition, Map.class);
        } catch (Exception e) {
            System.err.println("传过来的json格式出错！");
            e.printStackTrace();
        }
        StringBuffer sb = new StringBuffer(" where ");
        String[] values = new String[params.size()];
        try {
            for (int i = 0; i < params.size(); i++) {
                String conditionField = params.get(i).attributeValue("systemName");
                String conditionValue = conditionMap.get(params.get(i).attributeValue("paramName")) + "";
                values[i] = conditionValue;
                sb.append(conditionField).append("=").append("?").append(" and ");
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
            e.printStackTrace();
        }
        String whereSql = sb.toString().substring(0, sb.toString().length() - 4);
        Map<String, Object> whereMap = new HashMap<String, Object>();
        whereMap.put("whereSql", whereSql);
        whereMap.put("values", values);
        return whereMap;
    }

    //获取sql的select部分的查询字段
    private String getFields(Element eleSet) {
        List<Element> searchFields = eleSet.element("searchFields").elements();
        StringBuffer sb = new StringBuffer(" ");
        try {
            for (int i = 0; i < searchFields.size(); i++) {
                String hjField = searchFields.get(i).attributeValue("systemName");
                String asField = searchFields.get(i).attributeValue("matchName");
                sb.append(hjField).append(" as ").append(asField).append(",");
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
            e.printStackTrace();
        }
        String fields = sb.toString().substring(0, sb.toString().length() - 1);
        return fields;
    }


}
