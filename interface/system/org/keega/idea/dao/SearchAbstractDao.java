package org.keega.idea.dao;

import org.apache.commons.dbutils.QueryRunner;
import org.dom4j.Document;
import org.keega.idea.util.dao.impl.BaseDao;
import org.springframework.jdbc.datasource.DataSourceUtils;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

/**
 * Created by zun.wei on 2016/11/15.
 * To change this template use File|Default Setting
 * |Editor|File and Code Templates|Includes|File Header
 */
public abstract class SearchAbstractDao extends BaseDao implements HJBaseInterfaceDao {

    public static final String DRIVER_CLASS_NAME = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    public static final String URL = "jdbc:sqlserver://127.0.0.1:1433;databaseName=xunlei";
    public static final String USERNAME = "sa";
    public static final String PASSWORD = "123";

    public static final QueryRunner queryRunner = new QueryRunner();//DataSourceUtils.getConnection(dataSource)

    //检查密匙，和对应的xml文件是否存在。
    protected String cheakKeyAndXmlFile(String interfaceKey,Document document) {
        if (document == null) {//此时document还是为null表示，传过来的文件名找不到
            return String.format(RETURN_MSG, LEVEL2, LEVEL2_MESSAGE);
        }
        if (!ENCRY_KEY.equals(interfaceKey)) {//密匙不正确
            return String.format(RETURN_MSG, LEVEL1, LEVEL1_MESSAGE);
        }
        return null;
    }

    /**
     * 打开数据库链接，默认连接池
     *
     * @return Connection
     * @throws SQLException
     */
    protected Connection getConn() throws SQLException {
        return DriverManager.getConnection("proxool.mssql");
    }

/*    @Resource(name = "dataSource")
    private DataSource dataSource;

    private Connection getConn() throws SQLException {
        try {
            Class.forName(DRIVER_CLASS_NAME);
        } catch (ClassNotFoundException e) {
            System.out.println("注册失败！");
            e.printStackTrace();
        }
        return DriverManager.getConnection(URL, USERNAME, PASSWORD);
        return DataSourceUtils.getConnection(dataSource);
    }*/


}
