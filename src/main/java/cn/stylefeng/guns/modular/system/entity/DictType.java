package cn.stylefeng.guns.modular.system.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * <p>
 * 字典类型表
 * </p>
 *
 * @author stylefeng
 * @since 2019-03-13
 */
@TableName("sys_dict_type")
@Data
public class DictType implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 字典类型id
     */
    @TableId("DICT_TYPE_ID")
    private Long dictTypeId;

    /**
     * 是否是系统字典，Y-是，N-否
     */
    @TableField("SYSTEM_FLAG")
    private String systemFlag;

    /**
     * 字典类型编码
     */
    @TableField("CODE")
    private String code;

    /**
     * 字典类型名称
     */
    @TableField("NAME")
    private String name;

    /**
     * 字典描述
     */
    @TableField("DESCRIPTION")
    private String description;

    /**
     * 状态(字典)
     */
    @TableField("STATUS")
    private String status;

    /**
     * 排序
     */
    @TableField("SORT")
    private Integer sort;

    /**
     * 添加时间
     */
    @TableField(value = "CREATE_TIME", fill = FieldFill.INSERT)
    private Date createTime;

    /**
     * 创建人
     */
    @TableField(value = "CREATE_USER", fill = FieldFill.INSERT)
    private Long createUser;

    /**
     * 修改时间
     */
    @TableField(value = "UPDATE_TIME", fill = FieldFill.UPDATE)
    private Date updateTime;

    /**
     * 修改人
     */
    @TableField(value = "UPDATE_USER", fill = FieldFill.UPDATE)
    private Long updateUser;

}
