package org.keega.idea.dao.modify;

import org.keega.idea.dao.HJBaseInterfaceDao;

/**
 * Created by zun.wei on 2016/11/15.
 * To change this template use File|Default Setting
 * |Editor|File and Code Templates|Includes|File Header
 */
public interface IModifyDao extends HJBaseInterfaceDao{

    public String modifyData(String interfaceKey, String xmlFileName, String conditions);
}
