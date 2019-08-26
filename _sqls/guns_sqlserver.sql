/*
 Navicat Premium Data Transfer

 Source Server         : guns
 Source Server Type    : SQL Server
 Source Server Version : 11006567
 Source Host           : rm-2ze1ph586a9ulz31o9o.sqlserver.rds.aliyuncs.com:3433
 Source Catalog        : guns
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 11006567
 File Encoding         : 65001

 Date: 26/08/2019 16:06:29
*/


-- ----------------------------
-- Table structure for database_info
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[database_info]') AND type IN ('U'))
	DROP TABLE [dbo].[database_info]
GO

CREATE TABLE [dbo].[database_info] (
  [db_id] bigint  NOT NULL,
  [db_name] varchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [jdbc_driver] varchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [user_name] varchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [password] varchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [jdbc_url] varchar(2000) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [remarks] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime  NULL
)
GO

ALTER TABLE [dbo].[database_info] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for oauth_user_info
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[oauth_user_info]') AND type IN ('U'))
	DROP TABLE [dbo].[oauth_user_info]
GO

CREATE TABLE [dbo].[oauth_user_info] (
  [oauth_id] bigint  NOT NULL,
  [user_id] bigint  NOT NULL,
  [nick_name] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [avatar] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [blog] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [company] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [location] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [email] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [remark] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [gender] int  NULL,
  [source] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [token] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [uuid] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[oauth_user_info] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_config]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_config]
GO

CREATE TABLE [dbo].[sys_config] (
  [id] bigint  NOT NULL,
  [name] varchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [code] varchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [dict_flag] char(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [dict_type_id] bigint  NULL,
  [value] varchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [remark] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_config] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [sys_config]
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1143324237579165697', N'验证码开关', N'GUNS_KAPTCHA_OPEN', N'Y', N'1106120265689055233', N'DISABLE', N'是否开启验证码', N'2019-06-24 12:46:43.000', N'1', N'2019-06-25 09:04:42.000', N'1')
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1143386834613694465', N'阿里云短信的keyId', N'GUNS_SMS_ACCESSKEY_ID', N'N', NULL, N'xxxkey', N'阿里云短信的密钥key', N'2019-06-25 13:13:59.000', N'1', N'2019-06-25 13:19:21.000', N'1')
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1143386953933254657', N'阿里云短信的secret', N'GUNS_SMS_ACCESSKEY_SECRET', N'N', NULL, N'xxxsecret', N'阿里云短信的secret', N'2019-06-25 13:14:28.000', N'1', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1143387023449649154', N'阿里云短信的签名', N'GUNS_SMS_SIGN_NAME', N'N', NULL, N'xxxsign', N'阿里云短信的签名', N'2019-06-25 13:14:44.000', N'1', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1143387131109044225', N'阿里云短信登录的模板号', N'GUNS_SMS_LOGIN_TEMPLATE_CODE', N'N', NULL, N'SMS_XXXXXX', N'阿里云短信登录的模板号', N'2019-06-25 13:15:10.000', N'1', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1143387225019510785', N'验证码短信失效时间', N'GUNS_SMS_INVALIDATE_MINUTES', N'N', NULL, N'2', N'验证码短信失效时间', N'2019-06-25 13:15:32.000', N'1', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1143468689664876546', N'管理系统名称', N'GUNS_SYSTEM_NAME', N'N', NULL, N'Guns快速开发平台', N'管理系统名称', N'2019-06-25 18:39:15.000', N'1', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1143468867767607297', N'默认系统密码', N'GUNS_DEFAULT_PASSWORD', N'N', NULL, N'111111', N'默认系统密码', N'2019-06-25 18:39:57.000', N'1', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1143469008025133058', N'OAuth2登录用户的账号标识', N'GUNS_OAUTH2_PREFIX', N'N', NULL, N'oauth2', N'OAuth2登录用户的账号标识', N'2019-06-25 18:40:31.000', N'1', NULL, NULL)
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1145207130463191041', N'顶部导航条是否开启', N'GUNS_DEFAULT_ADVERT', N'Y', N'1106120265689055233', N'ENABLE', N'顶部Guns广告是否开启', N'2019-06-30 13:47:11.000', N'1', N'2019-06-30 13:47:20.000', N'1')
GO

INSERT INTO [dbo].[sys_config]  VALUES (N'1145915627211370498', N'Guns发布的编号', N'GUNS_SYSTEM_RELEASE_VERSION', N'N', NULL, N'20190729', N'用于防止浏览器缓存相关的js和css', N'2019-07-02 12:42:30.000', N'1', NULL, NULL)
GO

COMMIT
GO


-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_dept]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_dept]
GO

