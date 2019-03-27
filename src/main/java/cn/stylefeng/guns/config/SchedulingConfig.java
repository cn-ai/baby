package cn.stylefeng.guns.config;

import cn.stylefeng.guns.core.schedue.SpringTasks;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * 定时任务自动配置
 *
 * @author fengshuonan
 * @Date 2019/2/24 16:23
 */
@Configuration
public class SchedulingConfig {

    /**
     * 定时任务执行测试,注意在Application上加@EnableScheduling
     *
     * @author fengshuonan
     * @Date 2019/3/27 2:48 PM
     */
    @Bean
    public SpringTasks scheduledTasks() {
        return new SpringTasks();
    }
}
