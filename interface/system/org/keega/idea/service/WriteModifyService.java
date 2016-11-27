package org.keega.idea.service;

import com.alibaba.fastjson.JSON;
import org.keega.idea.dao.modify.IWriteModifyDao;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by zun.wei on 2016/11/23.
 * To change this template use File|Default Setting
 * |Editor|File and Code Templates|Includes|File Header
 */
@Service
public class WriteModifyService implements IWriteModifyService {

    @Inject
    private IWriteModifyDao writeModifyDao;

    @Override
    public void addInterface(int interfaceType, String interfaceName, String interfaceContents) {
        StringBuffer sb = new StringBuffer("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n");
        Map map = JSON.parseObject(interfaceContents, Map.class);

        writeModifyDao.addInterface(interfaceType, interfaceName, sb.toString());
    }

    @Override
    public void updateInterface(int interfaceType, String interfaceName, String interfaceContents) {

    }

    @Override
    public void deleteInterface(String interfaceName) {

    }

    /*public static void main(String[] args) {
        List<Map<String,String>> mapList = new ArrayList<Map<String, String>>();
        Map<String,String> map1 = new HashMap<String, String>();
        map1.put("username","123");
        map1.put("pwd","456");
        mapList.add(map1);
        StringBuffer sb = new StringBuffer();
        for (Map<String,String> mapObj : mapList) {
            sb.append("< object  action=\"I\">");

            for(String key : mapObj.keySet()) {
                sb.append("<prop name=\""+key+"\">"+mapObj.get(key)+"</prop>");
            }

            sb.append("</object>");
        }
    }*/


}
