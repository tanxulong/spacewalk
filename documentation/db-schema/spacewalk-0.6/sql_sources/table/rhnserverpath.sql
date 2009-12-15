-- created by Oraschemadoc Mon Aug 31 10:53:40 2009
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "MIM1"."RHNSERVERPATH" 
   (	"SERVER_ID" NUMBER NOT NULL ENABLE, 
	"PROXY_SERVER_ID" NUMBER NOT NULL ENABLE, 
	"POSITION" NUMBER NOT NULL ENABLE, 
	"HOSTNAME" VARCHAR2(256) NOT NULL ENABLE, 
	"CREATED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	"MODIFIED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_SERVERPATH_SID_FK" FOREIGN KEY ("SERVER_ID")
	  REFERENCES "MIM1"."RHNSERVER" ("ID") ENABLE, 
	 CONSTRAINT "RHN_SERVERPATH_PSID_FK" FOREIGN KEY ("PROXY_SERVER_ID")
	  REFERENCES "MIM1"."RHNSERVER" ("ID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE ROW MOVEMENT 
 
/
