package org.keega.idea.dao.search;

import org.keega.idea.dao.HJBaseInterfaceDao;

/**
 * Created by zun.wei on 2016/11/5.
 * To change this template use File|Default Setting
 * |Editor|File and Code Templates|Includes|File Header
 */
public interface ISearchDao extends HJBaseInterfaceDao {

    public String getSearchJsonObject(String interfaceKey,String xmlFileName,String conditions);

    public String getSearchJsonArray(String interfaceKey,String xmlFileName,String conditions);

    public String writeJsonData2Xml(String interfaceKey,String xmlFileName,String conditions);

}
