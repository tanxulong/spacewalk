-- created by Oraschemadoc Mon Aug 31 10:54:29 2009
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE INDEX "MIM1"."WUSI_EMAIL_UC_IDX" ON "MIM1"."WEB_USER_SITE_INFO" ("EMAIL_UC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS" 
 
/
