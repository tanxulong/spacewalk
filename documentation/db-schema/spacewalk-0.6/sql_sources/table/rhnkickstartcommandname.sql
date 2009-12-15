-- created by Oraschemadoc Mon Aug 31 10:53:28 2009
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "MIM1"."RHNKICKSTARTCOMMANDNAME" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"NAME" VARCHAR2(128) NOT NULL ENABLE, 
	"USES_ARGUMENTS" CHAR(1) NOT NULL ENABLE, 
	"SORT_ORDER" NUMBER NOT NULL ENABLE, 
	"REQUIRED" CHAR(1) DEFAULT ('N') NOT NULL ENABLE, 
	 CONSTRAINT "RHN_KSCOMMANDNAME_USES_ARGS_CK" CHECK (uses_arguments in ( 'Y' , 'N' )) ENABLE, 
	 CONSTRAINT "RHN_KSCOMMANDNAME_REQRD_CK" CHECK (required in ( 'Y' , 'N' )) ENABLE, 
	 CONSTRAINT "RHN_KSCOMMANDNAME_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE, 
	 CONSTRAINT "RHN_KSCOMMANDNAME_NAME_UQ" UNIQUE ("NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE ROW MOVEMENT 
 
/
