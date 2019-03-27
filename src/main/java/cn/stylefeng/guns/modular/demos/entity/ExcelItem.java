package cn.stylefeng.guns.modular.demos.entity;

import cn.afterturn.easypoi.excel.annotation.Excel;
import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * <p>
 * 管理员表
 * </p>
 *
 * @author stylefeng
 * @since 2018-12-07
 */
@TableName("sys_user")
@Data
public class ExcelItem implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 主键id
     */
    @TableId(value = "USER_ID", type = IdType.ID_WORKER)
    @Excel(name = "用户id")
    private Long userId;

    /**
     * 头像
     */
    @TableField("AVATAR")
    @Excel(name = "头像")
    private String avatar;

    /**
     * 账号
     */
    @TableField("ACCOUNT")
    @Excel(name = "账号")
    private String account;

    /**
     * 密码
     */
    @TableField("PASSWORD")
    private String password;

    /**
     * md5密码盐
     */
    @TableField("SALT")
    private String salt;

    /**
     * 名字
     */
    @TableField("NAME")
    @Excel(name = "姓名")
    private String name;

    /**
     * 生日
     */
    @Excel(name = "生日")
    @TableField("BIRTHDAY")
    private Date birthday;

    /**
     * 性别(字典)
     */
    @TableField("SEX")
    @Excel(name = "性别")
    private String sex;

    /**
     * 电子邮件
     */
    @TableField("EMAIL")
    @Excel(name = "邮箱")
    private String email;

    /**
     * 电话
     */
    @TableField("PHONE")
    @Excel(name = "电话")
    private String phone;

    /**
     * 角色id(多个逗号隔开)
     */
    @TableField("ROLE_ID")
    @Excel(name = "角色id")
    private String roleId;

    /**
     * 部门id(多个逗号隔开)
     */
    @TableField("DEPT_ID")
    @Excel(name = "部门id")
    private Long deptId;

    /**
     * 状态(字典)
     */
    @TableField("STATUS")
    @Excel(name = "状态")
    private String status;

    /**
     * 创建时间
     */
    @TableField(value = "CREATE_TIME", fill = FieldFill.INSERT)
    @Excel(name = "创建时间")
    private Date createTime;

    /**
     * 创建人
     */
    @TableField(value = "CREATE_USER", fill = FieldFill.INSERT)
    private Long createUser;

    /**
     * 更新时间
     */
    @TableField(value = "UPDATE_TIME", fill = FieldFill.UPDATE)
    private Date updateTime;

    /**
     * 更新人
     */
    @TableField(value = "UPDATE_USER", fill = FieldFill.UPDATE)
    private Long updateUser;

    /**
     * 乐观锁
     */
    @TableField("VERSION")
    private Integer version;

}