CREATE TABLE [dbo].[sys_dept] (
  [dept_id] bigint  NOT NULL,
  [pid] bigint DEFAULT ((0)) NULL,
  [pids] varchar(512) COLLATE Chinese_PRC_CI_AS DEFAULT '' NULL,
  [simple_name] varchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [full_name] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [description] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [version] int  NULL,
  [sort] int  NULL,
  [create_time] datetime  NULL,
  [update_time] datetime  NULL,
  [create_user] bigint  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_dept] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [sys_dept]
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[sys_dept]  VALUES (N'24', N'0', N'[0],', N'总公司', N'总公司', N'', NULL, N'1', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_dept]  VALUES (N'25', N'24', N'[0],[24],', N'开发部', N'开发部', N'', NULL, N'2', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_dept]  VALUES (N'26', N'24', N'[0],[24],', N'运营部', N'运营部', N'', NULL, N'3', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_dept]  VALUES (N'27', N'24', N'[0],[24],', N'战略部', N'战略部', N'', NULL, N'4', NULL, NULL, NULL, NULL)
GO

COMMIT
GO


-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_dict]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_dict]
GO

CREATE TABLE [dbo].[sys_dict] (
  [dict_id] bigint  NOT NULL,
  [dict_type_id] bigint  NOT NULL,
  [code] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [name] varchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [parent_id] bigint  NOT NULL,
  [parent_ids] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [status] varchar(10) COLLATE Chinese_PRC_CI_AS DEFAULT ('ENABLE') NOT NULL,
  [sort] int  NULL,
  [description] varchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime  NULL,
  [update_time] datetime  NULL,
  [create_user] bigint  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_dict] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [sys_dict]
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'1106120532442595330', N'1106120208097067009', N'M', N'男', N'0', N'[0]', N'ENABLE', NULL, N'', N'2019-03-14 17:11:00.000', NULL, N'1', NULL)
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'1106120574163337218', N'1106120208097067009', N'F', N'女', N'0', N'[0]', N'ENABLE', NULL, N'', N'2019-03-14 17:11:10.000', NULL, N'1', NULL)
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'1106120645697191938', N'1106120265689055233', N'ENABLE', N'启用', N'0', N'[0]', N'ENABLE', NULL, N'', N'2019-03-14 17:11:27.000', NULL, N'1', NULL)
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'1106120699468169217', N'1106120265689055233', N'DISABLE', N'禁', N'0', N'[0]', N'ENABLE', NULL, N'', N'2019-03-14 17:11:40.000', NULL, N'1', NULL)
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'1106120784318939137', N'1106120322450571266', N'ENABLE', N'启用', N'0', N'[0]', N'ENABLE', NULL, N'', N'2019-03-14 17:12:00.000', NULL, N'1', NULL)
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'1106120825993543682', N'1106120322450571266', N'FREEZE', N'冻结', N'0', N'[0]', N'ENABLE', N'1', N'', N'2019-03-14 17:12:10.000', N'2019-03-16 10:56:36.000', N'1', N'1')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'1106120875872206849', N'1106120322450571266', N'DELETED', N'已删除', N'0', N'[0]', N'ENABLE', N'-1221', N'', N'2019-03-14 17:12:22.000', N'2019-03-16 10:56:53.000', N'1', N'1')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'1106120935070613505', N'1106120388036902914', N'Y', N'删除', N'0', N'[0]', N'ENABLE', N'23333', N'', N'2019-03-14 17:12:36.000', N'2019-03-16 10:58:53.000', N'1', N'1')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'1106120968910258177', N'1106120388036902914', N'N', N'未删除', N'0', N'[0]', N'ENABLE', N'1212211221', N'', N'2019-03-14 17:12:44.000', N'2019-03-16 10:59:03.000', N'1', N'1')
GO

INSERT INTO [dbo].[sys_dict]  VALUES (N'1149218674746355713', N'1149217131989069826', N'BASE_SYSTEM', N'系统管理', N'0', N'[0]', N'ENABLE', N'1', N'系统管理平台', N'2019-07-11 15:27:38.000', N'2019-07-11 20:27:14.000', N'1', N'1')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_dict_type]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_dict_type]
GO

CREATE TABLE [dbo].[sys_dict_type] (
  [dict_type_id] bigint  NOT NULL,
  [code] varchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [name] varchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [description] varchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [system_flag] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [status] varchar(10) COLLATE Chinese_PRC_CI_AS DEFAULT ('ENABLE') NOT NULL,
  [sort] int  NULL,
  [create_time] datetime  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_dict_type] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [sys_dict_type]
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1106120208097067009', N'SEX', N'性别', N'', N'Y', N'ENABLE', N'4', N'2019-03-14 17:09:43.000', N'1', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1106120265689055233', N'STATUS', N'状态', N'', N'Y', N'ENABLE', N'3', N'2019-03-14 17:09:57.000', N'1', NULL, NULL)
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1106120322450571266', N'ACCOUNT_STATUS', N'账号状态', N'', N'Y', N'ENABLE', N'21112', N'2019-03-14 17:10:10.000', N'1', N'2019-03-16 10:56:15.000', N'1')
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1106120388036902914', N'DEL_FLAG', N'是否删除', N'', N'Y', N'ENABLE', N'2', N'2019-03-14 17:10:26.000', N'1', N'2019-03-27 16:26:31.000', N'1')
GO

