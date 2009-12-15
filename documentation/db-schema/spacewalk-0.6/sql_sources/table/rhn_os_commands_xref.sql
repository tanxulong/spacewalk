-- created by Oraschemadoc Mon Aug 31 10:53:51 2009
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "MIM1"."RHN_OS_COMMANDS_XREF" 
   (	"OS_ID" NUMBER(12,0) NOT NULL ENABLE, 
	"COMMANDS_ID" NUMBER(12,0) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_OSCXR_OS_ID_COMMANDS_ID_PK" PRIMARY KEY ("OS_ID", "COMMANDS_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE, 
	 CONSTRAINT "RHN_OSCXR_CMMND_COMMANDS_ID_FK" FOREIGN KEY ("COMMANDS_ID")
	  REFERENCES "MIM1"."RHN_COMMAND" ("RECID") ENABLE, 
	 CONSTRAINT "RHN_OSCXR_OS000_OS_ID_FK" FOREIGN KEY ("OS_ID")
	  REFERENCES "MIM1"."RHN_OS" ("RECID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE ROW MOVEMENT 
 
/
