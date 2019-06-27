package cn.stylefeng.guns.sys.modular.system.service.impl;

import cn.stylefeng.guns.base.pojo.page.LayuiPageFactory;
import cn.stylefeng.guns.base.pojo.page.LayuiPageInfo;
import cn.stylefeng.guns.sys.modular.system.entity.Position;
import cn.stylefeng.guns.sys.modular.system.mapper.PositionMapper;
import cn.stylefeng.guns.sys.modular.system.model.params.PositionParam;
import cn.stylefeng.guns.sys.modular.system.model.result.PositionResult;
import cn.stylefeng.guns.sys.modular.system.service.PositionService;
import cn.stylefeng.roses.core.util.ToolUtil;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.List;

/**
 * <p>
 * 职位表 服务实现类
 * </p>
 *
 * @author stylefeng
 * @since 2019-06-27
 */
@Service
public class PositionServiceImpl extends ServiceImpl<PositionMapper, Position> implements PositionService {

    @Override
    public void add(PositionParam param){
        Position entity = getEntity(param);
        this.save(entity);
    }

    @Override
    public void delete(PositionParam param){
        this.removeById(getKey(param));
    }

    @Override
    public void update(PositionParam param){
        Position oldEntity = getOldEntity(param);
        Position newEntity = getEntity(param);
        ToolUtil.copyProperties(newEntity, oldEntity);
        this.updateById(newEntity);
    }

    @Override
    public PositionResult findBySpec(PositionParam param){
        return null;
    }

    @Override
    public List<PositionResult> findListBySpec(PositionParam param){
        return null;
    }

    @Override
    public LayuiPageInfo findPageBySpec(PositionParam param){
        Page pageContext = getPageContext();
        IPage page = this.baseMapper.customPageList(pageContext, param);
        return LayuiPageFactory.createPageInfo(page);
    }

    private Serializable getKey(PositionParam param){
        return param.getPositionId();
    }

    private Page getPageContext() {
        return LayuiPageFactory.defaultPage();
    }

    private Position getOldEntity(PositionParam param) {
        return this.getById(getKey(param));
    }

    private Position getEntity(PositionParam param) {
        Position entity = new Position();
        ToolUtil.copyProperties(param, entity);
        return entity;
    }

}
