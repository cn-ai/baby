package cn.stylefeng.guns.base.config;

import cn.stylefeng.guns.base.core.constant.factory.ConstantFactory;
import cn.stylefeng.guns.base.core.log.LogObjectHolder;
import cn.stylefeng.guns.base.core.log.aop.LogAop;
import cn.stylefeng.guns.base.core.shiro.aop.PermissionAop;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.DependsOn;
import org.springframework.context.annotation.Scope;
import org.springframework.core.annotation.Order;
import org.springframework.web.context.WebApplicationContext;

/**
 * 系统默认的配置
 *
 * @author fengshuonan
 * @Date 2019/5/10 22:51
 */
@Configuration
public class GunsConfig {

    /**
     * 快捷查询方法
     *
     * @author fengshuonan
     * @Date 2019/5/10 22:52
     */
    @Bean
    @DependsOn("springContextHolder")
    public ConstantFactory constantFactory() {
        return new ConstantFactory();
    }

    /**
     * Guns自带的日志切面
     *
     * @author fengshuonan
     * @Date 2019/5/10 22:53
     */
    @Bean
    public LogAop logAop() {
        return new LogAop();
    }

    /**
     * Guns自带的日志切面
     *
     * @author fengshuonan
     * @Date 2019/5/10 22:53
     */
    @Bean
    @Scope(scopeName = WebApplicationContext.SCOPE_SESSION)
    public LogObjectHolder logObjectHolder() {
        return new LogObjectHolder();
    }

    /**
     * 权限校验aop
     *
     * @author fengshuonan
     * @Date 2019/5/10 22:56
     */
    @Bean
    @Order(200)
    public PermissionAop permissionAop() {
        return new PermissionAop();
    }

}
