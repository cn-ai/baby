package cn.stylefeng.guns.modular.system.service;

import cn.stylefeng.guns.core.common.exception.BizExceptionEnum;
import cn.stylefeng.guns.core.common.page.LayuiPageFactory;
import cn.stylefeng.guns.core.common.page.LayuiPageInfo;
import cn.stylefeng.guns.modular.system.entity.DictType;
import cn.stylefeng.guns.modular.system.mapper.DictTypeMapper;
import cn.stylefeng.guns.modular.system.model.params.DictTypeParam;
import cn.stylefeng.guns.modular.system.model.result.DictTypeResult;
import cn.stylefeng.roses.core.util.ToolUtil;
import cn.stylefeng.roses.kernel.model.exception.ServiceException;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.List;

/**
 * <p>
 * 字典类型表 服务实现类
 * </p>
 *
 * @author stylefeng
 * @since 2019-03-13
 */
@Service
public class DictTypeService extends ServiceImpl<DictTypeMapper, DictType> {

    /**
     * 新增
     *
     * @author stylefeng
     * @Date 2019-03-13
     */
    public void add(DictTypeParam param) {

        //判断是否已经存在同编码或同名称字典
        QueryWrapper<DictType> dictQueryWrapper = new QueryWrapper<>();
        dictQueryWrapper.eq("CODE", param.getCode()).or().eq("NAME", param.getName());
        List<DictType> list = this.list(dictQueryWrapper);
        if (list != null && list.size() > 0) {
            throw new ServiceException(BizExceptionEnum.DICT_EXISTED);
        }

        DictType entity = getEntity(param);
        this.save(entity);
    }

    /**
     * 删除
     *
     * @author stylefeng
     * @Date 2019-03-13
     */
    public void delete(DictTypeParam param) {
        this.removeById(getKey(param));
    }

    /**
     * 更新
     *
     * @author stylefeng
     * @Date 2019-03-13
     */
    public void update(DictTypeParam param) {
        DictType oldEntity = getOldEntity(param);
        DictType newEntity = getEntity(param);
        ToolUtil.copyProperties(newEntity, oldEntity);

        //判断编码是否重复
        QueryWrapper<DictType> wrapper = new QueryWrapper<DictType>()
                .and(i -> i.eq("CODE", newEntity.getCode()).or().eq("NAME", newEntity.getName()))
                .and(i -> i.ne("DICT_TYPE_ID", newEntity.getDictTypeId()));
        int dicts = this.count(wrapper);
        if (dicts > 0) {
            throw new ServiceException(BizExceptionEnum.DICT_EXISTED);
        }

        this.updateById(newEntity);
    }

    /**
     * 查询单条数据，Specification模式
     *
     * @author stylefeng
     * @Date 2019-03-13
     */
    public DictTypeResult findBySpec(DictTypeParam param) {
        return null;
    }

    /**
     * 查询列表，Specification模式
     *
     * @author stylefeng
     * @Date 2019-03-13
     */
    public List<DictTypeResult> findListBySpec(DictTypeParam param) {
        return null;
    }

    /**
     * 查询分页数据，Specification模式
     *
     * @author stylefeng
     * @Date 2019-03-13
     */
    public LayuiPageInfo findPageBySpec(DictTypeParam param) {
        Page pageContext = getPageContext();
        QueryWrapper<DictType> objectQueryWrapper = new QueryWrapper<>();
        if (ToolUtil.isNotEmpty(param.getCondition())) {
            objectQueryWrapper.and(i -> i.eq("CODE", param.getCondition()).or().eq("NAME", param.getCondition()));
        }
        if (ToolUtil.isNotEmpty(param.getStatus())) {
            objectQueryWrapper.and(i -> i.eq("STATUS", param.getStatus()));
        }
        if (ToolUtil.isNotEmpty(param.getSystemFlag())) {
            objectQueryWrapper.and(i -> i.eq("SYSTEM_FLAG", param.getSystemFlag()));
        }

        pageContext.setAsc("SORT");

        IPage page = this.page(pageContext, objectQueryWrapper);
        return LayuiPageFactory.createPageInfo(page);
    }

    private Serializable getKey(DictTypeParam param) {
        return param.getDictTypeId();
    }

    private Page getPageContext() {
        return LayuiPageFactory.defaultPage();
    }

    private DictType getOldEntity(DictTypeParam param) {
        return this.getById(getKey(param));
    }

    private DictType getEntity(DictTypeParam param) {
        DictType entity = new DictType();
        ToolUtil.copyProperties(param, entity);
        return entity;
    }

}
