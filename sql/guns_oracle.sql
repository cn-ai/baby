-- 部门
CREATE TABLE sys_dept (
  dept_id NUMBER(20, 0) NOT NULL,
  pid NUMBER(20, 0) NOT NULL,
  pids varchar2(512),
  simple_name varchar2(45),
  full_name varchar2(255),
  description varchar2(255),
  version int,
  sort int,
  create_time timestamp,
  update_time timestamp,
  create_user NUMBER(20, 0),
  update_user NUMBER(20, 0),
  PRIMARY KEY (dept_id)
);

-- 字典
CREATE TABLE sys_dict (
  dict_id NUMBER(20, 0) NOT NULL,
  dict_type_id NUMBER(20, 0) NOT NULL,
  code varchar2(50),
  name varchar2(45),
  parent_id varchar2(255),
  parent_ids varchar2(255),
  status int,
  sort int,
  description varchar2(1000),
  create_time timestamp,
  update_time timestamp,
  create_user NUMBER(20, 0),
  update_user NUMBER(20, 0),
  PRIMARY KEY (dict_id)
);

-- 字典类型
CREATE TABLE sys_dict_type (
  dict_type_id NUMBER(20, 0) NOT NULL,
  code varchar2(50),
  name varchar2(45),
  description varchar2(1000),
  system_flag varchar2(1),
  status varchar2(10),
  sort int,
  create_time timestamp,
  update_time timestamp,
  create_user NUMBER(20, 0),
  update_user NUMBER(20, 0),
  PRIMARY KEY (dict_type_id)
);

-- 文件信息
CREATE TABLE sys_file_info (
  file_id NUMBER(20, 0) NOT NULL,
  file_data varchar2(50),
  create_time timestamp,
  update_time timestamp,
  create_user NUMBER(20, 0),
  update_user NUMBER(20, 0),
  PRIMARY KEY (file_id)
);

-- 登录日志
CREATE TABLE sys_login_log (
  login_log_id NUMBER(20, 0) NOT NULL,
  log_name varchar2(255),
  user_id NUMBER(20, 0),
  create_time timestamp,
  succeed varchar2(255),
  message varchar2(1000),
  ip_address varchar2(1000),
  PRIMARY KEY (login_log_id)
);

-- 菜单
CREATE TABLE sys_menu (
  menu_id NUMBER(20, 0) NOT NULL,
  code varchar2(255),
  pcode varchar2(255),
  pcodes varchar2(255),
  name varchar2(255),
  icon varchar2(255),
  url varchar2(255),
  sort int,
  levels int,
  menu_flag varchar2(32),
  description varchar2(255),
  status varchar2(32),
  new_page_flag varchar2(32),
  open_flag varchar2(32),
  create_time timestamp,
  update_time timestamp,
  create_user NUMBER(20, 0),
  update_user NUMBER(20, 0),
  PRIMARY KEY (menu_id)
);

-- 通知表
CREATE TABLE sys_notice (
  notice_id NUMBER(20, 0) NOT NULL,
  title varchar2(255),
  content varchar2(1000),
  create_time timestamp,
  update_time timestamp,
  create_user NUMBER(20, 0),
  update_user NUMBER(20, 0),
  PRIMARY KEY (notice_id)
);

-- 操作日志
CREATE TABLE sys_operation_log (
  operation_log_id NUMBER(20, 0) NOT NULL,
  log_type varchar2(32),
  log_name varchar2(255),
  user_id NUMBER(20, 0),
  class_name varchar2(255),
  method varchar2(255),
  create_time timestamp,
  succeed varchar2(32),
  message varchar2(1000),
  PRIMARY KEY (operation_log_id)
);

-- 角色和菜单关联表
CREATE TABLE sys_relation (
  relation_id NUMBER(20, 0) NOT NULL,
  menu_id NUMBER(20, 0) NOT NULL,
  role_id NUMBER(20, 0) NOT NULL,
  PRIMARY KEY (relation_id)
);

-- 角色表
CREATE TABLE sys_role (
  role_id NUMBER(20, 0) NOT NULL,
  pid NUMBER(20, 0),
  name varchar2(255),
  description varchar2(255),
  sort int,
  version int,
  create_time timestamp,
  update_time timestamp,
  create_user NUMBER(20, 0),
  update_user NUMBER(20, 0),
  PRIMARY KEY (role_id)
);

-- 管理员表
CREATE TABLE sys_user (
  user_id NUMBER(20, 0) NOT NULL,
  avatar varchar2(255),
  account varchar2(45),
  password varchar2(45),
  salt varchar2(45),
  name varchar2(45),
  birthday timestamp,
  sex varchar2(32),
  email varchar2(45),
  phone varchar2(45),
  role_id varchar2(255),
  dept_id NUMBER(20, 0),
  status varchar2(32),
  create_time timestamp,
  update_time timestamp,
  create_user NUMBER(20, 0),
  update_user NUMBER(20, 0),
  version int,
  PRIMARY KEY (user_id)
);