-- created by Oraschemadoc Mon Aug 31 10:53:44 2009
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "MIM1"."RHNUSERDEFAULTSYSTEMGROUPS" 
   (	"USER_ID" NUMBER NOT NULL ENABLE, 
	"SYSTEM_GROUP_ID" NUMBER NOT NULL ENABLE, 
	 CONSTRAINT "RHN_UDSG_UID_FK" FOREIGN KEY ("USER_ID")
	  REFERENCES "MIM1"."WEB_CONTACT" ("ID") ON DELETE CASCADE ENABLE, 
	 CONSTRAINT "RHN_UDSG_CIDFFK" FOREIGN KEY ("SYSTEM_GROUP_ID")
	  REFERENCES "MIM1"."RHNSERVERGROUP" ("ID") ON DELETE CASCADE ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE ROW MOVEMENT 
 
/
