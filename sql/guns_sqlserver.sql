/****** 部门表 ******/
CREATE TABLE [dbo].[sys_dept]
(
	[DEPT_ID] bigint NOT NULL ,
	[PID] bigint NULL ,
	[PIDS] nvarchar(512) NULL ,
	[SIMPLE_NAME] nvarchar(45) NULL ,
	[FULL_NAME] nvarchar(255) NULL ,
	[DESCRIPTION] nvarchar(255) NULL ,
	[VERSION] int NULL ,
	[SORT] int NULL ,
	[CREATE_TIME] datetime2(7) NULL ,
	[UPDATE_TIME] datetime2(7) NULL ,
	[CREATE_USER] bigint NULL ,
	[UPDATE_USER] bigint NULL
)
ON [PRIMARY];
GO


EXECUTE sp_addextendedproperty  N'MS_Description', N'部门表', N'SCHEMA', N'dbo', N'TABLE', N'sys_dept', NULL, NULL;
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'主键id', N'SCHEMA', N'dbo', N'TABLE', N'sys_dept', 'COLUMN', N'DEPT_ID';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'父部门id', N'SCHEMA', N'dbo', N'TABLE', N'sys_dept', 'COLUMN', N'PID';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'父级ids', N'SCHEMA', N'dbo', N'TABLE', N'sys_dept', 'COLUMN', N'PIDS';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'简称', N'SCHEMA', N'dbo', N'TABLE', N'sys_dept', 'COLUMN', N'SIMPLE_NAME';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'全称', N'SCHEMA', N'dbo', N'TABLE', N'sys_dept', 'COLUMN', N'FULL_NAME';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'描述', N'SCHEMA', N'dbo', N'TABLE', N'sys_dept', 'COLUMN', N'DESCRIPTION';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'版本（乐观锁保留字段）', N'SCHEMA', N'dbo', N'TABLE', N'sys_dept', 'COLUMN', N'VERSION';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'排序', N'SCHEMA', N'dbo', N'TABLE', N'sys_dept', 'COLUMN', N'SORT';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'创建时间', N'SCHEMA', N'dbo', N'TABLE', N'sys_dept', 'COLUMN', N'CREATE_TIME';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'修改时间', N'SCHEMA', N'dbo', N'TABLE', N'sys_dept', 'COLUMN', N'UPDATE_TIME';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'创建人', N'SCHEMA', N'dbo', N'TABLE', N'sys_dept', 'COLUMN', N'CREATE_USER';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'修改人', N'SCHEMA', N'dbo', N'TABLE', N'sys_dept', 'COLUMN', N'UPDATE_USER';
GO

ALTER TABLE [dbo].[sys_dept] ADD CONSTRAINT [PK_sys_dept] PRIMARY KEY CLUSTERED
(
[DEPT_ID]
)
WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON);
GO

