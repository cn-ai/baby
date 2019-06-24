package cn.stylefeng.guns.sys.modular.consts.service.impl;

import cn.stylefeng.guns.base.pojo.page.LayuiPageFactory;
import cn.stylefeng.guns.base.pojo.page.LayuiPageInfo;
import cn.stylefeng.guns.sys.modular.consts.entity.SysConfig;
import cn.stylefeng.guns.sys.modular.consts.mapper.SysConfigMapper;
import cn.stylefeng.guns.sys.modular.consts.model.params.SysConfigParam;
import cn.stylefeng.guns.sys.modular.consts.model.result.SysConfigResult;
import cn.stylefeng.guns.sys.modular.consts.service.SysConfigService;
import cn.stylefeng.roses.core.util.ToolUtil;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.List;

/**
 * <p>
 * 参数配置 服务实现类
 * </p>
 *
 * @author stylefeng
 * @since 2019-06-20
 */
@Service
public class SysConfigServiceImpl extends ServiceImpl<SysConfigMapper, SysConfig> implements SysConfigService {

    @Override
    public void add(SysConfigParam param) {
        SysConfig entity = getEntity(param);

        //如果是字典类型
        if (ToolUtil.isNotEmpty(param.getDictFlag())
                && param.getDictFlag().equalsIgnoreCase("Y")) {
            entity.setValue(param.getDictValue());
        }

        this.save(entity);
    }

    @Override
    public void delete(SysConfigParam param) {
        this.removeById(getKey(param));
    }

    @Override
    public void update(SysConfigParam param) {
        SysConfig oldEntity = getOldEntity(param);
        SysConfig newEntity = getEntity(param);
        ToolUtil.copyProperties(newEntity, oldEntity);

        UpdateWrapper<SysConfig> updateWrapper = new UpdateWrapper<SysConfig>().eq("id", param.getId());

        //如果是字典类型
        if (ToolUtil.isNotEmpty(param.getDictFlag())
                && param.getDictFlag().equalsIgnoreCase("Y")) {
            newEntity.setValue(param.getDictValue());
        } else {

            //如果是非字典，则标识位置为空
            newEntity.setDictFlag("N");
            updateWrapper.set(true, "dict_type_id", null);
        }

        this.update(newEntity, updateWrapper);
    }

    @Override
    public SysConfigResult findBySpec(SysConfigParam param) {
        return null;
    }

    @Override
    public List<SysConfigResult> findListBySpec(SysConfigParam param) {
        return null;
    }

    @Override
    public LayuiPageInfo findPageBySpec(SysConfigParam param) {
        Page pageContext = getPageContext();
        IPage page = this.baseMapper.customPageList(pageContext, param);
        return LayuiPageFactory.createPageInfo(page);
    }

    private Serializable getKey(SysConfigParam param) {
        return param.getId();
    }

    private Page getPageContext() {
        return LayuiPageFactory.defaultPage();
    }

    private SysConfig getOldEntity(SysConfigParam param) {
        return this.getById(getKey(param));
    }

    private SysConfig getEntity(SysConfigParam param) {
        SysConfig entity = new SysConfig();
        ToolUtil.copyProperties(param, entity);
        return entity;
    }

}
