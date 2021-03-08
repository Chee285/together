--------------------------------------------------------
--  파일이 생성됨 - 월요일-3월-08-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PHOTO_SHOOT
--------------------------------------------------------

  CREATE TABLE "YOUNGYOUNG"."PHOTO_SHOOT" 
   (	"PHO_NO" NUMBER(4,0), 
	"MEM_ID" VARCHAR2(20 BYTE), 
	"TOG_NO" VARCHAR2(8 BYTE), 
	"PHO_GOOD" VARCHAR2(300 BYTE), 
	"PHO_IMPRESSION" VARCHAR2(500 BYTE), 
	"PHO_LIKE_CNT" NUMBER(4,0) DEFAULT 0, 
	"PHO_STATUS" NUMBER(1,0) DEFAULT 1, 
	"PHO_UPLOAD_DATE" VARCHAR2(11 BYTE) DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into YOUNGYOUNG.PHOTO_SHOOT
SET DEFINE OFF;
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (48,'sooin','300-2','photo_img/48.jpg','한 시간 공부하는 게 보통 일이 아니네요..! 그래도 많이 배웠습니다 감사합니다',0,1,'2021-02-04');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (49,'sooin','300-2','photo_img/49.jpg','초심으로 돌아가 펜과 종이를 잡았습니다! 한 시간 뒤에 봬요',0,1,'2021-02-06');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (50,'sooin','300-2','photo_img/50.jpg','알찬 하루를 보낸 거 같아 기분이 좋습니다.',0,1,'2021-02-09');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (51,'seongbong','300-2','photo_img/51.jpg','요즘 앉아만 있었더니 살이 찌는 기분이었는데 만보를 걸으니까 몸이 한층 가벼운 기분이네요!',0,1,'2021-02-03');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (52,'seongbong','300-2','photo_img/52.jpg','오늘도 열심히 공부하겠습니다!',0,1,'2021-02-06');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (1,'youngyoung','200-1','photo_img/1.jpg','요즘 앉아만 있었더니 살이 찌는 기분이었는데 만보를 걸으니까 몸이 한층 가벼운 기분이네요!',0,1,'2020-10-12');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (2,'youngyoung','200-1','photo_img/2.jpg','오늘도 열심히 공부하겠습니다!',0,1,'2020-10-15');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (3,'youngyoung','200-1','photo_img/3.jpg','한 시간 공부하는 게 보통 일이 아니네요..! 그래도 많이 배웠습니다 감사합니다',0,1,'2020-10-16');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (4,'youngyoung','200-1','photo_img/4.jpg','초심으로 돌아가 펜과 종이를 잡았습니다! 한 시간 뒤에 봬요',0,1,'2020-10-20');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (5,'youngyoung','200-1','photo_img/5.jpg','알찬 하루를 보낸 거 같아 기분이 좋습니다.',0,1,'2020-10-20');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (6,'youngyoung','200-1','photo_img/6.jpg','요즘 앉아만 있었더니 살이 찌는 기분이었는데 만보를 걸으니까 몸이 한층 가벼운 기분이네요!',0,1,'2020-10-21');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (7,'youngyoung','200-1','photo_img/7.jpg','오늘도 열심히 공부하겠습니다!',0,1,'2020-10-22');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (8,'youngyoung','200-1','photo_img/8.jpg','한 시간 공부하는 게 보통 일이 아니네요..! 그래도 많이 배웠습니다 감사합니다',0,1,'2020-10-23');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (9,'yeman','200-1','photo_img/9.jpg','초심으로 돌아가 펜과 종이를 잡았습니다! 한 시간 뒤에 봬요',0,1,'2020-10-12');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (10,'yeman','200-1','photo_img/10.jpg','알찬 하루를 보낸 거 같아 기분이 좋습니다.',0,1,'2020-10-14');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (11,'yeman','200-1','photo_img/11.jpg','요즘 앉아만 있었더니 살이 찌는 기분이었는데 만보를 걸으니까 몸이 한층 가벼운 기분이네요!',0,1,'2020-10-14');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (12,'yeman','200-1','photo_img/12.jpg','오늘도 열심히 공부하겠습니다!',0,1,'2020-10-16');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (13,'yeman','200-1','photo_img/13.jpg','한 시간 공부하는 게 보통 일이 아니네요..! 그래도 많이 배웠습니다 감사합니다',0,1,'2020-10-17');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (14,'yeman','200-1','photo_img/14.jpg','초심으로 돌아가 펜과 종이를 잡았습니다! 한 시간 뒤에 봬요',0,1,'2020-10-20');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (15,'yeman','200-1','photo_img/15.jpg','알찬 하루를 보낸 거 같아 기분이 좋습니다.',0,1,'2020-10-21');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (16,'yeman','200-1','photo_img/16.jpg','요즘 앉아만 있었더니 살이 찌는 기분이었는데 만보를 걸으니까 몸이 한층 가벼운 기분이네요!',0,1,'2020-10-22');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (17,'aran','500-1','photo_img/17.jpg','오늘도 열심히 공부하겠습니다!',0,1,'2021-03-02');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (18,'aran','500-1','photo_img/18.jpg','한 시간 공부하는 게 보통 일이 아니네요..! 그래도 많이 배웠습니다 감사합니다',0,1,'2021-03-03');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (19,'aran','500-1','photo_img/19.jpg','초심으로 돌아가 펜과 종이를 잡았습니다! 한 시간 뒤에 봬요',0,1,'2021-03-04');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (20,'sooin','500-1','photo_img/20.jpg','알찬 하루를 보낸 거 같아 기분이 좋습니다.',0,1,'2021-03-02');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (21,'sooin','500-1','photo_img/21.jpg','요즘 앉아만 있었더니 살이 찌는 기분이었는데 만보를 걸으니까 몸이 한층 가벼운 기분이네요!',0,1,'2021-03-03');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (22,'sooin','500-1','photo_img/22.jpg','오늘도 열심히 공부하겠습니다!',0,1,'2021-03-04');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (23,'sooin','300-1','photo_img/23.jpg','한 시간 공부하는 게 보통 일이 아니네요..! 그래도 많이 배웠습니다 감사합니다',0,1,'2020-11-31');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (24,'jihoon','300-1','photo_img/24.jpg','초심으로 돌아가 펜과 종이를 잡았습니다! 한 시간 뒤에 봬요',0,1,'2020-12-01');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (25,'jonghyeok','300-1','photo_img/25.jpg','알찬 하루를 보낸 거 같아 기분이 좋습니다.',0,1,'2020-12-01');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (26,'heonmyeong','300-1','photo_img/26.jpg','요즘 앉아만 있었더니 살이 찌는 기분이었는데 만보를 걸으니까 몸이 한층 가벼운 기분이네요!',0,1,'2020-12-02');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (27,'sooin','300-1','photo_img/27.jpg','오늘도 열심히 공부하겠습니다!',0,1,'2020-12-02');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (28,'jihoon','300-1','photo_img/28.jpg','한 시간 공부하는 게 보통 일이 아니네요..! 그래도 많이 배웠습니다 감사합니다',0,1,'2020-12-02');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (29,'jonghyeok','300-1','photo_img/29.jpg','초심으로 돌아가 펜과 종이를 잡았습니다! 한 시간 뒤에 봬요',0,1,'2020-12-04');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (30,'heonmyeong','300-1','photo_img/30.jpg','알찬 하루를 보낸 거 같아 기분이 좋습니다.',0,1,'2020-12-05');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (31,'sooin','300-1','photo_img/31.jpg','요즘 앉아만 있었더니 살이 찌는 기분이었는데 만보를 걸으니까 몸이 한층 가벼운 기분이네요!',0,1,'2020-12-03');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (32,'jihoon','300-1','photo_img/32.jpg','오늘도 열심히 공부하겠습니다!',0,1,'2020-12-05');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (33,'jonghyeok','300-1','photo_img/33.jpg','한 시간 공부하는 게 보통 일이 아니네요..! 그래도 많이 배웠습니다 감사합니다',0,1,'2020-12-08');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (34,'heonmyeong','300-1','photo_img/34.jpg','초심으로 돌아가 펜과 종이를 잡았습니다! 한 시간 뒤에 봬요',0,1,'2020-12-07');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (35,'sooin','300-1','photo_img/35.jpg','알찬 하루를 보낸 거 같아 기분이 좋습니다.',0,1,'2020-12-08');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (36,'jihoon','300-1','photo_img/36.jpg','요즘 앉아만 있었더니 살이 찌는 기분이었는데 만보를 걸으니까 몸이 한층 가벼운 기분이네요!',0,1,'2020-12-09');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (37,'jonghyeok','300-1','photo_img/37.jpg','오늘도 열심히 공부하겠습니다!',0,1,'2020-12-08');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (38,'heonmyeong','300-1','photo_img/38.jpg','한 시간 공부하는 게 보통 일이 아니네요..! 그래도 많이 배웠습니다 감사합니다',0,1,'2020-12-09');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (39,'sooin','300-1','photo_img/39.jpg','초심으로 돌아가 펜과 종이를 잡았습니다! 한 시간 뒤에 봬요',0,1,'2020-12-10');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (40,'jihoon','300-1','photo_img/40.jpg','알찬 하루를 보낸 거 같아 기분이 좋습니다.',0,1,'2020-12-10');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (41,'jonghyeok','300-1','photo_img/41.jpg','요즘 앉아만 있었더니 살이 찌는 기분이었는데 만보를 걸으니까 몸이 한층 가벼운 기분이네요!',0,1,'2020-12-11');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (42,'heonmyeong','300-1','photo_img/42.jpg','오늘도 열심히 공부하겠습니다!',0,1,'2020-12-12');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (43,'sooin','300-1','photo_img/43.jpg','한 시간 공부하는 게 보통 일이 아니네요..! 그래도 많이 배웠습니다 감사합니다',0,1,'2020-12-12');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (44,'jihoon','300-1','photo_img/44.jpg','초심으로 돌아가 펜과 종이를 잡았습니다! 한 시간 뒤에 봬요',0,1,'2020-12-13');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (45,'jonghyeok','300-1','photo_img/45.jpg','알찬 하루를 보낸 거 같아 기분이 좋습니다.',0,1,'2020-12-13');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (46,'heonmyeong','300-1','photo_img/46.jpg','요즘 앉아만 있었더니 살이 찌는 기분이었는데 만보를 걸으니까 몸이 한층 가벼운 기분이네요!',0,1,'2020-12-13');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (47,'sooin','300-2','photo_img/47.jpg','오늘도 열심히 공부하겠습니다!',0,1,'2021-02-01');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (53,'seongbong','300-2','photo_img/53.jpg','한 시간 공부하는 게 보통 일이 아니네요..! 그래도 많이 배웠습니다 감사합니다',0,1,'2021-02-09');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (54,'soyoung','300-2','photo_img/54.jpg','초심으로 돌아가 펜과 종이를 잡았습니다! 한 시간 뒤에 봬요',0,1,'2021-02-04');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (55,'soyoung','300-2','photo_img/55.jpg','알찬 하루를 보낸 거 같아 기분이 좋습니다.',0,1,'2021-02-05');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (56,'soyoung','300-2','photo_img/56.jpg','요즘 앉아만 있었더니 살이 찌는 기분이었는데 만보를 걸으니까 몸이 한층 가벼운 기분이네요!',0,1,'2021-02-09');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (57,'soyoung','300-2','photo_img/57.jpg','오늘도 열심히 공부하겠습니다!',0,1,'2021-02-11');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (58,'sooin','300-3','photo_img/58.jpg','한 시간 공부하는 게 보통 일이 아니네요..! 그래도 많이 배웠습니다 감사합니다',0,1,'2021-02-26');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (59,'sooin','300-3','photo_img/59.jpg','초심으로 돌아가 펜과 종이를 잡았습니다! 한 시간 뒤에 봬요',0,1,'2021-03-02');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (60,'sumin','300-3','photo_img/60.jpg','알찬 하루를 보낸 거 같아 기분이 좋습니다.',0,1,'2021-03-02');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (61,'youngyoung','300-3','photo_img/61.jpg','요즘 앉아만 있었더니 살이 찌는 기분이었는데 만보를 걸으니까 몸이 한층 가벼운 기분이네요!',0,1,'2021-03-01');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (62,'jihoon','300-3','photo_img/62.jpg','오늘도 열심히 공부하겠습니다!',0,1,'2021-03-02');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (63,'jihoon','300-3','photo_img/63.jpg','한 시간 공부하는 게 보통 일이 아니네요..! 그래도 많이 배웠습니다 감사합니다',0,1,'2021-03-03');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (64,'jonghyeok','700-1','photo_img/64.jpg','초심으로 돌아가 펜과 종이를 잡았습니다! 한 시간 뒤에 봬요',0,1,'2020-09-10');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (65,'jonghyeok','700-1','photo_img/65.jpg','알찬 하루를 보낸 거 같아 기분이 좋습니다.',0,1,'2020-09-12');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (66,'jonghyeok','700-1','photo_img/66.jpg','요즘 앉아만 있었더니 살이 찌는 기분이었는데 만보를 걸으니까 몸이 한층 가벼운 기분이네요!',0,1,'2020-09-15');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (67,'jonghyeok','700-1','photo_img/67.jpg','오늘도 열심히 공부하겠습니다!',0,1,'2020-09-16');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (68,'jonghyeok','700-1','photo_img/68.jpg','한 시간 공부하는 게 보통 일이 아니네요..! 그래도 많이 배웠습니다 감사합니다',0,1,'2020-09-18');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (69,'jonghyeok','700-1','photo_img/69.jpg','초심으로 돌아가 펜과 종이를 잡았습니다! 한 시간 뒤에 봬요',0,1,'2020-09-20');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (70,'jonghyeok','700-1','photo_img/70.jpg','알찬 하루를 보낸 거 같아 기분이 좋습니다.',0,1,'2020-09-22');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (71,'jonghyeok','700-1','photo_img/71.jpg','요즘 앉아만 있었더니 살이 찌는 기분이었는데 만보를 걸으니까 몸이 한층 가벼운 기분이네요!',0,1,'2020-09-23');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (72,'sooin','700-1','photo_img/72.jpg','오늘도 열심히 공부하겠습니다!',0,1,'2020-09-12');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (73,'sooin','700-1','photo_img/73.jpg','한 시간 공부하는 게 보통 일이 아니네요..! 그래도 많이 배웠습니다 감사합니다',0,1,'2020-09-13');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (74,'sooin','700-1','photo_img/74.jpg','초심으로 돌아가 펜과 종이를 잡았습니다! 한 시간 뒤에 봬요',0,1,'2020-09-16');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (75,'sooin','700-1','photo_img/75.jpg','알찬 하루를 보낸 거 같아 기분이 좋습니다.',0,1,'2020-09-18');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (76,'sooin','700-1','photo_img/76.jpg','요즘 앉아만 있었더니 살이 찌는 기분이었는데 만보를 걸으니까 몸이 한층 가벼운 기분이네요!',0,1,'2020-09-19');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (77,'sooin','700-1','photo_img/77.jpg','오늘도 열심히 공부하겠습니다!',0,1,'2020-09-21');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (78,'sooin','700-1','photo_img/78.jpg','한 시간 공부하는 게 보통 일이 아니네요..! 그래도 많이 배웠습니다 감사합니다',0,1,'2020-09-23');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (79,'sooin','700-1','photo_img/79.jpg','초심으로 돌아가 펜과 종이를 잡았습니다! 한 시간 뒤에 봬요',0,1,'2020-09-24');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (80,'sumin','700-1','photo_img/80.jpg','알찬 하루를 보낸 거 같아 기분이 좋습니다.',0,1,'2020-09-11');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (81,'sumin','700-1','photo_img/81.jpg','요즘 앉아만 있었더니 살이 찌는 기분이었는데 만보를 걸으니까 몸이 한층 가벼운 기분이네요!',0,1,'2020-09-12');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (82,'sumin','700-1','photo_img/82.jpg','오늘도 열심히 공부하겠습니다!',0,1,'2020-09-13');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (83,'sumin','700-1','photo_img/83.jpg','한 시간 공부하는 게 보통 일이 아니네요..! 그래도 많이 배웠습니다 감사합니다',0,1,'2020-09-16');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (84,'sumin','700-1','photo_img/84.jpg','초심으로 돌아가 펜과 종이를 잡았습니다! 한 시간 뒤에 봬요',0,1,'2020-09-18');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (85,'sumin','700-1','photo_img/85.jpg','알찬 하루를 보낸 거 같아 기분이 좋습니다.',0,1,'2020-09-19');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (86,'sumin','700-1','photo_img/86.jpg','요즘 앉아만 있었더니 살이 찌는 기분이었는데 만보를 걸으니까 몸이 한층 가벼운 기분이네요!',0,1,'2020-09-22');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (87,'jihoon','700-1','photo_img/87.jpg','오늘도 열심히 공부하겠습니다!',0,1,'2020-09-12');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (88,'jihoon','700-1','photo_img/88.jpg','한 시간 공부하는 게 보통 일이 아니네요..! 그래도 많이 배웠습니다 감사합니다',0,1,'2020-09-16');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (89,'jihoon','700-1','photo_img/89.jpg','초심으로 돌아가 펜과 종이를 잡았습니다! 한 시간 뒤에 봬요',0,1,'2020-09-18');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (90,'jihoon','700-1','photo_img/90.jpg','알찬 하루를 보낸 거 같아 기분이 좋습니다.',0,1,'2020-09-21');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (91,'jihoon','700-1','photo_img/91.jpg','요즘 앉아만 있었더니 살이 찌는 기분이었는데 만보를 걸으니까 몸이 한층 가벼운 기분이네요!',0,1,'2020-09-22');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (92,'jihoon','700-1','photo_img/92.jpg','오늘도 열심히 공부하겠습니다!',0,1,'2020-09-23');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (93,'jihoon','700-1','photo_img/93.jpg','한 시간 공부하는 게 보통 일이 아니네요..! 그래도 많이 배웠습니다 감사합니다',0,1,'2020-09-23');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (94,'jihoon','700-1','photo_img/94.jpg','초심으로 돌아가 펜과 종이를 잡았습니다! 한 시간 뒤에 봬요',0,1,'2020-09-24');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (95,'jonghyeok','700-2','photo_img/95.jpg','알찬 하루를 보낸 거 같아 기분이 좋습니다.',0,1,'2020-11-15');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (96,'jonghyeok','700-2','photo_img/96.jpg','요즘 앉아만 있었더니 살이 찌는 기분이었는데 만보를 걸으니까 몸이 한층 가벼운 기분이네요!',0,1,'2020-11-16');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (97,'jonghyeok','700-2','photo_img/97.jpg','오늘도 열심히 공부하겠습니다!',0,1,'2020-11-18');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (98,'jonghyeok','700-2','photo_img/98.jpg','한 시간 공부하는 게 보통 일이 아니네요..! 그래도 많이 배웠습니다 감사합니다',0,1,'2020-11-20');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (99,'jonghyeok','700-2','photo_img/99.jpg','초심으로 돌아가 펜과 종이를 잡았습니다! 한 시간 뒤에 봬요',0,1,'2020-11-21');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (100,'jonghyeok','700-2','photo_img/100.jpg','알찬 하루를 보낸 거 같아 기분이 좋습니다.',0,1,'2020-11-22');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (101,'jonghyeok','700-2','photo_img/101.jpg','요즘 앉아만 있었더니 살이 찌는 기분이었는데 만보를 걸으니까 몸이 한층 가벼운 기분이네요!',0,1,'2020-11-24');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (102,'jonghyeok','700-2','photo_img/102.jpg','오늘도 열심히 공부하겠습니다!',0,1,'2020-11-28');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (103,'jonghyeok','700-3','photo_img/103.jpg','한 시간 공부하는 게 보통 일이 아니네요..! 그래도 많이 배웠습니다 감사합니다',0,1,'2020-12-21');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (104,'jonghyeok','700-3','photo_img/104.jpg','초심으로 돌아가 펜과 종이를 잡았습니다! 한 시간 뒤에 봬요',0,1,'2020-12-22');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (105,'jonghyeok','700-3','photo_img/105.jpg','알찬 하루를 보낸 거 같아 기분이 좋습니다.',0,1,'2020-12-23');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (106,'jonghyeok','700-3','photo_img/106.jpg','요즘 앉아만 있었더니 살이 찌는 기분이었는데 만보를 걸으니까 몸이 한층 가벼운 기분이네요!',0,1,'2020-12-25');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (107,'jonghyeok','700-3','photo_img/107.jpg','오늘도 열심히 공부하겠습니다!',0,1,'2020-12-26');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (108,'jonghyeok','700-3','photo_img/108.jpg','한 시간 공부하는 게 보통 일이 아니네요..! 그래도 많이 배웠습니다 감사합니다',0,1,'2020-12-28');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (109,'jonghyeok','700-3','photo_img/109.jpg','초심으로 돌아가 펜과 종이를 잡았습니다! 한 시간 뒤에 봬요',0,1,'2020-12-30');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (110,'jonghyeok','700-3','photo_img/110.jpg','알찬 하루를 보낸 거 같아 기분이 좋습니다.',0,1,'2020-12-31');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (111,'youngyoung','700-3','photo_img/111.jpg','요즘 앉아만 있었더니 살이 찌는 기분이었는데 만보를 걸으니까 몸이 한층 가벼운 기분이네요!',0,1,'2020-12-21');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (112,'youngyoung','700-3','photo_img/112.jpg','오늘도 열심히 공부하겠습니다!',0,1,'2020-12-23');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (113,'youngyoung','700-3','photo_img/113.jpg','한 시간 공부하는 게 보통 일이 아니네요..! 그래도 많이 배웠습니다 감사합니다',0,1,'2020-12-25');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (114,'youngyoung','700-3','photo_img/114.jpg','초심으로 돌아가 펜과 종이를 잡았습니다! 한 시간 뒤에 봬요',0,1,'2020-12-28');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (115,'youngyoung','700-3','photo_img/115.jpg','알찬 하루를 보낸 거 같아 기분이 좋습니다.',0,1,'2020-12-30');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (116,'youngyoung','700-3','photo_img/116.jpg','요즘 앉아만 있었더니 살이 찌는 기분이었는데 만보를 걸으니까 몸이 한층 가벼운 기분이네요!',0,1,'2021-01-01');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (117,'youngyoung','700-3','photo_img/117.jpg','오늘도 열심히 공부하겠습니다!',0,1,'2021-01-02');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (118,'youngyoung','700-3','photo_img/118.jpg','한 시간 공부하는 게 보통 일이 아니네요..! 그래도 많이 배웠습니다 감사합니다',0,1,'2021-01-04');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (119,'soyoung','700-3','photo_img/119.jpg','초심으로 돌아가 펜과 종이를 잡았습니다! 한 시간 뒤에 봬요',0,1,'2020-12-23');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (120,'soyoung','700-3','photo_img/120.jpg','알찬 하루를 보낸 거 같아 기분이 좋습니다.',0,1,'2020-12-25');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (121,'soyoung','700-3','photo_img/121.jpg','요즘 앉아만 있었더니 살이 찌는 기분이었는데 만보를 걸으니까 몸이 한층 가벼운 기분이네요!',0,1,'2020-12-26');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (122,'soyoung','700-3','photo_img/122.jpg','오늘도 열심히 공부하겠습니다!',0,1,'2020-12-28');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (123,'soyoung','700-3','photo_img/123.jpg','한 시간 공부하는 게 보통 일이 아니네요..! 그래도 많이 배웠습니다 감사합니다',0,1,'2020-12-30');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (124,'soyoung','700-3','photo_img/124.jpg','초심으로 돌아가 펜과 종이를 잡았습니다! 한 시간 뒤에 봬요',0,1,'2020-12-31');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (125,'soyoung','700-3','photo_img/125.jpg','알찬 하루를 보낸 거 같아 기분이 좋습니다.',0,1,'2021-01-02');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (126,'soyoung','700-3','photo_img/126.jpg','요즘 앉아만 있었더니 살이 찌는 기분이었는데 만보를 걸으니까 몸이 한층 가벼운 기분이네요!',0,1,'2021-01-04');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (127,'aran','700-3','photo_img/127.jpg','오늘도 열심히 공부하겠습니다!',0,1,'2020-12-22');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (128,'aran','700-3','photo_img/128.jpg','한 시간 공부하는 게 보통 일이 아니네요..! 그래도 많이 배웠습니다 감사합니다',0,1,'2020-12-23');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (129,'aran','700-3','photo_img/129.jpg','초심으로 돌아가 펜과 종이를 잡았습니다! 한 시간 뒤에 봬요',0,1,'2020-12-24');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (130,'aran','700-3','photo_img/130.jpg','알찬 하루를 보낸 거 같아 기분이 좋습니다.',0,1,'2020-12-30');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (131,'aran','700-3','photo_img/131.jpg','요즘 앉아만 있었더니 살이 찌는 기분이었는데 만보를 걸으니까 몸이 한층 가벼운 기분이네요!',0,1,'2021-01-01');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (132,'aran','700-3','photo_img/132.jpg','오늘도 열심히 공부하겠습니다!',0,1,'2021-01-02');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (133,'aran','700-3','photo_img/133.jpg','한 시간 공부하는 게 보통 일이 아니네요..! 그래도 많이 배웠습니다 감사합니다',0,1,'2021-01-03');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (134,'aran','700-3','photo_img/134.jpg','초심으로 돌아가 펜과 종이를 잡았습니다! 한 시간 뒤에 봬요',0,1,'2021-01-04');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (135,'heonmyeong','800-1','photo_img/135.jpg','알찬 하루를 보낸 거 같아 기분이 좋습니다.',0,1,'2021-03-01');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (136,'sooin','800-1','photo_img/136.jpg','요즘 앉아만 있었더니 살이 찌는 기분이었는데 만보를 걸으니까 몸이 한층 가벼운 기분이네요!',0,1,'2021-03-03');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (137,'jihoon','1000-1','photo_img/137.jpg','오늘도 열심히 공부하겠습니다!',0,1,'2021-03-01');
Insert into YOUNGYOUNG.PHOTO_SHOOT (PHO_NO,MEM_ID,TOG_NO,PHO_GOOD,PHO_IMPRESSION,PHO_LIKE_CNT,PHO_STATUS,PHO_UPLOAD_DATE) values (138,'sooin','1000-1','photo_img/138.jpg','한 시간 공부하는 게 보통 일이 아니네요..! 그래도 많이 배웠습니다 감사합니다',0,1,'2021-03-01');
--------------------------------------------------------
--  DDL for Index PHOTO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "YOUNGYOUNG"."PHOTO_PK" ON "YOUNGYOUNG"."PHOTO_SHOOT" ("PHO_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Trigger TRG_SIGN_TOGETHER_ACHV
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "YOUNGYOUNG"."TRG_SIGN_TOGETHER_ACHV" 
after insert on photo_shoot
for each row
begin
update sign_together set sign_achv = sign_achv+1 where mem_id = :new.mem_id and tog_no = :new.tog_no;
end;
/
ALTER TRIGGER "YOUNGYOUNG"."TRG_SIGN_TOGETHER_ACHV" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_SIGN_TOGETHER_ACHV_MINUS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "YOUNGYOUNG"."TRG_SIGN_TOGETHER_ACHV_MINUS" 
after delete on photo_shoot
for each row
begin 
update sign_together set sign_achv = sign_achv-1 where mem_id = :old.mem_id and tog_no = :old.tog_no;
end;
/
ALTER TRIGGER "YOUNGYOUNG"."TRG_SIGN_TOGETHER_ACHV_MINUS" ENABLE;
--------------------------------------------------------
--  Constraints for Table PHOTO_SHOOT
--------------------------------------------------------

  ALTER TABLE "YOUNGYOUNG"."PHOTO_SHOOT" ADD CONSTRAINT "PHOTO_PK" PRIMARY KEY ("PHO_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "YOUNGYOUNG"."PHOTO_SHOOT" MODIFY ("PHO_IMPRESSION" NOT NULL ENABLE);
  ALTER TABLE "YOUNGYOUNG"."PHOTO_SHOOT" MODIFY ("PHO_GOOD" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table PHOTO_SHOOT
--------------------------------------------------------

  ALTER TABLE "YOUNGYOUNG"."PHOTO_SHOOT" ADD CONSTRAINT "PHOTO_MEMBER_FK" FOREIGN KEY ("MEM_ID")
	  REFERENCES "YOUNGYOUNG"."MEMBERS" ("MEM_ID") ENABLE;
  ALTER TABLE "YOUNGYOUNG"."PHOTO_SHOOT" ADD CONSTRAINT "PHOTO_TOGETHER_FK" FOREIGN KEY ("TOG_NO")
	  REFERENCES "YOUNGYOUNG"."TOGETHER" ("TOG_NO") ENABLE;