INSERT INTO [dbo].[sys_dict_type]  VALUES (N'1149217131989069826', N'SYSTEM_TYPE', N'系统分类', N'系统所有分类的维护', N'Y', N'ENABLE', N'70', N'2019-07-11 15:21:30.000', N'1', N'2019-07-11 15:28:21.000', N'1')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for sys_file_info
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_file_info]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_file_info]
GO

CREATE TABLE [dbo].[sys_file_info] (
  [file_id] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [file_bucket] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [file_name] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [file_suffix] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [file_size_kb] bigint  NULL,
  [final_name] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [file_path] varchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime  NULL,
  [update_time] datetime  NULL,
  [create_user] bigint  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_file_info] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_login_log]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_login_log]
GO

CREATE TABLE [dbo].[sys_login_log] (
  [login_log_id] bigint  NOT NULL,
  [log_name] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [user_id] bigint  NULL,
  [create_time] datetime  NULL,
  [succeed] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [message] ntext COLLATE Chinese_PRC_CI_AS  NULL,
  [ip_address] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_login_log] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_menu]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_menu]
GO

CREATE TABLE [dbo].[sys_menu] (
  [menu_id] bigint  NOT NULL,
  [code] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [pcode] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [pcodes] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [name] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [icon] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [url] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [sort] int  NULL,
  [levels] int  NULL,
  [menu_flag] varchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [description] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [status] varchar(32) COLLATE Chinese_PRC_CI_AS DEFAULT ('ENABLE') NULL,
  [new_page_flag] varchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [open_flag] varchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [system_type] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime  NULL,
  [update_time] datetime  NULL,
  [create_user] bigint  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_menu] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [sys_menu]
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'105', N'system', N'0', N'[0],', N'系统管理', N'layui-icon layui-icon-set', N'#', N'20', N'1', N'Y', NULL, N'ENABLE', NULL, N'1', N'BASE_SYSTEM', NULL, N'2019-03-29 16:32:27.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'106', N'mgr', N'system', N'[0],[system],', N'用户管理', N'', N'/mgr', N'10', N'2', N'Y', NULL, N'ENABLE', NULL, N'0', N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:07.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'107', N'mgr_add', N'mgr', N'[0],[system],[mgr],', N'添加用户', NULL, N'/mgr/add', N'1', N'3', N'N', NULL, N'ENABLE', NULL, N'0', N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:07.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'108', N'mgr_edit', N'mgr', N'[0],[system],[mgr],', N'修改用户', NULL, N'/mgr/edit', N'2', N'3', N'N', NULL, N'ENABLE', NULL, N'0', N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:07.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'109', N'mgr_delete', N'mgr', N'[0],[system],[mgr],', N'删除用户', NULL, N'/mgr/delete', N'3', N'3', N'N', NULL, N'ENABLE', NULL, N'0', N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:07.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'110', N'mgr_reset', N'mgr', N'[0],[system],[mgr],', N'重置密码', NULL, N'/mgr/reset', N'4', N'3', N'N', NULL, N'ENABLE', NULL, N'0', N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:07.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'111', N'mgr_freeze', N'mgr', N'[0],[system],[mgr],', N'冻结用户', NULL, N'/mgr/freeze', N'5', N'3', N'N', NULL, N'ENABLE', NULL, N'0', N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:07.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'112', N'mgr_unfreeze', N'mgr', N'[0],[system],[mgr],', N'解除冻结用户', NULL, N'/mgr/unfreeze', N'6', N'3', N'N', NULL, N'ENABLE', NULL, N'0', N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:07.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'113', N'mgr_setRole', N'mgr', N'[0],[system],[mgr],', N'分配角色', NULL, N'/mgr/setRole', N'7', N'3', N'N', NULL, N'ENABLE', NULL, N'0', N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:07.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'114', N'role', N'system', N'[0],[system],', N'角色管理', N'', N'/role', N'20', N'2', N'Y', NULL, N'ENABLE', NULL, N'0', N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:12.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'115', N'role_add', N'role', N'[0],[system],[role],', N'添加角色', NULL, N'/role/add', N'1', N'3', N'N', NULL, N'ENABLE', NULL, N'0', N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:12.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'116', N'role_edit', N'role', N'[0],[system],[role],', N'修改角色', NULL, N'/role/edit', N'2', N'3', N'N', NULL, N'ENABLE', NULL, N'0', N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:12.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'117', N'role_remove', N'role', N'[0],[system],[role],', N'删除角色', NULL, N'/role/remove', N'3', N'3', N'N', NULL, N'ENABLE', NULL, N'0', N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:12.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'118', N'role_setAuthority', N'role', N'[0],[system],[role],', N'配置权限', NULL, N'/role/setAuthority', N'4', N'3', N'N', NULL, N'ENABLE', NULL, N'0', N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:12.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'119', N'menu', N'system', N'[0],[system],', N'菜单管理', N'', N'/menu', N'50', N'2', N'Y', NULL, N'ENABLE', NULL, N'0', N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:25.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'120', N'menu_add', N'menu', N'[0],[system],[menu],', N'添加菜单', NULL, N'/menu/add', N'1', N'3', N'N', NULL, N'ENABLE', NULL, N'0', N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:25.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'121', N'menu_edit', N'menu', N'[0],[system],[menu],', N'修改菜单', NULL, N'/menu/edit', N'2', N'3', N'N', NULL, N'ENABLE', NULL, N'0', N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:25.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'122', N'menu_remove', N'menu', N'[0],[system],[menu],', N'删除菜单', NULL, N'/menu/remove', N'3', N'3', N'N', NULL, N'ENABLE', NULL, N'0', N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:25.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'128', N'log', N'system', N'[0],[system],', N'业务日志', N'', N'/log', N'70', N'2', N'Y', NULL, N'ENABLE', NULL, N'0', N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:39.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'130', N'druid', N'system', N'[0],[system],', N'监控管理', N'', N'/druid', N'80', N'2', N'Y', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:50:06.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'131', N'dept', N'system', N'[0],[system],', N'部门管理', N'', N'/dept', N'30', N'2', N'Y', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:53.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'132', N'dict', N'system', N'[0],[system],', N'字典管理', N'', N'/dictType', N'40', N'2', N'Y', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:49:04.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'133', N'loginLog', N'system', N'[0],[system],', N'登录日志', N'', N'/loginLog', N'60', N'2', N'Y', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:49:29.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'134', N'log_clean', N'log', N'[0],[system],[log],', N'清空日志', NULL, N'/log/delLog', N'3', N'3', N'N', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:39.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'135', N'dept_add', N'dept', N'[0],[system],[dept],', N'添加部门', NULL, N'/dept/add', N'1', N'3', N'N', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:53.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'136', N'dept_update', N'dept', N'[0],[system],[dept],', N'修改部门', NULL, N'/dept/update', N'1', N'3', N'N', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:53.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'137', N'dept_delete', N'dept', N'[0],[system],[dept],', N'删除部门', NULL, N'/dept/delete', N'1', N'3', N'N', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:53.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'138', N'dict_add', N'dict', N'[0],[system],[dict],', N'添加字典', NULL, N'/dictType/addItem', N'1', N'3', N'N', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:49:04.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'139', N'dict_update', N'dict', N'[0],[system],[dict],', N'修改字典', NULL, N'/dictType/editItem', N'1', N'3', N'N', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:49:04.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'140', N'dict_delete', N'dict', N'[0],[system],[dict],', N'删除字典', NULL, N'/dictType/delete', N'1', N'3', N'N', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:49:04.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'141', N'notice', N'system', N'[0],[system],', N'通知管理', N'', N'/notice', N'90', N'2', N'Y', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:49:44.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'142', N'notice_add', N'notice', N'[0],[system],[notice],', N'添加通知', NULL, N'/notice/add', N'1', N'3', N'N', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:49:44.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'143', N'notice_update', N'notice', N'[0],[system],[notice],', N'修改通知', NULL, N'/notice/update', N'2', N'3', N'N', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:49:44.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'144', N'notice_delete', N'notice', N'[0],[system],[notice],', N'删除通知', NULL, N'/notice/delete', N'3', N'3', N'N', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:49:44.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'145', N'sys_message', N'dashboard', N'[0],[dashboard],', N'消息通知', N'layui-icon layui-icon-tips', N'/system/notice', N'30', N'2', N'Y', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-04-08 22:49:39.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'149', N'api_mgr', N'dev_tools', N'[0],[dev_tools],', N'接口文档', N'fa-leaf', N'/swagger-ui.html', N'30', N'2', N'Y', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-15 18:13:00.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'150', N'to_menu_edit', N'menu', N'[0],[system],[menu],', N'菜单编辑跳转', N'', N'/menu/menu_edit', N'4', N'3', N'N', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:25.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'151', N'menu_list', N'menu', N'[0],[system],[menu],', N'菜单列表', N'', N'/menu/list', N'5', N'3', N'N', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:25.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'152', N'to_dept_update', N'dept', N'[0],[system],[dept],', N'修改部门跳转', N'', N'/dept/dept_update', N'4', N'3', N'N', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:53.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'153', N'dept_list', N'dept', N'[0],[system],[dept],', N'部门列表', N'', N'/dept/list', N'5', N'3', N'N', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:53.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'154', N'dept_detail', N'dept', N'[0],[system],[dept],', N'部门详情', N'', N'/dept/detail', N'6', N'3', N'N', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:53.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'155', N'to_dict_edit', N'dict', N'[0],[system],[dict],', N'修改菜单跳转', N'', N'/dict/dict_edit', N'4', N'3', N'N', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:49:04.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'156', N'dict_list', N'dict', N'[0],[system],[dict],', N'字典列表', N'', N'/dict/list', N'5', N'3', N'N', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:49:04.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'157', N'dict_detail', N'dict', N'[0],[system],[dict],', N'字典详情', N'', N'/dict/detail', N'6', N'3', N'N', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:49:04.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'158', N'log_list', N'log', N'[0],[system],[log],', N'日志列表', N'', N'/log/list', N'2', N'3', N'N', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:39.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'159', N'log_detail', N'log', N'[0],[system],[log],', N'日志详情', N'', N'/log/detail', N'3', N'3', N'N', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:39.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'160', N'del_login_log', N'loginLog', N'[0],[system],[loginLog],', N'清空登录日志', N'', N'/loginLog/delLoginLog', N'1', N'3', N'N', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:49:29.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'161', N'login_log_list', N'loginLog', N'[0],[system],[loginLog],', N'登录日志列表', N'', N'/loginLog/list', N'2', N'3', N'N', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:49:29.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'162', N'to_role_edit', N'role', N'[0],[system],[role],', N'修改角色跳转', N'', N'/role/role_edit', N'5', N'3', N'N', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:12.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'163', N'to_role_assign', N'role', N'[0],[system],[role],', N'角色分配跳转', N'', N'/role/role_assign', N'6', N'3', N'N', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:12.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'164', N'role_list', N'role', N'[0],[system],[role],', N'角色列表', N'', N'/role/list', N'7', N'3', N'N', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:12.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'165', N'to_assign_role', N'mgr', N'[0],[system],[mgr],', N'分配角色跳转', N'', N'/mgr/role_assign', N'8', N'3', N'N', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:07.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'166', N'to_user_edit', N'mgr', N'[0],[system],[mgr],', N'编辑用户跳转', N'', N'/mgr/user_edit', N'9', N'3', N'N', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:07.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'167', N'mgr_list', N'mgr', N'[0],[system],[mgr],', N'用户列表', N'', N'/mgr/list', N'10', N'3', N'N', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-06-30 13:48:07.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'171', N'dev_tools', N'0', N'[0],', N'开发管理', N'layui-icon layui-icon-code-circle', N'#', N'30', N'1', N'Y', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-05-11 13:40:27.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'172', N'dashboard', N'0', N'[0],', N'主控面板', N'layui-icon layui-icon-home', N'#', N'10', N'1', N'Y', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', NULL, N'2019-04-08 22:48:15.000', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1110777136265838594', N'demos_show', N'dev_tools', N'[0],[dev_tools],', N'模板页面', N'layui-icon layui-icon-template', N'#', N'40', N'2', N'Y', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', N'2019-03-27 13:34:41.000', N'2019-06-15 18:13:11.000', N'1', N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1110777366856089602', N'excel_import', N'demos_show', N'[0],[dev_tools],[demos_show],', N'excel导入', N'', N'/excel/import', N'10', N'3', N'Y', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', N'2019-03-27 13:35:36.000', N'2019-06-15 18:13:11.000', N'1', N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1110777491464667137', N'excel_export', N'demos_show', N'[0],[dev_tools],[demos_show],', N'excel导出', N'', N'/excel/export', N'20', N'3', N'Y', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', N'2019-03-27 13:36:06.000', N'2019-06-15 18:13:11.000', N'1', N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1110787391943098370', N'advanced_form', N'demos_show', N'[0],[dev_tools],[demos_show],', N'高级表单', N'', N'/egForm', N'30', N'3', N'Y', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', N'2019-03-27 14:15:26.000', N'2019-06-15 18:13:11.000', N'1', N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1110839216310329346', N'pdf_view', N'demos_show', N'[0],[dev_tools],[demos_show],', N'文档预览', N'', N'/loadPdfFile', N'40', N'3', N'Y', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', N'2019-03-27 17:41:22.000', N'2019-06-15 18:13:11.000', N'1', N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1111545968697860098', N'console', N'dashboard', N'[0],[dashboard],', N'项目介绍', N'', N'/system/console', N'10', N'2', N'Y', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', N'2019-03-29 16:29:45.000', N'2019-04-09 20:57:08.000', N'1', N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1111546189892870145', N'console2', N'dashboard', N'[0],[dashboard],', N'统计报表', N'', N'/system/console2', N'20', N'2', N'Y', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', N'2019-03-29 16:30:38.000', N'2019-04-08 22:49:48.000', N'1', N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1127085735660421122', N'code_generate', N'dev_tools', N'[0],[dev_tools],', N'代码生成', N'', N'/gen', N'20', N'2', N'Y', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', N'2019-05-11 13:39:14.000', N'2019-06-15 18:12:45.000', N'1', N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1139826657964593154', N'meta_data', N'dev_tools', N'[0],[dev_tools],', N'系统配置', N'', N'#', N'10', N'2', N'Y', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', N'2019-06-15 17:27:07.000', N'2019-06-15 18:12:35.000', N'1', N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1139827152854716418', N'data_source', N'meta_data', N'[0],[dev_tools],[meta_data],', N'数据源管理', N'', N'/databaseInfo', N'10', N'3', N'Y', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', N'2019-06-15 17:29:05.000', N'2019-06-15 18:12:35.000', N'1', N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1142957882422112257', N'SYS_CONFIG', N'meta_data', N'[0],[dev_tools],[meta_data],', N'参数配置', N'fa-star', N'/sysConfig', N'5', N'3', N'Y', N'', N'ENABLE', N'', N'', N'BASE_SYSTEM', N'2019-06-24 08:49:28.000', N'2019-06-24 08:57:34.000', N'1', N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1142957882422112258', N'SYS_CONFIG_ADD', N'SYS_CONFIG', N'[0],[dev_tools],[meta_data],[SYS_CONFIG],', N'参数配置添加', N'fa-star', N'', N'999', N'4', N'N', N'', N'ENABLE', N'', N'', N'BASE_SYSTEM', N'2019-06-24 08:49:28.000', N'2019-06-24 08:57:34.000', N'1', N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1142957882422112259', N'SYS_CONFIG_EDIT', N'SYS_CONFIG', N'[0],[dev_tools],[meta_data],[SYS_CONFIG],', N'参数配置修改', N'fa-star', N'', N'999', N'4', N'N', N'', N'ENABLE', N'', N'', N'BASE_SYSTEM', N'2019-06-24 08:49:28.000', N'2019-06-24 08:57:34.000', N'1', N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1142957882426306562', N'SYS_CONFIG_DELETE', N'SYS_CONFIG', N'[0],[dev_tools],[meta_data],[SYS_CONFIG],', N'参数配置删除', N'fa-star', N'', N'999', N'4', N'N', N'', N'ENABLE', N'', N'', N'BASE_SYSTEM', N'2019-06-24 08:49:28.000', N'2019-06-24 08:57:34.000', N'1', N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1144441072852684801', N'SYS_POSITION', N'system', N'[0],[system],', N'职位管理', N'fa-star', N'/position', N'35', N'2', N'Y', N'', N'ENABLE', N'', N'', N'BASE_SYSTEM', N'2019-06-28 11:03:09.000', N'2019-06-28 11:06:42.000', N'1', N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1144441072852684802', N'SYS_POSITION_ADD', N'SYS_POSITION', N'[0],[system],[SYS_POSITION],', N'职位表添加', N'fa-star', N'', N'999', N'3', N'N', N'', N'ENABLE', N'', N'', N'BASE_SYSTEM', N'2019-06-28 11:03:09.000', N'2019-06-28 11:06:42.000', N'1', N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1144441072852684803', N'SYS_POSITION_EDIT', N'SYS_POSITION', N'[0],[system],[SYS_POSITION],', N'职位表修改', N'fa-star', N'', N'999', N'3', N'N', N'', N'ENABLE', N'', N'', N'BASE_SYSTEM', N'2019-06-28 11:03:09.000', N'2019-06-28 11:06:42.000', N'1', N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1144441072852684804', N'SYS_POSITION_DELETE', N'SYS_POSITION', N'[0],[system],[SYS_POSITION],', N'职位表删除', N'fa-star', N'', N'999', N'3', N'N', N'', N'ENABLE', N'', N'', N'BASE_SYSTEM', N'2019-06-28 11:03:09.000', N'2019-06-28 11:06:42.000', N'1', N'1')
GO

