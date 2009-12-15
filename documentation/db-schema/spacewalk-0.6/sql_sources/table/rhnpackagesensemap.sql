-- created by Oraschemadoc Mon Aug 31 10:53:33 2009
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "MIM1"."RHNPACKAGESENSEMAP" 
   (	"SENSE" NUMBER NOT NULL ENABLE, 
	"SENSE_ID" NUMBER NOT NULL ENABLE, 
	 CONSTRAINT "RHN_PKG_SENSEMAP_SID_FK" FOREIGN KEY ("SENSE_ID")
	  REFERENCES "MIM1"."RHNPACKAGESENSE" ("ID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE ROW MOVEMENT 
 
/
