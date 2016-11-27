package org.keega.idea.dao.modify;

/**
 * Created by zun.wei on 2016/11/23.
 * To change this template use File|Default Setting
 * |Editor|File and Code Templates|Includes|File Header
 */
public interface IWriteModifyDao {

    /**
     *
     * @param interfaceType 接口的类型，0表示查询借口，1表示更新/修改接口。
     * @param interfaceName 接口的名字
     * @param interfaceContents 写入接口的内容
     */
    public void addInterface(int interfaceType,String interfaceName,String interfaceContents);

    /**
     *
     * @param interfaceType 接口的类型，0表示查询借口，1表示更新/修改接口。
     * @param interfaceName 接口的名字
     * @param interfaceContents 写入接口的内容
     */
    public void updateInterface(int interfaceType,String interfaceName,String interfaceContents);

    /**
     *
     * @param interfaceName 接口的名字
     */
    public void deleteInterface(String interfaceName);


}