INSERT INTO [dbo].[sys_menu]  VALUES (N'1149955324929765378', N'system_info', N'dashboard', N'[0],[dashboard],', N'系统监控', N'layui-icon-star-fill', N'/system/systemInfo', N'40', N'2', N'Y', NULL, N'ENABLE', NULL, NULL, N'BASE_SYSTEM', N'2019-07-13 16:14:49.000', NULL, N'1', NULL)
GO

COMMIT
GO


-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_notice]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_notice]
GO

CREATE TABLE [dbo].[sys_notice] (
  [notice_id] bigint  NOT NULL,
  [title] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [content] ntext COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_notice] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [sys_notice]
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[sys_notice]  VALUES (N'6', N'欢迎', N'hi，Guns旗舰版发布了！', N'2017-01-11 08:53:20.000', N'1', N'2018-12-28 23:24:48.000', N'1')
GO

INSERT INTO [dbo].[sys_notice]  VALUES (N'8', N'你好', N'你好，世界！', N'2017-05-10 19:28:57.000', N'1', N'2018-12-28 23:28:26.000', N'1')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for sys_operation_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_operation_log]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_operation_log]
GO

CREATE TABLE [dbo].[sys_operation_log] (
  [operation_log_id] bigint  NOT NULL,
  [log_type] varchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [log_name] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [user_id] bigint  NULL,
  [class_name] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [method] ntext COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime  NULL,
  [succeed] varchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [message] ntext COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_operation_log] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for sys_position
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_position]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_position]
GO

