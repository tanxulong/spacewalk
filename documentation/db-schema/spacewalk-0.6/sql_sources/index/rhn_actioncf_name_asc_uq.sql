-- created by Oraschemadoc Mon Aug 31 10:53:56 2009
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE UNIQUE INDEX "MIM1"."RHN_ACTIONCF_NAME_ASC_UQ" ON "MIM1"."RHNACTIONCONFIGFILENAME" ("ACTION_ID", "SERVER_ID", "CONFIG_FILE_NAME_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS" 
 
/
