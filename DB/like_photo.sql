--------------------------------------------------------
--  파일이 생성됨 - 월요일-3월-08-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table LIKE_PHOTO
--------------------------------------------------------

  CREATE TABLE "YOUNGYOUNG"."LIKE_PHOTO" 
   (	"MEM_ID" VARCHAR2(20 BYTE), 
	"PHO_NO" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into YOUNGYOUNG.LIKE_PHOTO
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Trigger TRG_PHOTO_SHOOT_LIKE_CANCEL
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "YOUNGYOUNG"."TRG_PHOTO_SHOOT_LIKE_CANCEL" 
after delete on like_photo
for each row
begin
update photo_shoot set pho_like_cnt = pho_like_cnt -1 where pho_no = :old.pho_no;
end;
/
ALTER TRIGGER "YOUNGYOUNG"."TRG_PHOTO_SHOOT_LIKE_CANCEL" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_PHOTO_SHOOT_LIKE
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "YOUNGYOUNG"."TRG_PHOTO_SHOOT_LIKE" 
after insert on like_photo
for each row
begin
update photo_shoot set pho_like_cnt = pho_like_cnt + 1 where  pho_no = :new.pho_no;
end;
/
ALTER TRIGGER "YOUNGYOUNG"."TRG_PHOTO_SHOOT_LIKE" ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LIKE_PHOTO
--------------------------------------------------------

  ALTER TABLE "YOUNGYOUNG"."LIKE_PHOTO" ADD CONSTRAINT "LIKE_MEMBER_FK" FOREIGN KEY ("MEM_ID")
	  REFERENCES "YOUNGYOUNG"."MEMBERS" ("MEM_ID") ENABLE;
  ALTER TABLE "YOUNGYOUNG"."LIKE_PHOTO" ADD CONSTRAINT "LIKE_PHOTO_FK" FOREIGN KEY ("PHO_NO")
	  REFERENCES "YOUNGYOUNG"."PHOTO_SHOOT" ("PHO_NO") ENABLE;
