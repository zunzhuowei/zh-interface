package org.keega.idea.dao.modify;

import org.dom4j.Document;
import org.keega.idea.dao.ModifyAbstractDao;
import org.keega.idea.xml.util.XMLUtil;
import org.springframework.stereotype.Repository;

import java.io.*;

/**
 * Created by zun.wei on 2016/11/23.
 * To change this template use File|Default Setting
 * |Editor|File and Code Templates|Includes|File Header
 */
@Repository
public class WriteModifyDao extends ModifyAbstractDao implements IWriteModifyDao {


    /**
     *
     * @param interfaceType 接口的类型，0表示查询借口，1表示更新/修改接口。
     * @param interfaceName 接口的名字
     * @param interfaceContents 写入接口的内容
     */
    @Override
    public void addInterface(int interfaceType, String interfaceName, String interfaceContents) {
        BufferedWriter writer = null;
        try {
            File file = XMLUtil.createNewXml(interfaceName, interfaceType);
            writer = new BufferedWriter(new OutputStreamWriter(
                    new FileOutputStream(file, true), "utf-8"));
            writer.write(interfaceContents + "\t\n");
            writer.flush();
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     *
     * @param interfaceType 接口的类型，0表示查询借口，1表示更新/修改接口。
     * @param interfaceName 接口的名字
     * @param interfaceContents 写入接口的内容
     */
    @Override
    public void updateInterface(int interfaceType, String interfaceName, String interfaceContents) {

    }

    /**
     *
     * @param interfaceName 接口的名字
     */
    @Override
    public void deleteInterface(String interfaceName) {

    }
}
