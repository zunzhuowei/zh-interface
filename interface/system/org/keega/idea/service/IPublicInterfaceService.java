package org.keega.idea.service;

/**
 * Created by zun.wei on 2016/11/21.
 * To change this template use File|Default Setting
 * |Editor|File and Code Templates|Includes|File Header
 */
public interface IPublicInterfaceService {

    public String modifyData(String interfaceKey, String xmlFileName, String conditions);

    public String searchJsonObject(String interfaceKey,String xmlFileName,String conditions);

    public String searchJsonArray(String interfaceKey,String xmlFileName,String conditions);

    public String searchXmlString(String interfaceKey,String xmlFileName,String conditions);
}
