package org.keega.idea.dao;

import java.text.SimpleDateFormat;

/**
 * Created by zun.wei on 2016/11/8.
 * To change this template use File|Default Setting
 * |Editor|File and Code Templates|Includes|File Header
 */
public interface HJBaseInterfaceDao {
    public static final String ENCRY_KEY = "EK_SYS_2016";										//密钥
    public static final String LEVEL0 = "00";													//返回值级别，代表成功
    public static final String LEVEL1 = "01";													//返回值级别，密钥不正确！
    public static final String LEVEL2 = "02";													//返回值级别，找不到目标！
    public static final String LEVEL3 = "03";													//返回值级别，服务异常！

    public static final String LEVEL1_MESSAGE = "密钥不正确！";
    public static final String LEVEL2_MESSAGE = "找不到目标！";
    public static final String LEVEL3_MESSAGE = "服务异常！";

    public static final String RETURN_MSG = "{\"code\":\"%1$s\" , \"message\":\"%2$s\" }";		//返回信息

    public static final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    public static final SimpleDateFormat simpleDateFormat4FileName = new SimpleDateFormat("yyyy-MM-dd");

}