CREATE TABLE [dbo].[sys_position] (
  [position_id] bigint  NOT NULL,
  [name] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [code] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [sort] bigint  NULL,
  [status] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [remark] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_position] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [sys_position]
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[sys_position]  VALUES (N'1', N'董事长', N'President', N'1', N'ENABLE', N'', N'2019-06-27 18:14:43.000', N'1', NULL, NULL)
GO

INSERT INTO [dbo].[sys_position]  VALUES (N'2', N'总经理', N'GM', N'2', N'ENABLE', NULL, N'2019-06-27 18:14:43.000', N'1', NULL, NULL)
GO

COMMIT
GO


-- ----------------------------
-- Table structure for sys_relation
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_relation]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_relation]
GO

CREATE TABLE [dbo].[sys_relation] (
  [relation_id] bigint  NOT NULL,
  [menu_id] bigint  NULL,
  [role_id] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_relation] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [sys_relation]
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1138325281010921473', N'105', N'5')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1138325281031892994', N'132', N'5')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1138325281044475906', N'138', N'5')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1138325281057058818', N'139', N'5')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1138325281069641730', N'140', N'5')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1138325281082224642', N'155', N'5')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1138325281099001858', N'156', N'5')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1138325281111584770', N'157', N'5')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1138325281124167682', N'141', N'5')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1138325281136750593', N'142', N'5')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1138325281149333506', N'143', N'5')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1138325281161916418', N'144', N'5')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1138325281174499329', N'171', N'5')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1138325281187082241', N'149', N'5')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1138325281199665154', N'1127085735660421122', N'5')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1138325281216442370', N'172', N'5')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1138325281229025281', N'145', N'5')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1138325281245802498', N'1111545968697860098', N'5')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1138325281258385410', N'1111546189892870145', N'5')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955346819837954', N'105', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955346836615169', N'106', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955346849198081', N'107', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955346861780994', N'108', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955346878558210', N'109', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955346895335426', N'110', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955346907918338', N'111', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955346920501250', N'112', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955346928889858', N'113', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955346941472769', N'165', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955346954055681', N'166', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955346966638593', N'167', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955346979221505', N'114', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955346995998722', N'115', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347004387329', N'116', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347016970241', N'117', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347029553154', N'118', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347042136065', N'162', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347054718978', N'163', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347067301889', N'164', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347084079106', N'119', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347096662018', N'120', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347113439234', N'121', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347138605057', N'122', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347167965185', N'150', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347197325314', N'151', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347222491138', N'128', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347243462658', N'134', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347277017089', N'158', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347302182913', N'159', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347331543042', N'130', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347360903170', N'131', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347390263298', N'135', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347419623425', N'136', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347444789249', N'137', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347469955074', N'152', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347495120897', N'153', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347520286721', N'154', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347549646850', N'132', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347570618370', N'138', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347599978498', N'139', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347633532930', N'140', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347658698753', N'155', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347688058881', N'156', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347713224705', N'157', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347738390529', N'133', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347763556354', N'160', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347788722178', N'161', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347813888001', N'141', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347843248129', N'142', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347872608258', N'143', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347897774082', N'144', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347922939906', N'1144441072852684801', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347948105730', N'1144441072852684802', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347973271553', N'1144441072852684803', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955347998437378', N'1144441072852684804', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955348027797506', N'171', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955348052963330', N'149', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955348073934850', N'1110777136265838594', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955348090712065', N'1110777366856089602', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955348107489281', N'1110777491464667137', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955348124266498', N'1110787391943098370', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955348141043714', N'1110839216310329346', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955348157820930', N'1127085735660421122', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955348174598146', N'1139826657964593154', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955348191375362', N'1139827152854716418', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955348208152578', N'1142957882422112257', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955348229124098', N'1142957882422112258', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955348245901314', N'1142957882422112259', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955348262678530', N'1142957882426306562', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955348283650049', N'172', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955348308815874', N'145', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955348329787394', N'1111545968697860098', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955348346564610', N'1111546189892870145', N'1')
GO

