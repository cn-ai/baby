package cn.stylefeng.datasource.container.context;

import org.apache.ibatis.session.SqlSessionFactory;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * mybatis的sqlSessionFactory的上下文容器(单例)
 *
 * @author fengshuonan
 * @date 2019-06-12-13:37
 */
public class SqlSessionFactoryContext {

    private static Map<Object, SqlSessionFactory> sqlSessionFactories = new ConcurrentHashMap<>();

    /**
     * 添加sqlSessionFactory
     *
     * @author fengshuonan
     * @Date 2019-06-12 15:28
     */
    public static void addSqlSessionFactory(String name, SqlSessionFactory sqlSessionFactory) {
        sqlSessionFactories.put(name, sqlSessionFactory);
    }

    /**
     * 获取所有的sqlSessionFactory
     *
     * @author fengshuonan
     * @Date 2019-06-12 13:49
     */
    public static Map<Object, SqlSessionFactory> getSqlSessionFactorys() {
        return sqlSessionFactories;
    }

}
