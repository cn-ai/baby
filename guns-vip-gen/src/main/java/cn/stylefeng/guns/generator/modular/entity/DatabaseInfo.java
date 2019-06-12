package cn.stylefeng.guns.generator.modular.entity;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * <p>
 * 数据库信息表
 * </p>
 *
 * @author stylefeng
 * @since 2019-05-11
 */
@TableName("database_info")
@Data
public class DatabaseInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 主键id
     */
    @TableId(value = "db_id", type = IdType.ID_WORKER)
    private Long dbId;

    /**
     * 数据库名称
     */
    @TableField("db_name")
    private String dbName;

    /**
     * jdbc的驱动类型
     */
    @TableField("jdbc_driver")
    private String jdbcDriver;

    /**
     * 数据库连接的账号
     */
    @TableField("user_name")
    private String userName;

    /**
     * 数据库连接密码
     */
    @TableField("password")
    private String password;

    /**
     * jdbc的url
     */
    @TableField("jdbc_url")
    private String jdbcUrl;

    /**
     * 备注
     */
    @TableField("remarks")
    private String remarks;

    /**
     * 创建时间
     */
    @TableField(value = "create_time", fill = FieldFill.INSERT)
    private Date createTime;

}