INSERT INTO [dbo].[sys_relation]  VALUES (N'1149955348363341825', N'1149955324929765378', N'1')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_role]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_role]
GO

CREATE TABLE [dbo].[sys_role] (
  [role_id] bigint  NOT NULL,
  [pid] bigint  NULL,
  [name] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [description] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [sort] int  NULL,
  [version] int  NULL,
  [create_time] datetime  NULL,
  [update_time] datetime  NULL,
  [create_user] bigint  NULL,
  [update_user] bigint  NULL
)
GO

ALTER TABLE [dbo].[sys_role] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [sys_role]
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[sys_role]  VALUES (N'1', N'0', N'超级管理员', N'administrator', N'1', N'1', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[sys_role]  VALUES (N'5', N'1', N'第三方登录', N'oauth_role', N'2', NULL, NULL, NULL, NULL, NULL)
GO

COMMIT
GO


-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_user]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_user]
GO

CREATE TABLE [dbo].[sys_user] (
  [user_id] bigint  NOT NULL,
  [avatar] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [account] varchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [password] varchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [salt] varchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [name] varchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [birthday] datetime  NULL,
  [sex] varchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [email] varchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [phone] varchar(45) COLLATE Chinese_PRC_CI_AS  NULL,
  [role_id] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [dept_id] bigint  NULL,
  [status] varchar(32) COLLATE Chinese_PRC_CI_AS  NULL,
  [create_time] datetime  NULL,
  [create_user] bigint  NULL,
  [update_time] datetime  NULL,
  [update_user] bigint  NULL,
  [version] int  NULL
)
GO

