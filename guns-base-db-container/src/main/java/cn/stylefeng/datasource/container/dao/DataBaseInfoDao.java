package cn.stylefeng.datasource.container.dao;

import cn.stylefeng.datasource.container.exception.DataSourceInitException;
import cn.stylefeng.roses.core.config.properties.DruidProperties;
import lombok.extern.slf4j.Slf4j;

import java.sql.*;
import java.util.HashMap;
import java.util.Map;

/**
 * 操作数据源信息的dao
 *
 * @author fengshuonan
 * @date 2019-06-12-14:02
 */
@Slf4j
public class DataBaseInfoDao {

    private String MYSQL_SQL_LIST = "select db_name,jdbc_driver,jdbc_url,user_name,password from database_info";

    private DruidProperties druidProperties;

    public DataBaseInfoDao(DruidProperties druidProperties) {
        this.druidProperties = druidProperties;
    }

    /**
     * 查询所有数据源列表
     *
     * @author fengshuonan
     * @Date 2019-05-04 20:30
     */
    public Map<String, DruidProperties> getAllDataBaseInfo() {

        Map<String, DruidProperties> dataSourceList = new HashMap<>();

        try {
            Class.forName(druidProperties.getDriverClassName());
            Connection conn = DriverManager.getConnection(
                    druidProperties.getUrl(), druidProperties.getUsername(), druidProperties.getPassword());

            PreparedStatement preparedStatement = conn.prepareStatement(MYSQL_SQL_LIST);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                DruidProperties druidProperties = createDruidProperties(resultSet);
                String dbName = resultSet.getString("db_name");
                dataSourceList.put(dbName, druidProperties);
            }

            return dataSourceList;

        } catch (Exception ex) {
            throw new DataSourceInitException(DataSourceInitException.ExEnum.QUERY_DATASOURCE_INFO_ERROR);
        }
    }

    /**
     * 通过查询结果组装druidProperties
     *
     * @author fengshuonan
     * @Date 2019-06-12 14:22
     */
    private DruidProperties createDruidProperties(ResultSet resultSet) {

        DruidProperties druidProperties = new DruidProperties();

        druidProperties.setTestOnBorrow(true);
        druidProperties.setTestOnReturn(true);

        try {
            druidProperties.setDriverClassName(resultSet.getString("jdbc_driver"));
            druidProperties.setUrl(resultSet.getString("jdbc_url"));
            druidProperties.setUsername(resultSet.getString("user_name"));
            druidProperties.setPassword(resultSet.getString("password"));
        } catch (SQLException e) {
            throw new DataSourceInitException(DataSourceInitException.ExEnum.QUERY_DATASOURCE_INFO_ERROR);
        }

        return druidProperties;
    }

}
