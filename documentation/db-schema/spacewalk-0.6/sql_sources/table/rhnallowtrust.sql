-- created by Oraschemadoc Mon Aug 31 10:53:18 2009
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "MIM1"."RHNALLOWTRUST" 
   (	"ORG_ID" NUMBER NOT NULL ENABLE, 
	"CHANNEL_FLAG" CHAR(1) DEFAULT ('N') NOT NULL ENABLE, 
	"MIGRATION_FLAG" CHAR(1) DEFAULT ('N') NOT NULL ENABLE, 
	"CREATED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	"MODIFIED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_ALLOW_TRUST_CHANNELFLG_CK" CHECK (channel_flag in ( 'N' , 'Y' )) ENABLE, 
	 CONSTRAINT "RHN_ALLOW_TRUST_MIGRFLG_CK" CHECK (migration_flag in ( 'N' , 'Y' )) ENABLE, 
	 CONSTRAINT "RHN_ALLOW_TRUST_OID_FK" FOREIGN KEY ("ORG_ID")
	  REFERENCES "MIM1"."WEB_CUSTOMER" ("ID") ON DELETE CASCADE ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE ROW MOVEMENT 
 
/