ALTER TABLE [dbo].[sys_user] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [sys_user]
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[sys_user]  VALUES (N'1', N'1124606971782160385', N'admin', N'1d6b1208c7d151d335790276a18e3d99', N'q6taw', N'stylefeng', N'2018-11-16 00:00:00.000', N'M', N'sn93@qq.com', N'18200000000', N'1', N'27', N'ENABLE', N'2016-01-29 08:49:53.000', NULL, N'2018-12-28 22:52:24.000', N'24', N'25')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for sys_user_pos
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_user_pos]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_user_pos]
GO

CREATE TABLE [dbo].[sys_user_pos] (
  [user_pos_id] bigint  NOT NULL,
  [user_id] bigint  NOT NULL,
  [pos_id] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[sys_user_pos] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of [sys_user_pos]
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[sys_user_pos]  VALUES (N'1144495219551617025', N'1', N'1')
GO

COMMIT
GO


-- ----------------------------
-- Primary Key structure for table database_info
-- ----------------------------
ALTER TABLE [dbo].[database_info] ADD CONSTRAINT [PK__database__831C9652EE8A62B9] PRIMARY KEY CLUSTERED ([db_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table oauth_user_info
-- ----------------------------
ALTER TABLE [dbo].[oauth_user_info] ADD CONSTRAINT [PK__oauth_us__C579A02C89D1891D] PRIMARY KEY CLUSTERED ([oauth_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_config
-- ----------------------------
ALTER TABLE [dbo].[sys_config] ADD CONSTRAINT [PK__sys_conf__3213E83FD79CE053] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_dept
-- ----------------------------
ALTER TABLE [dbo].[sys_dept] ADD CONSTRAINT [sys_dept_PRIMARY] PRIMARY KEY NONCLUSTERED ([dept_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_dict
-- ----------------------------
ALTER TABLE [dbo].[sys_dict] ADD CONSTRAINT [sys_dict_PRIMARY] PRIMARY KEY NONCLUSTERED ([dict_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_dict_type
-- ----------------------------
ALTER TABLE [dbo].[sys_dict_type] ADD CONSTRAINT [sys_dict_type_PRIMARY] PRIMARY KEY NONCLUSTERED ([dict_type_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_file_info
-- ----------------------------
ALTER TABLE [dbo].[sys_file_info] ADD CONSTRAINT [sys_file_info_PRIMARY] PRIMARY KEY NONCLUSTERED ([file_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_login_log
-- ----------------------------
ALTER TABLE [dbo].[sys_login_log] ADD CONSTRAINT [sys_login_log_PRIMARY] PRIMARY KEY NONCLUSTERED ([login_log_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_menu
-- ----------------------------
ALTER TABLE [dbo].[sys_menu] ADD CONSTRAINT [PK__sys_menu__4CA0FADC7116E3EA] PRIMARY KEY CLUSTERED ([menu_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_notice
-- ----------------------------
ALTER TABLE [dbo].[sys_notice] ADD CONSTRAINT [sys_notice_PRIMARY] PRIMARY KEY NONCLUSTERED ([notice_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_operation_log
-- ----------------------------
ALTER TABLE [dbo].[sys_operation_log] ADD CONSTRAINT [sys_operation_log_PRIMARY] PRIMARY KEY NONCLUSTERED ([operation_log_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_position
-- ----------------------------
ALTER TABLE [dbo].[sys_position] ADD CONSTRAINT [PK__sys_posi__99A0E7A4BE1E80A7] PRIMARY KEY CLUSTERED ([position_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_relation
-- ----------------------------
ALTER TABLE [dbo].[sys_relation] ADD CONSTRAINT [sys_relation_PRIMARY] PRIMARY KEY NONCLUSTERED ([relation_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_role
-- ----------------------------
ALTER TABLE [dbo].[sys_role] ADD CONSTRAINT [sys_role_PRIMARY] PRIMARY KEY NONCLUSTERED ([role_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE [dbo].[sys_user] ADD CONSTRAINT [sys_user_PRIMARY] PRIMARY KEY NONCLUSTERED ([user_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_user_pos
-- ----------------------------
ALTER TABLE [dbo].[sys_user_pos] ADD CONSTRAINT [PK__sys_user__B0F68D73593F4326] PRIMARY KEY CLUSTERED ([user_pos_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