insert into [dbo].[sys_dept]([DEPT_ID],[PID],[PIDS],[SIMPLE_NAME],[FULL_NAME],[DESCRIPTION],[VERSION],[SORT],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('24','0','[0],','总公司','总公司','',null,'1',null,null,null,null);
insert into [dbo].[sys_dept]([DEPT_ID],[PID],[PIDS],[SIMPLE_NAME],[FULL_NAME],[DESCRIPTION],[VERSION],[SORT],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('25','24','[0],[24],','开发部','开发部','',null,'2',null,null,null,null);
insert into [dbo].[sys_dept]([DEPT_ID],[PID],[PIDS],[SIMPLE_NAME],[FULL_NAME],[DESCRIPTION],[VERSION],[SORT],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('26','24','[0],[24],','运营部','运营部','',null,'3',null,null,null,null);
insert into [dbo].[sys_dept]([DEPT_ID],[PID],[PIDS],[SIMPLE_NAME],[FULL_NAME],[DESCRIPTION],[VERSION],[SORT],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('27','24','[0],[24],','战略部','战略部','',null,'4',null,null,null,null);
GO

/****** 字典表 ******/
CREATE TABLE [dbo].[sys_dict]
(
	[DICT_ID] bigint NOT NULL ,
	[DICT_TYPE_ID] bigint NOT NULL ,
	[CODE] nvarchar(50) NOT NULL ,
	[NAME] nvarchar(255) NOT NULL ,
	[PARENT_ID] bigint NOT NULL ,
	[PARENT_IDS] nvarchar(50) NULL ,
	[STATUS] nvarchar(10) NOT NULL ,
	[SORT] int NULL ,
	[DESCRIPTION] nvarchar(1000) NULL ,
	[CREATE_TIME] datetime2(7) NULL ,
	[UPDATE_TIME] datetime2(7) NULL ,
	[CREATE_USER] bigint NULL ,
	[UPDATE_USER] bigint NULL
)
ON [PRIMARY];
GO


EXECUTE sp_addextendedproperty  N'MS_Description', N'字典表', N'SCHEMA', N'dbo', N'TABLE', N'sys_dict', NULL, NULL;
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'字典id', N'SCHEMA', N'dbo', N'TABLE', N'sys_dict', 'COLUMN', N'DICT_ID';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'所属字典类型的id', N'SCHEMA', N'dbo', N'TABLE', N'sys_dict', 'COLUMN', N'DICT_TYPE_ID';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'字典编码', N'SCHEMA', N'dbo', N'TABLE', N'sys_dict', 'COLUMN', N'CODE';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'字典名称', N'SCHEMA', N'dbo', N'TABLE', N'sys_dict', 'COLUMN', N'NAME';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'上级代码id', N'SCHEMA', N'dbo', N'TABLE', N'sys_dict', 'COLUMN', N'PARENT_ID';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'所有上级id', N'SCHEMA', N'dbo', N'TABLE', N'sys_dict', 'COLUMN', N'PARENT_IDS';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'状态（字典）', N'SCHEMA', N'dbo', N'TABLE', N'sys_dict', 'COLUMN', N'STATUS';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'排序', N'SCHEMA', N'dbo', N'TABLE', N'sys_dict', 'COLUMN', N'SORT';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'字典的描述', N'SCHEMA', N'dbo', N'TABLE', N'sys_dict', 'COLUMN', N'DESCRIPTION';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'创建时间', N'SCHEMA', N'dbo', N'TABLE', N'sys_dict', 'COLUMN', N'CREATE_TIME';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'更新时间', N'SCHEMA', N'dbo', N'TABLE', N'sys_dict', 'COLUMN', N'UPDATE_TIME';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'创建者', N'SCHEMA', N'dbo', N'TABLE', N'sys_dict', 'COLUMN', N'CREATE_USER';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'更新者', N'SCHEMA', N'dbo', N'TABLE', N'sys_dict', 'COLUMN', N'UPDATE_USER';
GO

ALTER TABLE [dbo].[sys_dict] ADD CONSTRAINT [PK_sys_dict] PRIMARY KEY CLUSTERED
(
[DICT_ID]
)
WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON);
GO

insert into [dbo].[sys_dict]([DICT_ID],[DICT_TYPE_ID],[CODE],[NAME],[PARENT_ID],[PARENT_IDS],[STATUS],[SORT],[DESCRIPTION],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('1106120532442595330','1106120208097067009','M','男','0','[0]','ENABLE',null,'','2019-03-14 17:11:00.0000000',null,'1',null);
insert into [dbo].[sys_dict]([DICT_ID],[DICT_TYPE_ID],[CODE],[NAME],[PARENT_ID],[PARENT_IDS],[STATUS],[SORT],[DESCRIPTION],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('1106120574163337218','1106120208097067009','F','女','0','[0]','ENABLE',null,'','2019-03-14 17:11:10.0000000',null,'1',null);
insert into [dbo].[sys_dict]([DICT_ID],[DICT_TYPE_ID],[CODE],[NAME],[PARENT_ID],[PARENT_IDS],[STATUS],[SORT],[DESCRIPTION],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('1106120645697191938','1106120265689055233','ENABLE','启用','0','[0]','ENABLE',null,'','2019-03-14 17:11:27.0000000',null,'1',null);
insert into [dbo].[sys_dict]([DICT_ID],[DICT_TYPE_ID],[CODE],[NAME],[PARENT_ID],[PARENT_IDS],[STATUS],[SORT],[DESCRIPTION],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('1106120699468169217','1106120265689055233','DISABLE','禁用','0','[0]','ENABLE',null,'','2019-03-14 17:11:40.0000000',null,'1',null);
insert into [dbo].[sys_dict]([DICT_ID],[DICT_TYPE_ID],[CODE],[NAME],[PARENT_ID],[PARENT_IDS],[STATUS],[SORT],[DESCRIPTION],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('1106120784318939137','1106120322450571266','ENABLE','启用','0','[0]','ENABLE',null,'','2019-03-14 17:12:00.0000000',null,'1',null);
insert into [dbo].[sys_dict]([DICT_ID],[DICT_TYPE_ID],[CODE],[NAME],[PARENT_ID],[PARENT_IDS],[STATUS],[SORT],[DESCRIPTION],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('1106120825993543682','1106120322450571266','FREEZE','冻结','0','[0]','ENABLE','1','','2019-03-14 17:12:10.0000000','2019-03-16 10:56:36.0000000','1','1');
insert into [dbo].[sys_dict]([DICT_ID],[DICT_TYPE_ID],[CODE],[NAME],[PARENT_ID],[PARENT_IDS],[STATUS],[SORT],[DESCRIPTION],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('1106120875872206849','1106120322450571266','DELETED','已删除','0','[0]','ENABLE','-1221','','2019-03-14 17:12:22.0000000','2019-03-16 10:56:53.0000000','1','1');
insert into [dbo].[sys_dict]([DICT_ID],[DICT_TYPE_ID],[CODE],[NAME],[PARENT_ID],[PARENT_IDS],[STATUS],[SORT],[DESCRIPTION],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('1106120935070613505','1106120388036902914','Y','删除','0','[0]','ENABLE','23333','','2019-03-14 17:12:36.0000000','2019-03-16 10:58:53.0000000','1','1');
insert into [dbo].[sys_dict]([DICT_ID],[DICT_TYPE_ID],[CODE],[NAME],[PARENT_ID],[PARENT_IDS],[STATUS],[SORT],[DESCRIPTION],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('1106120968910258177','1106120388036902914','N','未删除','0','[0]','ENABLE','1212211221','','2019-03-14 17:12:44.0000000','2019-03-16 10:59:03.0000000','1','1');
insert into [dbo].[sys_dict]([DICT_ID],[DICT_TYPE_ID],[CODE],[NAME],[PARENT_ID],[PARENT_IDS],[STATUS],[SORT],[DESCRIPTION],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('1106751061042974722','1106120322450571266','11212','122','0','[0]','ENABLE','1212','122112','2019-03-16 10:56:30.0000000',null,'1',null);
insert into [dbo].[sys_dict]([DICT_ID],[DICT_TYPE_ID],[CODE],[NAME],[PARENT_ID],[PARENT_IDS],[STATUS],[SORT],[DESCRIPTION],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('1106751747772166145','1106120388036902914','12312','3123123','1106120968910258177','[0],[1106120968910258177]','ENABLE','123','','2019-03-16 10:59:14.0000000',null,'1',null);
GO

/****** 字典类型表 ******/
CREATE TABLE [dbo].[sys_dict_type]
(
	[DICT_TYPE_ID] bigint NOT NULL ,
	[CODE] nvarchar(255) NOT NULL ,
	[NAME] nvarchar(255) NOT NULL ,
	[DESCRIPTION] nvarchar(1000) NULL ,
	[SYSTEM_FLAG] char(1) NOT NULL ,
	[STATUS] nvarchar(10) NOT NULL ,
	[SORT] int NOT NULL ,
	[CREATE_TIME] datetime2(7) NOT NULL ,
	[CREATE_USER] bigint NOT NULL ,
	[UPDATE_TIME] datetime2(7) NULL ,
	[UPDATE_USER] bigint NULL
)
ON [PRIMARY];
GO


EXECUTE sp_addextendedproperty  N'MS_Description', N'字典类型表', N'SCHEMA', N'dbo', N'TABLE', N'sys_dict_type', NULL, NULL;
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'字典类型id', N'SCHEMA', N'dbo', N'TABLE', N'sys_dict_type', 'COLUMN', N'DICT_TYPE_ID';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'字典类型编码', N'SCHEMA', N'dbo', N'TABLE', N'sys_dict_type', 'COLUMN', N'CODE';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'字典类型名称', N'SCHEMA', N'dbo', N'TABLE', N'sys_dict_type', 'COLUMN', N'NAME';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'描述', N'SCHEMA', N'dbo', N'TABLE', N'sys_dict_type', 'COLUMN', N'DESCRIPTION';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'是否是系统字典，Y-是，N-否', N'SCHEMA', N'dbo', N'TABLE', N'sys_dict_type', 'COLUMN', N'SYSTEM_FLAG';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'状态(字典)', N'SCHEMA', N'dbo', N'TABLE', N'sys_dict_type', 'COLUMN', N'STATUS';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'排序', N'SCHEMA', N'dbo', N'TABLE', N'sys_dict_type', 'COLUMN', N'SORT';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'添加时间', N'SCHEMA', N'dbo', N'TABLE', N'sys_dict_type', 'COLUMN', N'CREATE_TIME';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'创建人', N'SCHEMA', N'dbo', N'TABLE', N'sys_dict_type', 'COLUMN', N'CREATE_USER';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'修改时间', N'SCHEMA', N'dbo', N'TABLE', N'sys_dict_type', 'COLUMN', N'UPDATE_TIME';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'修改人', N'SCHEMA', N'dbo', N'TABLE', N'sys_dict_type', 'COLUMN', N'UPDATE_USER';
GO

ALTER TABLE [dbo].[sys_dict_type] ADD CONSTRAINT [PK_sys_dict_type] PRIMARY KEY CLUSTERED
(
[DICT_TYPE_ID]
)
WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON);
GO

insert into [dbo].[sys_dict_type]([DICT_TYPE_ID],[CODE],[NAME],[DESCRIPTION],[SYSTEM_FLAG],[STATUS],[SORT],[CREATE_TIME],[CREATE_USER],[UPDATE_TIME],[UPDATE_USER]) values('1106120208097067009','SEX','性别','','Y','ENABLE','4','2019-03-14 17:09:43.0000000','1',null,null);
insert into [dbo].[sys_dict_type]([DICT_TYPE_ID],[CODE],[NAME],[DESCRIPTION],[SYSTEM_FLAG],[STATUS],[SORT],[CREATE_TIME],[CREATE_USER],[UPDATE_TIME],[UPDATE_USER]) values('1106120265689055233','STATUS','状态','','Y','ENABLE','3','2019-03-14 17:09:57.0000000','1',null,null);
insert into [dbo].[sys_dict_type]([DICT_TYPE_ID],[CODE],[NAME],[DESCRIPTION],[SYSTEM_FLAG],[STATUS],[SORT],[CREATE_TIME],[CREATE_USER],[UPDATE_TIME],[UPDATE_USER]) values('1106120322450571266','ACCOUNT_STATUS','账号状态','N','Y','ENABLE','21112','2019-03-14 17:10:10.0000000','1','2019-03-16 10:56:15.0000000','1');
insert into [dbo].[sys_dict_type]([DICT_TYPE_ID],[CODE],[NAME],[DESCRIPTION],[SYSTEM_FLAG],[STATUS],[SORT],[CREATE_TIME],[CREATE_USER],[UPDATE_TIME],[UPDATE_USER]) values('1106120388036902914','DEL_FLAG','是否删除','','Y','ENABLE','2','2019-03-14 17:10:26.0000000','1','2019-03-27 16:26:31.0000000','1');
GO

/****** 文件信息表 ******/
CREATE TABLE [dbo].[sys_file_info]
(
	[FILE_ID] nvarchar(50) NOT NULL ,
	[FILE_DATA] nvarchar(MAX) NULL ,
	[CREATE_TIME] datetime2(7) NULL ,
	[UPDATE_TIME] datetime2(7) NULL ,
	[CREATE_USER] bigint NULL ,
	[UPDATE_USER] bigint NULL
)
ON [PRIMARY];
GO


EXECUTE sp_addextendedproperty  N'MS_Description', N'文件信息表
', N'SCHEMA', N'dbo', N'TABLE', N'sys_file_info', NULL, NULL;
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'主键id', N'SCHEMA', N'dbo', N'TABLE', N'sys_file_info', 'COLUMN', N'FILE_ID';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'base64编码的文件', N'SCHEMA', N'dbo', N'TABLE', N'sys_file_info', 'COLUMN', N'FILE_DATA';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'创建时间', N'SCHEMA', N'dbo', N'TABLE', N'sys_file_info', 'COLUMN', N'CREATE_TIME';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'修改时间', N'SCHEMA', N'dbo', N'TABLE', N'sys_file_info', 'COLUMN', N'UPDATE_TIME';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'创建用户', N'SCHEMA', N'dbo', N'TABLE', N'sys_file_info', 'COLUMN', N'CREATE_USER';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'修改用户', N'SCHEMA', N'dbo', N'TABLE', N'sys_file_info', 'COLUMN', N'UPDATE_USER';
GO

ALTER TABLE [dbo].[sys_file_info] ADD CONSTRAINT [PK_sys_file_info] PRIMARY KEY CLUSTERED
(
[FILE_ID]
)
WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON);
GO

insert into [dbo].[sys_file_info]([FILE_ID],[FILE_DATA],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('1','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',null,null,null,null);
GO

/****** 登录记录 ******/
CREATE TABLE [dbo].[sys_login_log]
(
	[LOGIN_LOG_ID] bigint NOT NULL ,
	[LOG_NAME] nvarchar(255) NULL ,
	[USER_ID] bigint NULL ,
	[CREATE_TIME] datetime2(7) NULL ,
	[SUCCEED] nvarchar(255) NULL ,
	[MESSAGE] nvarchar(MAX) NULL ,
	[IP_ADDRESS] nvarchar(255) NULL
)
ON [PRIMARY];
GO


EXECUTE sp_addextendedproperty  N'MS_Description', N'登录记录', N'SCHEMA', N'dbo', N'TABLE', N'sys_login_log', NULL, NULL;
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'主键', N'SCHEMA', N'dbo', N'TABLE', N'sys_login_log', 'COLUMN', N'LOGIN_LOG_ID';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'日志名称', N'SCHEMA', N'dbo', N'TABLE', N'sys_login_log', 'COLUMN', N'LOG_NAME';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'管理员id', N'SCHEMA', N'dbo', N'TABLE', N'sys_login_log', 'COLUMN', N'USER_ID';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'创建时间', N'SCHEMA', N'dbo', N'TABLE', N'sys_login_log', 'COLUMN', N'CREATE_TIME';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'是否执行成功', N'SCHEMA', N'dbo', N'TABLE', N'sys_login_log', 'COLUMN', N'SUCCEED';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'具体消息', N'SCHEMA', N'dbo', N'TABLE', N'sys_login_log', 'COLUMN', N'MESSAGE';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'登录ip', N'SCHEMA', N'dbo', N'TABLE', N'sys_login_log', 'COLUMN', N'IP_ADDRESS';
GO

ALTER TABLE [dbo].[sys_login_log] ADD CONSTRAINT [PK_sys_login_log] PRIMARY KEY CLUSTERED
(
[LOGIN_LOG_ID]
)
WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON);
GO


/****** 菜单表 ******/
CREATE TABLE [dbo].[sys_menu]
(
	[MENU_ID] bigint NOT NULL ,
	[CODE] nvarchar(255) NULL ,
	[PCODE] nvarchar(255) NULL ,
	[PCODES] nvarchar(255) NULL ,
	[NAME] nvarchar(255) NULL ,
	[ICON] nvarchar(255) NULL ,
	[URL] nvarchar(255) NULL ,
	[SORT] int NULL ,
	[LEVELS] int NULL ,
	[MENU_FLAG] nvarchar(32) NULL ,
	[DESCRIPTION] nvarchar(255) NULL ,
	[STATUS] nvarchar(32) NULL ,
	[NEW_PAGE_FLAG] nvarchar(32) NULL ,
	[OPEN_FLAG] nvarchar(32) NULL ,
	[CREATE_TIME] datetime2(7) NULL ,
	[UPDATE_TIME] datetime2(7) NULL ,
	[CREATE_USER] bigint NULL ,
	[UPDATE_USER] bigint NULL
)
ON [PRIMARY];
GO


EXECUTE sp_addextendedproperty  N'MS_Description', N'菜单表', N'SCHEMA', N'dbo', N'TABLE', N'sys_menu', NULL, NULL;
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'主键id', N'SCHEMA', N'dbo', N'TABLE', N'sys_menu', 'COLUMN', N'MENU_ID';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'菜单编号', N'SCHEMA', N'dbo', N'TABLE', N'sys_menu', 'COLUMN', N'CODE';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'菜单父编号', N'SCHEMA', N'dbo', N'TABLE', N'sys_menu', 'COLUMN', N'PCODE';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'当前菜单的所有父菜单编号', N'SCHEMA', N'dbo', N'TABLE', N'sys_menu', 'COLUMN', N'PCODES';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'菜单名称', N'SCHEMA', N'dbo', N'TABLE', N'sys_menu', 'COLUMN', N'NAME';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'菜单图标', N'SCHEMA', N'dbo', N'TABLE', N'sys_menu', 'COLUMN', N'ICON';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'url地址', N'SCHEMA', N'dbo', N'TABLE', N'sys_menu', 'COLUMN', N'URL';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'菜单排序号', N'SCHEMA', N'dbo', N'TABLE', N'sys_menu', 'COLUMN', N'SORT';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'菜单层级', N'SCHEMA', N'dbo', N'TABLE', N'sys_menu', 'COLUMN', N'LEVELS';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'是否是菜单(字典)', N'SCHEMA', N'dbo', N'TABLE', N'sys_menu', 'COLUMN', N'MENU_FLAG';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'备注', N'SCHEMA', N'dbo', N'TABLE', N'sys_menu', 'COLUMN', N'DESCRIPTION';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'菜单状态(字典)', N'SCHEMA', N'dbo', N'TABLE', N'sys_menu', 'COLUMN', N'STATUS';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'是否打开新页面的标识(字典)', N'SCHEMA', N'dbo', N'TABLE', N'sys_menu', 'COLUMN', N'NEW_PAGE_FLAG';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'是否打开(字典)', N'SCHEMA', N'dbo', N'TABLE', N'sys_menu', 'COLUMN', N'OPEN_FLAG';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'创建时间', N'SCHEMA', N'dbo', N'TABLE', N'sys_menu', 'COLUMN', N'CREATE_TIME';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'修改时间', N'SCHEMA', N'dbo', N'TABLE', N'sys_menu', 'COLUMN', N'UPDATE_TIME';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'创建人', N'SCHEMA', N'dbo', N'TABLE', N'sys_menu', 'COLUMN', N'CREATE_USER';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'修改人', N'SCHEMA', N'dbo', N'TABLE', N'sys_menu', 'COLUMN', N'UPDATE_USER';
GO

ALTER TABLE [dbo].[sys_menu] ADD CONSTRAINT [PK_sys_menu] PRIMARY KEY CLUSTERED
(
[MENU_ID]
)
WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON);
GO



insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('105','system','0','[0],','系统管理','layui-icon layui-icon-username','#','30','1','Y',null,'ENABLE',null,'1',null,'2019-02-11 15:49:05.0000000',null,'1');
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('106','mgr','system','[0],[system],','用户管理','','/mgr','1','2','Y',null,'ENABLE',null,'0',null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('107','mgr_add','mgr','[0],[system],[mgr],','添加用户',null,'/mgr/add','1','3','N',null,'ENABLE',null,'0',null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('108','mgr_edit','mgr','[0],[system],[mgr],','修改用户',null,'/mgr/edit','2','3','N',null,'ENABLE',null,'0',null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('109','mgr_delete','mgr','[0],[system],[mgr],','删除用户',null,'/mgr/delete','3','3','N',null,'ENABLE',null,'0',null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('110','mgr_reset','mgr','[0],[system],[mgr],','重置密码',null,'/mgr/reset','4','3','N',null,'ENABLE',null,'0',null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('111','mgr_freeze','mgr','[0],[system],[mgr],','冻结用户',null,'/mgr/freeze','5','3','N',null,'ENABLE',null,'0',null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('112','mgr_unfreeze','mgr','[0],[system],[mgr],','解除冻结用户',null,'/mgr/unfreeze','6','3','N',null,'ENABLE',null,'0',null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('113','mgr_setRole','mgr','[0],[system],[mgr],','分配角色',null,'/mgr/setRole','7','3','N',null,'ENABLE',null,'0',null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('114','role','system','[0],[system],','角色管理',null,'/role','2','2','Y',null,'ENABLE',null,'0',null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('115','role_add','role','[0],[system],[role],','添加角色',null,'/role/add','1','3','N',null,'ENABLE',null,'0',null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('116','role_edit','role','[0],[system],[role],','修改角色',null,'/role/edit','2','3','N',null,'ENABLE',null,'0',null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('117','role_remove','role','[0],[system],[role],','删除角色',null,'/role/remove','3','3','N',null,'ENABLE',null,'0',null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('118','role_setAuthority','role','[0],[system],[role],','配置权限',null,'/role/setAuthority','4','3','N',null,'ENABLE',null,'0',null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('119','menu','system','[0],[system],','菜单管理',null,'/menu','4','2','Y',null,'ENABLE',null,'0',null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('120','menu_add','menu','[0],[system],[menu],','添加菜单',null,'/menu/add','1','3','N',null,'ENABLE',null,'0',null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('121','menu_edit','menu','[0],[system],[menu],','修改菜单',null,'/menu/edit','2','3','N',null,'ENABLE',null,'0',null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('122','menu_remove','menu','[0],[system],[menu],','删除菜单',null,'/menu/remove','3','3','N',null,'ENABLE',null,'0',null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('128','log','system','[0],[system],','业务日志',null,'/log','6','2','Y',null,'ENABLE',null,'0',null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('130','druid','system','[0],[system],','监控管理',null,'/druid','7','2','Y',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('131','dept','system','[0],[system],','部门管理',null,'/dept','3','2','Y',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('132','dict','system','[0],[system],','字典管理',null,'/dictType','4','2','Y',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('133','loginLog','system','[0],[system],','登录日志',null,'/loginLog','6','2','Y',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('134','log_clean','log','[0],[system],[log],','清空日志',null,'/log/delLog','3','3','N',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('135','dept_add','dept','[0],[system],[dept],','添加部门',null,'/dept/add','1','3','N',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('136','dept_update','dept','[0],[system],[dept],','修改部门',null,'/dept/update','1','3','N',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('137','dept_delete','dept','[0],[system],[dept],','删除部门',null,'/dept/delete','1','3','N',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('138','dict_add','dict','[0],[system],[dict],','添加字典',null,'/dictType/addItem','1','3','N',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('139','dict_update','dict','[0],[system],[dict],','修改字典',null,'/dictType/editItem','1','3','N',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('140','dict_delete','dict','[0],[system],[dict],','删除字典',null,'/dictType/delete','1','3','N',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('141','notice','system','[0],[system],','通知管理',null,'/notice','9','2','Y',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('142','notice_add','notice','[0],[system],[notice],','添加通知',null,'/notice/add','1','3','N',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('143','notice_update','notice','[0],[system],[notice],','修改通知',null,'/notice/update','2','3','N',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('144','notice_delete','notice','[0],[system],[notice],','删除通知',null,'/notice/delete','3','3','N',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('145','hello','system_message','[0],[system_message],','系统消息','layui-icon layui-icon-tips','/notice/hello','1','2','Y',null,'ENABLE',null,null,null,'2019-02-11 15:47:19.0000000',null,'1');
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('149','api_mgr','dev_tools','[0],[dev_tools],','接口文档','fa-leaf','/swagger-ui.html','2','2','Y',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('150','to_menu_edit','menu','[0],[system],[menu],','菜单编辑跳转','','/menu/menu_edit','4','3','N',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('151','menu_list','menu','[0],[system],[menu],','菜单列表','','/menu/list','5','3','N',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('152','to_dept_update','dept','[0],[system],[dept],','修改部门跳转','','/dept/dept_update','4','3','N',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('153','dept_list','dept','[0],[system],[dept],','部门列表','','/dept/list','5','3','N',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('154','dept_detail','dept','[0],[system],[dept],','部门详情','','/dept/detail','6','3','N',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('155','to_dict_edit','dict','[0],[system],[dict],','修改菜单跳转','','/dict/dict_edit','4','3','N',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('156','dict_list','dict','[0],[system],[dict],','字典列表','','/dict/list','5','3','N',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('157','dict_detail','dict','[0],[system],[dict],','字典详情','','/dict/detail','6','3','N',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('158','log_list','log','[0],[system],[log],','日志列表','','/log/list','2','3','N',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('159','log_detail','log','[0],[system],[log],','日志详情','','/log/detail','3','3','N',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('160','del_login_log','loginLog','[0],[system],[loginLog],','清空登录日志','','/loginLog/delLoginLog','1','3','N',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('161','login_log_list','loginLog','[0],[system],[loginLog],','登录日志列表','','/loginLog/list','2','3','N',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('162','to_role_edit','role','[0],[system],[role],','修改角色跳转','','/role/role_edit','5','3','N',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('163','to_role_assign','role','[0],[system],[role],','角色分配跳转','','/role/role_assign','6','3','N',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('164','role_list','role','[0],[system],[role],','角色列表','','/role/list','7','3','N',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('165','to_assign_role','mgr','[0],[system],[mgr],','分配角色跳转','','/mgr/role_assign','8','3','N',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('166','to_user_edit','mgr','[0],[system],[mgr],','编辑用户跳转','','/mgr/user_edit','9','3','N',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('167','mgr_list','mgr','[0],[system],[mgr],','用户列表','','/mgr/list','10','3','N',null,'ENABLE',null,null,null,null,null,null);
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('171','dev_tools','0','[0],','开发工具','layui-icon layui-icon-app','#','20','1','Y',null,'ENABLE',null,null,null,'2019-02-11 15:49:25.0000000',null,'1');
insert into [dbo].[sys_menu]([MENU_ID],[CODE],[PCODE],[PCODES],[NAME],[ICON],[URL],[SORT],[LEVELS],[MENU_FLAG],[DESCRIPTION],[STATUS],[NEW_PAGE_FLAG],[OPEN_FLAG],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('172','system_message','0','[0],','系统消息','layui-icon layui-icon-tips','#','10','1','Y',null,'ENABLE',null,null,null,'2019-02-11 15:47:32.0000000',null,'1');
GO


/****** 通知表 ******/
CREATE TABLE [dbo].[sys_notice]
(
	[NOTICE_ID] bigint NOT NULL ,
	[TITLE] nvarchar(255) NULL ,
	[CONTENT] nvarchar(MAX) NULL ,
	[CREATE_TIME] datetime2(7) NULL ,
	[CREATE_USER] bigint NULL ,
	[UPDATE_TIME] datetime2(7) NULL ,
	[UPDATE_USER] bigint NULL
)
ON [PRIMARY];
GO


EXECUTE sp_addextendedproperty  N'MS_Description', N'通知表', N'SCHEMA', N'dbo', N'TABLE', N'sys_notice', NULL, NULL;
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'主键', N'SCHEMA', N'dbo', N'TABLE', N'sys_notice', 'COLUMN', N'NOTICE_ID';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'标题', N'SCHEMA', N'dbo', N'TABLE', N'sys_notice', 'COLUMN', N'TITLE';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'内容', N'SCHEMA', N'dbo', N'TABLE', N'sys_notice', 'COLUMN', N'CONTENT';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'创建时间', N'SCHEMA', N'dbo', N'TABLE', N'sys_notice', 'COLUMN', N'CREATE_TIME';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'创建人', N'SCHEMA', N'dbo', N'TABLE', N'sys_notice', 'COLUMN', N'CREATE_USER';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'修改时间', N'SCHEMA', N'dbo', N'TABLE', N'sys_notice', 'COLUMN', N'UPDATE_TIME';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'修改人', N'SCHEMA', N'dbo', N'TABLE', N'sys_notice', 'COLUMN', N'UPDATE_USER';
GO

ALTER TABLE [dbo].[sys_notice] ADD CONSTRAINT [PK_sys_notice] PRIMARY KEY CLUSTERED
(
[NOTICE_ID]
)
WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON);
GO


insert into [dbo].[sys_notice]([NOTICE_ID],[TITLE],[CONTENT],[CREATE_TIME],[CREATE_USER],[UPDATE_TIME],[UPDATE_USER]) values('6','欢迎','hi，Guns旗舰版发布了！','2017-01-11 08:53:20.0000000','1','2018-12-28 23:24:48.0000000','1');
insert into [dbo].[sys_notice]([NOTICE_ID],[TITLE],[CONTENT],[CREATE_TIME],[CREATE_USER],[UPDATE_TIME],[UPDATE_USER]) values('8','你好','你好，世界！','2017-05-10 19:28:57.0000000','1','2018-12-28 23:28:26.0000000','1');
GO

/****** 操作日志 ******/
CREATE TABLE [dbo].[sys_operation_log]
(
	[OPERATION_LOG_ID] bigint NOT NULL ,
	[LOG_TYPE] nvarchar(32) NULL ,
	[LOG_NAME] nvarchar(255) NULL ,
	[USER_ID] bigint NULL ,
	[CLASS_NAME] nvarchar(255) NULL ,
	[METHOD] nvarchar(MAX) NULL ,
	[CREATE_TIME] datetime2(7) NULL ,
	[SUCCEED] nvarchar(32) NULL ,
	[MESSAGE] nvarchar(MAX) NULL
)
ON [PRIMARY];
GO


EXECUTE sp_addextendedproperty  N'MS_Description', N'操作日志', N'SCHEMA', N'dbo', N'TABLE', N'sys_operation_log', NULL, NULL;
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'主键', N'SCHEMA', N'dbo', N'TABLE', N'sys_operation_log', 'COLUMN', N'OPERATION_LOG_ID';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'日志类型(字典)', N'SCHEMA', N'dbo', N'TABLE', N'sys_operation_log', 'COLUMN', N'LOG_TYPE';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'日志名称', N'SCHEMA', N'dbo', N'TABLE', N'sys_operation_log', 'COLUMN', N'LOG_NAME';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'用户id', N'SCHEMA', N'dbo', N'TABLE', N'sys_operation_log', 'COLUMN', N'USER_ID';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'类名称', N'SCHEMA', N'dbo', N'TABLE', N'sys_operation_log', 'COLUMN', N'CLASS_NAME';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'方法名称', N'SCHEMA', N'dbo', N'TABLE', N'sys_operation_log', 'COLUMN', N'METHOD';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'创建时间', N'SCHEMA', N'dbo', N'TABLE', N'sys_operation_log', 'COLUMN', N'CREATE_TIME';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'是否成功(字典)', N'SCHEMA', N'dbo', N'TABLE', N'sys_operation_log', 'COLUMN', N'SUCCEED';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'备注', N'SCHEMA', N'dbo', N'TABLE', N'sys_operation_log', 'COLUMN', N'MESSAGE';
GO

ALTER TABLE [dbo].[sys_operation_log] ADD CONSTRAINT [PK_sys_operation_log] PRIMARY KEY CLUSTERED
(
[OPERATION_LOG_ID]
)
WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON);
GO


/****** 角色和菜单关联表 ******/
CREATE TABLE [dbo].[sys_relation]
(
	[RELATION_ID] bigint NOT NULL ,
	[MENU_ID] bigint NULL ,
	[ROLE_ID] bigint NULL
)
ON [PRIMARY];
GO


EXECUTE sp_addextendedproperty  N'MS_Description', N'角色和菜单关联表', N'SCHEMA', N'dbo', N'TABLE', N'sys_relation', NULL, NULL;
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'主键', N'SCHEMA', N'dbo', N'TABLE', N'sys_relation', 'COLUMN', N'RELATION_ID';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'菜单id', N'SCHEMA', N'dbo', N'TABLE', N'sys_relation', 'COLUMN', N'MENU_ID';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'角色id', N'SCHEMA', N'dbo', N'TABLE', N'sys_relation', 'COLUMN', N'ROLE_ID';
GO

ALTER TABLE [dbo].[sys_relation] ADD CONSTRAINT [PK_sys_relation] PRIMARY KEY CLUSTERED
(
[RELATION_ID]
)
WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON);
GO



insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3792','105','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3793','106','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3794','107','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3795','108','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3796','109','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3797','110','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3798','111','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3799','112','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3800','113','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3801','165','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3802','166','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3803','167','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3804','114','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3805','115','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3806','116','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3807','117','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3808','118','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3809','162','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3810','163','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3811','164','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3812','119','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3813','120','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3814','121','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3815','122','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3816','150','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3817','151','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3818','128','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3819','134','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3820','158','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3821','159','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3822','130','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3823','131','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3824','135','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3825','136','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3826','137','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3827','152','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3828','153','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3829','154','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3830','132','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3831','138','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3832','139','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3833','140','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3834','155','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3835','156','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3836','157','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3837','133','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3838','160','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3839','161','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3840','141','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3841','142','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3842','143','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3843','144','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3844','171','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3846','149','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3847','172','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('3848','145','1');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922291826689','105','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922308603906','106','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922316992514','107','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922321186818','108','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922329575426','109','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922337964034','110','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922342158337','111','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922350546946','112','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922354741249','113','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922363129858','165','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922371518465','166','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922375712770','167','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922384101377','114','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922388295681','115','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922396684289','116','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922405072897','117','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922413461505','118','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922417655810','162','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922426044418','163','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922430238722','164','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922430238723','119','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922447015937','120','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922451210242','121','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922459598850','122','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922463793154','150','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922472181762','151','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922476376065','128','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922480570369','134','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922488958977','158','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922497347586','159','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922501541890','130','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922501541891','131','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922518319106','135','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922526707713','136','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922530902017','137','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922535096321','152','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922543484930','153','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922547679233','154','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922556067841','132','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922560262146','138','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922564456450','139','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922568650754','140','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922577039361','155','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922577039362','156','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922577039363','157','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922602205185','133','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922610593794','160','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922610593795','161','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922618982402','141','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922627371009','142','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922631565313','143','5');
insert into [dbo].[sys_relation]([RELATION_ID],[MENU_ID],[ROLE_ID]) values('1071348922639953922','144','5');
GO

/****** 角色表 ******/
CREATE TABLE [dbo].[sys_role]
(
	[ROLE_ID] bigint NOT NULL ,
	[PID] bigint NULL ,
	[NAME] nvarchar(255) NULL ,
	[DESCRIPTION] nvarchar(255) NULL ,
	[SORT] int NULL ,
	[VERSION] int NULL ,
	[CREATE_TIME] datetime2(7) NULL ,
	[UPDATE_TIME] datetime2(7) NULL ,
	[CREATE_USER] bigint NULL ,
	[UPDATE_USER] bigint NULL
)
ON [PRIMARY];
GO


EXECUTE sp_addextendedproperty  N'MS_Description', N'角色表', N'SCHEMA', N'dbo', N'TABLE', N'sys_role', NULL, NULL;
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'主键id', N'SCHEMA', N'dbo', N'TABLE', N'sys_role', 'COLUMN', N'ROLE_ID';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'父角色id', N'SCHEMA', N'dbo', N'TABLE', N'sys_role', 'COLUMN', N'PID';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'角色名称', N'SCHEMA', N'dbo', N'TABLE', N'sys_role', 'COLUMN', N'NAME';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'提示', N'SCHEMA', N'dbo', N'TABLE', N'sys_role', 'COLUMN', N'DESCRIPTION';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'序号', N'SCHEMA', N'dbo', N'TABLE', N'sys_role', 'COLUMN', N'SORT';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'乐观锁', N'SCHEMA', N'dbo', N'TABLE', N'sys_role', 'COLUMN', N'VERSION';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'创建时间', N'SCHEMA', N'dbo', N'TABLE', N'sys_role', 'COLUMN', N'CREATE_TIME';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'修改时间', N'SCHEMA', N'dbo', N'TABLE', N'sys_role', 'COLUMN', N'UPDATE_TIME';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'创建用户', N'SCHEMA', N'dbo', N'TABLE', N'sys_role', 'COLUMN', N'CREATE_USER';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'修改用户', N'SCHEMA', N'dbo', N'TABLE', N'sys_role', 'COLUMN', N'UPDATE_USER';
GO

ALTER TABLE [dbo].[sys_role] ADD CONSTRAINT [PK_sys_role] PRIMARY KEY CLUSTERED
(
[ROLE_ID]
)
WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON);
GO

insert into [dbo].[sys_role]([ROLE_ID],[PID],[NAME],[DESCRIPTION],[SORT],[VERSION],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('1','0','超级管理员','administrator','1','1',null,null,null,null);
insert into [dbo].[sys_role]([ROLE_ID],[PID],[NAME],[DESCRIPTION],[SORT],[VERSION],[CREATE_TIME],[UPDATE_TIME],[CREATE_USER],[UPDATE_USER]) values('5','1','临时','temp','2',null,null,null,null,null);
GO

/****** 用户表 ******/
CREATE TABLE [dbo].[sys_user]
(
	[USER_ID] bigint NOT NULL ,
	[AVATAR] nvarchar(255) NULL ,
	[ACCOUNT] nvarchar(45) NULL ,
	[PASSWORD] nvarchar(45) NULL ,
	[SALT] nvarchar(45) NULL ,
	[NAME] nvarchar(45) NULL ,
	[BIRTHDAY] datetime2(7) NULL ,
	[SEX] nvarchar(32) NULL ,
	[EMAIL] nvarchar(45) NULL ,
	[PHONE] nvarchar(45) NULL ,
	[ROLE_ID] nvarchar(255) NULL ,
	[DEPT_ID] bigint NULL ,
	[STATUS] nvarchar(32) NULL ,
	[CREATE_TIME] datetime2(7) NULL ,
	[CREATE_USER] bigint NULL ,
	[UPDATE_TIME] datetime2(7) NULL ,
	[UPDATE_USER] bigint NULL ,
	[VERSION] int NULL
)
ON [PRIMARY];
GO


EXECUTE sp_addextendedproperty  N'MS_Description', N'管理员表', N'SCHEMA', N'dbo', N'TABLE', N'sys_user', NULL, NULL;
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'主键id', N'SCHEMA', N'dbo', N'TABLE', N'sys_user', 'COLUMN', N'USER_ID';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'头像', N'SCHEMA', N'dbo', N'TABLE', N'sys_user', 'COLUMN', N'AVATAR';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'账号', N'SCHEMA', N'dbo', N'TABLE', N'sys_user', 'COLUMN', N'ACCOUNT';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'密码', N'SCHEMA', N'dbo', N'TABLE', N'sys_user', 'COLUMN', N'PASSWORD';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'md5密码盐', N'SCHEMA', N'dbo', N'TABLE', N'sys_user', 'COLUMN', N'SALT';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'名字', N'SCHEMA', N'dbo', N'TABLE', N'sys_user', 'COLUMN', N'NAME';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'生日', N'SCHEMA', N'dbo', N'TABLE', N'sys_user', 'COLUMN', N'BIRTHDAY';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'性别(字典)', N'SCHEMA', N'dbo', N'TABLE', N'sys_user', 'COLUMN', N'SEX';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'电子邮件', N'SCHEMA', N'dbo', N'TABLE', N'sys_user', 'COLUMN', N'EMAIL';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'电话', N'SCHEMA', N'dbo', N'TABLE', N'sys_user', 'COLUMN', N'PHONE';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'角色id(多个逗号隔开)', N'SCHEMA', N'dbo', N'TABLE', N'sys_user', 'COLUMN', N'ROLE_ID';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'部门id(多个逗号隔开)', N'SCHEMA', N'dbo', N'TABLE', N'sys_user', 'COLUMN', N'DEPT_ID';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'状态(字典)', N'SCHEMA', N'dbo', N'TABLE', N'sys_user', 'COLUMN', N'STATUS';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'创建时间', N'SCHEMA', N'dbo', N'TABLE', N'sys_user', 'COLUMN', N'CREATE_TIME';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'创建人', N'SCHEMA', N'dbo', N'TABLE', N'sys_user', 'COLUMN', N'CREATE_USER';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'更新时间', N'SCHEMA', N'dbo', N'TABLE', N'sys_user', 'COLUMN', N'UPDATE_TIME';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'更新人', N'SCHEMA', N'dbo', N'TABLE', N'sys_user', 'COLUMN', N'UPDATE_USER';
GO

EXECUTE sp_addextendedproperty  N'MS_Description', N'乐观锁', N'SCHEMA', N'dbo', N'TABLE', N'sys_user', 'COLUMN', N'VERSION';
GO

ALTER TABLE [dbo].[sys_user] ADD CONSTRAINT [PK_sys_user] PRIMARY KEY CLUSTERED
(
[USER_ID]
)
WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON);
GO


insert into [dbo].[sys_user]([USER_ID],[AVATAR],[ACCOUNT],[PASSWORD],[SALT],[NAME],[BIRTHDAY],[SEX],[EMAIL],[PHONE],[ROLE_ID],[DEPT_ID],[STATUS],[CREATE_TIME],[CREATE_USER],[UPDATE_TIME],[UPDATE_USER],[VERSION]) values('1','1','admin','1d6b1208c7d151d335790276a18e3d99','q6taw','stylefeng','2018-11-16 00:00:00.0000000','M','sn93@qq.com','18200000000','1','27','ENABLE','2016-01-29 08:49:53.0000000',null,'2018-12-28 22:52:24.0000000','24','25');
GO








