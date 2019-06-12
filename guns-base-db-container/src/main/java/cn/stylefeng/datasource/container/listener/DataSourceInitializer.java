package cn.stylefeng.datasource.container.listener;

import cn.stylefeng.datasource.container.context.DataSourceContext;
import cn.stylefeng.datasource.container.exception.DataSourceInitException;
import cn.stylefeng.roses.core.config.properties.DruidProperties;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.context.event.ApplicationPreparedEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.core.Ordered;

/**
 * 初始化数据源
 *
 * @author fengshuonan
 * @Date 2019-06-12 13:35
 */
@Slf4j
public class DataSourceInitializer implements ApplicationListener<ApplicationPreparedEvent>, Ordered {

    @Override
    public int getOrder() {
        return Ordered.HIGHEST_PRECEDENCE;
    }

    @Override
    public void onApplicationEvent(ApplicationPreparedEvent event) {

        //获取数据源配置
        DruidProperties druidProperties = event.getApplicationContext().getBean(DruidProperties.class);
        if (druidProperties == null) {
            throw new DataSourceInitException(DataSourceInitException.ExEnum.DATA_SOURCE_READ_ERROR);
        }

        //初始化数据源容器
        try {
            DataSourceContext.initDataSource(druidProperties);
        } catch (Exception e) {
            throw new DataSourceInitException(DataSourceInitException.ExEnum.INIT_DATA_SOURCE_ERROR);
        }

    }
}
