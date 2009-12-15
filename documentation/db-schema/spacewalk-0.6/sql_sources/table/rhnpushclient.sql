-- created by Oraschemadoc Mon Aug 31 10:53:34 2009
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "MIM1"."RHNPUSHCLIENT" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"NAME" VARCHAR2(64) NOT NULL ENABLE, 
	"SERVER_ID" NUMBER NOT NULL ENABLE, 
	"JABBER_ID" VARCHAR2(128), 
	"SHARED_KEY" VARCHAR2(64) NOT NULL ENABLE, 
	"STATE_ID" NUMBER NOT NULL ENABLE, 
	"NEXT_ACTION_TIME" DATE, 
	"LAST_MESSAGE_TIME" DATE, 
	"LAST_PING_TIME" DATE, 
	"CREATED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	"MODIFIED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_PCLIENT_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE, 
	 FOREIGN KEY ("STATE_ID")
	  REFERENCES "MIM1"."RHNPUSHCLIENTSTATE" ("ID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE ROW MOVEMENT 
 
/
