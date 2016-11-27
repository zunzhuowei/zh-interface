package org.keega.idea.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.keega.idea.dao.modify.ModifyDao;
import org.keega.idea.dao.search.SearchDao;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.text.SimpleDateFormat;
import java.util.Date;


/**
 * Created by zun.wei on 2016/10/18.
 * To change this template use File|Default Setting
 * |Editor|File and Code Templates|Includes|File Header
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
        "classpath:com/global/config/datasource.xml",
        "classpath:com/global/config/freemarker.xml",
        "classpath:com/global/config/spring-mvc.xml"})
public class TestData {

    @Test
    public void testData() {
        Date data = new Date(1341072000000L);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String s = simpleDateFormat.format(data);
        System.out.println(s);
    }

    @Test
    public void testInterface() {
        SearchDao searchDao = new SearchDao();
        String s = searchDao.getSearchJsonObject("EK_SYS_2016", "organization-search",
                "{modifyDate:'2014-10-27 00:00:00.000',department:'UM'}");
        String ss = searchDao.getSearchJsonArray("EK_SYS_2016", "organization-search",
                "{modifyDate:'2015-10-12 00:00:00.000',department:'UM'}");
        System.out.println(s);
        System.out.println(ss);
    }

    @Test
    public void testModify() {
        ModifyDao modifyDao = new ModifyDao();
        String result = modifyDao.modifyData("EK_SYS_2016","jobTransfer-modify",
                "[{tableName:'basicInfo',modify:'update',employeeName:'张三',employeeSex:'2'," +
                        "employeeId:'00000002',uid:'2'}," +

                        "{tableName:'education',modify:'insert',schoolName:'宏景大学'," +
                        "majorName:'人力资源软件专业',uid:'00000003'}," +

                        "{tableName:'examine',modify:'delete',employeeId:'00000003',uuid:'10'}]");
        System.out.println(result);
    }

    @Test
    public void testNull() {
        Object o = null;
        String a = o + "";
        System.out.println(o == null);
        System.out.println(a.equals("null"));
    }

}
