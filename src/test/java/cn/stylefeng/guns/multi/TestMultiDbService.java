package cn.stylefeng.guns.multi;

import cn.stylefeng.guns.base.BaseJunit;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * <p>
 * 管理员表 服务实现类
 * </p>
 *
 * @author stylefeng
 * @since 2018-12-07
 */
public class TestMultiDbService extends BaseJunit {

    @Autowired
    private GunsDbService gunsDbService;

    @Autowired
    private OtherDbService otherDbService;

    @Test
    public void addddd() {

        gunsDbService.gunsdb();

        otherDbService.otherdb();

        int i = 1 / 0;

    }

}
