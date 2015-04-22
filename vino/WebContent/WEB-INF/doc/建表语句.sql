-- Create table
create table TB_PROPERTY_INFO
(
  ID           VARCHAR2(64),
  NAME         VARCHAR2(64),
  SECTION      VARCHAR2(64),
  REGIONAL     VARCHAR2(64),
  MEASURE_AREA VARCHAR2(64),
  RENT         NUMBER,
  EENT_TYPE    VARCHAR2(64),
  CJR          VARCHAR2(64),
  CJSJ         DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64
    next 64
    minextents 1
    maxextents unlimited
    pctincrease 0
  );
-- Add comments to the columns 
comment on column TB_PROPERTY_INFO.NAME
  is '楼盘名称';
comment on column TB_PROPERTY_INFO.SECTION
  is '地段';
comment on column TB_PROPERTY_INFO.REGIONAL
  is '区域';
comment on column TB_PROPERTY_INFO.MEASURE_AREA
  is '面积';
comment on column TB_PROPERTY_INFO.RENT
  is '租金';
comment on column TB_PROPERTY_INFO.EENT_TYPE
  is '金额类型';
comment on column TB_PROPERTY_INFO.CJR
  is '创建人';
comment on column TB_PROPERTY_INFO.CJSJ
  is '创建时间';


-- Create table
create table TB_COMPANY_INFO
(
  ID           VARCHAR2(64),
  PROPERTY_ID  VARCHAR2(64),
  COMPANY_NAME VARCHAR2(64),
  SCALE        VARCHAR2(64),
  NATURE       VARCHAR2(64),
  INDUSTRY     VARCHAR2(64),
  INTENTION    NUMBER,
  CJR          VARCHAR2(64),
  CJSJ         DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64
    next 8
    minextents 1
    maxextents unlimited
    pctincrease 0
  );
-- Add comments to the columns 
comment on column TB_COMPANY_INFO.PROPERTY_ID
  is '楼盘ID';
comment on column TB_COMPANY_INFO.COMPANY_NAME
  is '公司名称';
comment on column TB_COMPANY_INFO.SCALE
  is '公司规模';
comment on column TB_COMPANY_INFO.NATURE
  is '公司性质';
comment on column TB_COMPANY_INFO.INDUSTRY
  is '公司行业';
comment on column TB_COMPANY_INFO.INTENTION
  is '意向度';
comment on column TB_COMPANY_INFO.CJR
  is '创建人';
comment on column TB_COMPANY_INFO.CJSJ
  is '创建时间';


-- Create table
create table TB_RECRUIT_INFO
(
  ID           VARCHAR2(64),
  COMPANY_ID   VARCHAR2(64),
  INFORMATION  VARCHAR2(64),
  POSITION     VARCHAR2(64),
  NUM          NUMBER,
  RELEASE_DATE DATE,
  CJR          VARCHAR2(64),
  CJSJ         DATE
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64
    next 64
    minextents 1
    maxextents unlimited
    pctincrease 0
  );
-- Add comments to the columns 
comment on column TB_RECRUIT_INFO.COMPANY_ID
  is '公司ID';
comment on column TB_RECRUIT_INFO.INFORMATION
  is '招聘信息';
comment on column TB_RECRUIT_INFO.POSITION
  is '招聘职位';
comment on column TB_RECRUIT_INFO.NUM
  is '招聘人数';
comment on column TB_RECRUIT_INFO.RELEASE_DATE
  is '发布日期';
comment on column TB_RECRUIT_INFO.CJR
  is '创建人';
comment on column TB_RECRUIT_INFO.CJSJ
  is '创建时间';
