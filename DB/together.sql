--------------------------------------------------------
--  파일이 생성됨 - 월요일-3월-08-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table TOGETHER
--------------------------------------------------------

  CREATE TABLE "YOUNGYOUNG"."TOGETHER" 
   (	"TOG_NO" VARCHAR2(8 BYTE), 
	"INFO_NO" NUMBER(4,0), 
	"TOG_VERSION" NUMBER(3,0), 
	"TOG_SUM" NUMBER(8,0) DEFAULT 0, 
	"TOG_PEOPLE" NUMBER(4,0) DEFAULT 0, 
	"TOG_START_DATE" VARCHAR2(11 BYTE), 
	"TOG_END_DATE" VARCHAR2(11 BYTE), 
	"TOG_STATUS" NUMBER(1,0) DEFAULT 1, 
	"TOG_CONFIRM_CNT" VARCHAR2(300 BYTE), 
	"TOG_SUB_CNT" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into YOUNGYOUNG.TOGETHER
SET DEFINE OFF;
Insert into YOUNGYOUNG.TOGETHER (TOG_NO,INFO_NO,TOG_VERSION,TOG_SUM,TOG_PEOPLE,TOG_START_DATE,TOG_END_DATE,TOG_STATUS,TOG_CONFIRM_CNT,TOG_SUB_CNT) values ('100-1',100,1,40000,4,'2021-03-08','2021-04-08',1,'3',12);
Insert into YOUNGYOUNG.TOGETHER (TOG_NO,INFO_NO,TOG_VERSION,TOG_SUM,TOG_PEOPLE,TOG_START_DATE,TOG_END_DATE,TOG_STATUS,TOG_CONFIRM_CNT,TOG_SUB_CNT) values ('200-1',200,1,40000,4,'2020/10/10','2020-10-24',2,'4',8);
Insert into YOUNGYOUNG.TOGETHER (TOG_NO,INFO_NO,TOG_VERSION,TOG_SUM,TOG_PEOPLE,TOG_START_DATE,TOG_END_DATE,TOG_STATUS,TOG_CONFIRM_CNT,TOG_SUB_CNT) values ('300-1',300,1,80000,8,'2020-11-31','2020-12-13',2,'3',6);
Insert into YOUNGYOUNG.TOGETHER (TOG_NO,INFO_NO,TOG_VERSION,TOG_SUM,TOG_PEOPLE,TOG_START_DATE,TOG_END_DATE,TOG_STATUS,TOG_CONFIRM_CNT,TOG_SUB_CNT) values ('300-3',300,3,80000,8,'2021-02-26','2021-03-12',2,'2',4);
Insert into YOUNGYOUNG.TOGETHER (TOG_NO,INFO_NO,TOG_VERSION,TOG_SUM,TOG_PEOPLE,TOG_START_DATE,TOG_END_DATE,TOG_STATUS,TOG_CONFIRM_CNT,TOG_SUB_CNT) values ('300-2',300,2,60000,6,'2021-02-01','2021-02-14',2,'2',4);
Insert into YOUNGYOUNG.TOGETHER (TOG_NO,INFO_NO,TOG_VERSION,TOG_SUM,TOG_PEOPLE,TOG_START_DATE,TOG_END_DATE,TOG_STATUS,TOG_CONFIRM_CNT,TOG_SUB_CNT) values ('400-1',400,1,20000,2,'2021-03-31','2021-04-21',0,'4',12);
Insert into YOUNGYOUNG.TOGETHER (TOG_NO,INFO_NO,TOG_VERSION,TOG_SUM,TOG_PEOPLE,TOG_START_DATE,TOG_END_DATE,TOG_STATUS,TOG_CONFIRM_CNT,TOG_SUB_CNT) values ('500-1',500,1,40000,4,'2021-03-01','2021-03-14',2,'5',10);
Insert into YOUNGYOUNG.TOGETHER (TOG_NO,INFO_NO,TOG_VERSION,TOG_SUM,TOG_PEOPLE,TOG_START_DATE,TOG_END_DATE,TOG_STATUS,TOG_CONFIRM_CNT,TOG_SUB_CNT) values ('600-1',600,1,60000,6,'2021-03-10','2021-03-17',1,'6',6);
Insert into YOUNGYOUNG.TOGETHER (TOG_NO,INFO_NO,TOG_VERSION,TOG_SUM,TOG_PEOPLE,TOG_START_DATE,TOG_END_DATE,TOG_STATUS,TOG_CONFIRM_CNT,TOG_SUB_CNT) values ('700-3',700,3,80000,8,'2020-12-21','2021-01-04',2,'4',8);
Insert into YOUNGYOUNG.TOGETHER (TOG_NO,INFO_NO,TOG_VERSION,TOG_SUM,TOG_PEOPLE,TOG_START_DATE,TOG_END_DATE,TOG_STATUS,TOG_CONFIRM_CNT,TOG_SUB_CNT) values ('700-2',700,2,20000,2,'2020-11-14','2020-11-28',2,'4',8);
Insert into YOUNGYOUNG.TOGETHER (TOG_NO,INFO_NO,TOG_VERSION,TOG_SUM,TOG_PEOPLE,TOG_START_DATE,TOG_END_DATE,TOG_STATUS,TOG_CONFIRM_CNT,TOG_SUB_CNT) values ('700-1',700,1,80000,8,'2020-09-10','2020-09-24',2,'4',8);
Insert into YOUNGYOUNG.TOGETHER (TOG_NO,INFO_NO,TOG_VERSION,TOG_SUM,TOG_PEOPLE,TOG_START_DATE,TOG_END_DATE,TOG_STATUS,TOG_CONFIRM_CNT,TOG_SUB_CNT) values ('800-1',800,1,40000,4,'2021-03-01','2021-03-14',2,'3',6);
Insert into YOUNGYOUNG.TOGETHER (TOG_NO,INFO_NO,TOG_VERSION,TOG_SUM,TOG_PEOPLE,TOG_START_DATE,TOG_END_DATE,TOG_STATUS,TOG_CONFIRM_CNT,TOG_SUB_CNT) values ('900-1',900,1,20000,2,'2021-03-15','2021-03-29',0,'5',10);
Insert into YOUNGYOUNG.TOGETHER (TOG_NO,INFO_NO,TOG_VERSION,TOG_SUM,TOG_PEOPLE,TOG_START_DATE,TOG_END_DATE,TOG_STATUS,TOG_CONFIRM_CNT,TOG_SUB_CNT) values ('1000-1',1000,1,40000,4,'2021-03-01','2021-03-14',2,'1',2);
Insert into YOUNGYOUNG.TOGETHER (TOG_NO,INFO_NO,TOG_VERSION,TOG_SUM,TOG_PEOPLE,TOG_START_DATE,TOG_END_DATE,TOG_STATUS,TOG_CONFIRM_CNT,TOG_SUB_CNT) values ('1100-1',1100,1,20000,2,'2021-04-01','2020-04-15',0,'5',10);
--------------------------------------------------------
--  DDL for Index TOGETHER_NO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "YOUNGYOUNG"."TOGETHER_NO_PK" ON "YOUNGYOUNG"."TOGETHER" ("TOG_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table TOGETHER
--------------------------------------------------------

  ALTER TABLE "YOUNGYOUNG"."TOGETHER" ADD CONSTRAINT "TOGETHER_NO_PK" PRIMARY KEY ("TOG_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TOGETHER
--------------------------------------------------------

  ALTER TABLE "YOUNGYOUNG"."TOGETHER" ADD CONSTRAINT "TOGETHER_INFO_NO_FK" FOREIGN KEY ("INFO_NO")
	  REFERENCES "YOUNGYOUNG"."TOGETHER_INFO" ("INFO_NO") ENABLE;
