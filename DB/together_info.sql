--------------------------------------------------------
--  파일이 생성됨 - 월요일-3월-08-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table TOGETHER_INFO
--------------------------------------------------------

  CREATE TABLE "YOUNGYOUNG"."TOGETHER_INFO" 
   (	"INFO_NO" NUMBER(4,0), 
	"CAT_NO" NUMBER(2,0), 
	"MEM_ID" VARCHAR2(20 BYTE), 
	"INFO_NAME" VARCHAR2(100 BYTE), 
	"INFO_HOW_CONFIRM" VARCHAR2(3000 BYTE), 
	"INFO_APPLICATION_FEE" NUMBER(6,0), 
	"INFO_IMG" VARCHAR2(300 BYTE), 
	"INFO_INTRO" VARCHAR2(2000 BYTE), 
	"INFO_UPLOAD_DATE" VARCHAR2(11 BYTE) DEFAULT sysdate, 
	"INFO_STATUS" NUMBER(1,0) DEFAULT 1, 
	"PHO_GOOD" VARCHAR2(400 BYTE), 
	"PHO_BAD" VARCHAR2(400 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into YOUNGYOUNG.TOGETHER_INFO
SET DEFINE OFF;
Insert into YOUNGYOUNG.TOGETHER_INFO (INFO_NO,CAT_NO,MEM_ID,INFO_NAME,INFO_HOW_CONFIRM,INFO_APPLICATION_FEE,INFO_IMG,INFO_INTRO,INFO_UPLOAD_DATE,INFO_STATUS,PHO_GOOD,PHO_BAD) values (300,3,'sooin','음악듣기','   "듣고 있는 음악의 [플레이어, 영상화면] 캡처본 올리기
*곡명이 잘려도 괜찮습니다
*챌린지 기간 중 이미 인증한 캡처화면으로 중복 인증하면 안 됩니다."',10000,'together_img/300_img.jpg','"음악 듣기, 단지 즐겁기만 할까요? 
음악 듣기에는 여러가지 효과가 있다는 사실!

긍정적 마인드와 기억력 향상에 도움이 돼요.
음악을 듣는 것으로 뇌의 도파민과 옥시토신 수준이 높아지면서 긍정적인 기분이 들어 인지력이 날카로워지는 것으로 알려져있는데요. 또 뇌의 가소성이 높아지면서 새로운 것을 배우는 능력과 기억력이 높아져요 

집중력 향상에 도움을 줘요.
대한민국 대표 수영선수인 박태환처럼 운동선수가 실전에 앞서 이어폰을 귀에 꼽고 집중하고 있는 장면을 흔히 볼 수 있는데요. 음악의 집중 효과는 스포츠에서 매우 유용해요. 훈련중에 음악을 듣는 것이 무음 상태로 임하는 것보다 근육의 통증이 누그러져 훈련의 양을 더 늘려준다고 합니다.
"','2019-01-26',0,'together_img/300_good.jpg','together_img/300_bad.jpg');
Insert into YOUNGYOUNG.TOGETHER_INFO (INFO_NO,CAT_NO,MEM_ID,INFO_NAME,INFO_HOW_CONFIRM,INFO_APPLICATION_FEE,INFO_IMG,INFO_INTRO,INFO_UPLOAD_DATE,INFO_STATUS,PHO_GOOD,PHO_BAD) values (400,2,'sooin','영어단어 10개씩 외우기','   "[오늘 날짜]와 [외국어 단어 10개]를 쓴[손글씨] 사진찍기
*동일한 단어는 적지 말아주세요
*단어를 외우는 것이 챌린지의 목적인만큼 문장형태가 아닌 단어 형태로 적어주세요
*앱 내 카메라에서 찍히는 날짜는 인정되지 않습니다."',10000,'together_img/400_img.jpg','"이런 분들께 추천합니다
-해외유학을 준비중이신 분
-GRE 공부중이신 분
-외국어 시험을 준비중이신 분

단어 암기 Tip
자극과 반복
단어를 외우려면 자극과 반복이 필요합니다. 단어 외우기는 생각날 때 몰아서 하는 게 아니라 평소에 꾸준히 반복하는 게 중요합니다. 잘 외워지지 않는 단어도 며칠을 반복하면 결국에는 외울 수 있습니다. 
쓰면서 읽어라.
단어 공부를 할 때 눈으로만 봐서는 효과적인 암기가 되지 않습니다. 눈으로 보고, 손으로 쓰고, 입으로 발음하는 3가지 방법이 동시에 이루어질 때 효과가 극대화 됩니다. 발음하는 것을 부끄러워하지 말고 여러번 읽어보세요."','2020-08-25',0,'together_img/400_good.jpg','together_img/400_bad.jpg');
Insert into YOUNGYOUNG.TOGETHER_INFO (INFO_NO,CAT_NO,MEM_ID,INFO_NAME,INFO_HOW_CONFIRM,INFO_APPLICATION_FEE,INFO_IMG,INFO_INTRO,INFO_UPLOAD_DATE,INFO_STATUS,PHO_GOOD,PHO_BAD) values (200,2,'youngyoung','하루 1시간 공부','공부 시작과 끝에 각 1장씩 찍기(총 2장) 
선택1) 공부하려는 교재가 나오게 사진찍기 
선택2) 컴퓨터 화면찍기 (PC로 공부하는 경우) 
선택3) 노트필기 사진 찍기',10000,'together_img/200_img.jpg','이런 분들께 추천합니다
-꾸준히 공부를 하려는 직장인
-일상생활에서 외국어 공부를 하실 분
-자기계발에 충실하신 분
-자격증 시험을 앞두고 계신 분

하루 1시간 공부 Tip
시작이 반
책상에 앉아서 교재를 펴기만 하면 반은 한 것입니다.
어려운 문턱을 넘었기 때문입니다. 
꾸준히 하는게 중요
하루에 오랜 시간 갑자기 공부해 볼 수는 있지만, 얼마 안 돼 중단하게 됩니다. 그것보단 하루 1시간씩 꾸준히 하다 보면 1년에 365시간도 공부할 수 있습니다.
매일 딱 1시간만 부담을 갖지 말고 도전합시다.','2020-05-07',1,'together_img/200_good.jpg','together_img/200_bad.jpg');
Insert into YOUNGYOUNG.TOGETHER_INFO (INFO_NO,CAT_NO,MEM_ID,INFO_NAME,INFO_HOW_CONFIRM,INFO_APPLICATION_FEE,INFO_IMG,INFO_INTRO,INFO_UPLOAD_DATE,INFO_STATUS,PHO_GOOD,PHO_BAD) values (1200,3,'aran','좋아하는 음악듣기','핸드폰 혹은 컴퓨터로 플레이리스트를 찍어서 인증해주세요.',10000,'together_img/1200_img.jpg','그냥 음악만 듣지마시고 음악도 들으면서 상금도 받아가세요.','2021-03-07',0,'together_img/1200_good.jpg','together_img/1200_bad.JPG');
Insert into YOUNGYOUNG.TOGETHER_INFO (INFO_NO,CAT_NO,MEM_ID,INFO_NAME,INFO_HOW_CONFIRM,INFO_APPLICATION_FEE,INFO_IMG,INFO_INTRO,INFO_UPLOAD_DATE,INFO_STATUS,PHO_GOOD,PHO_BAD) values (100,1,'soyoung','1만보 걷기','어제 혹은 오늘[날짜] 와 [1만보 이상 걸음 수] 가 기록된 앱 화면 또는 스마트웨치 사진 올리기
(단, 일요일 기록을 월요일에 오리시는 것은 인정되는 않습니다. 월요일부터 다른 주로 인식됩니다)

*챌린지 시작 당일은 오늘 날짜의 인증만 인정됩니다.
*아이폰의 경우 건강앱>걸음>"주" 선택>해당날짜 클릭하시면 날짜와 걸음수가 함께 나오면 화면을 확인하실 수 있습니다.
*업데이트 된 삼성헬스 앱을 이용하시는 경우 "월"정보 대신 일자만 나와도 됩니다.
*스마트워치 혹은 앱 화면 캡쳐만 가능합니다. 타 핸드폰을 찍은 사진은 안됩니다.

*비/눈 오는 날은 비/눈이 오는 것을 알 수 있는 사진(예. 우산쓰고 있는 사람들)을 찍어주시면 하트로 처리됩니다.(달성률은 오르지만 상금은 받으실수 없습니다. 단,미세먼지 등 다른 날씨의 경우 하트로 인정처리 되지 않습니다.)',10000,'together_img/100_img.jpg','걷기의 효과
1. 지방연소 효과가 높다
유산소 운동의 대표인 걷기는 지방 연소 효과가 높습니다. 근력 트레이닝만 하면 지방을 효과적으로 연소하지 못합니다. 다이어트를 빨리하고 싶다면, 걷기를 병행하는 것이 좋습니다.

2.언제 어디서나 한다
걷기의 장점은 언제 어디서나 쉽게 할 수 있다는 것 입니다. 따로 시간을 내서 걸어도 좋고, 대중교통과 계단을 이용하는 방식도 좋습니다. 움직이고자 하는 마음만 있다면 언제든 걸을 수 있습니다.

3.시간을 아낄수 있다
걷기는 아주 힘든 운동은 아닙니다. 고강도 운동을 할 떄에는 운동에만 집중해야 할때가 많죠. 하지만 걷기는 음악을 듣거나, 생각을 하면서 함께 할 수 있습니다. 운동과 함께 해야 할 일을 하는 일석이조의 효과가 있습니다.','2019-09-16',1,'together_img/100_good.jpg','together_img/100_bad.jpg');
Insert into YOUNGYOUNG.TOGETHER_INFO (INFO_NO,CAT_NO,MEM_ID,INFO_NAME,INFO_HOW_CONFIRM,INFO_APPLICATION_FEE,INFO_IMG,INFO_INTRO,INFO_UPLOAD_DATE,INFO_STATUS,PHO_GOOD,PHO_BAD) values (600,1,'yeman','매주 1kg 감량하기','[직전 정상인증된 인증샷]보다 [1kg이상이 줄은 몸무게]와 [양 발]이 보이는 [디지털 체중계] 사진찍기 * 이전 인증샷 대비 1kg 이상을 감량하지 못한 경우, 인증샷을 업로드할 필요가 없습니다. * 1kg 이상 감량하지 않은 인증샷이 업로드 된 경우 인증샷을 삭제합니다. * 첫 주는 현재의 몸무게를 찍으시면 됩니다. * 매트 위와 같이 맨 바닥이 아닌 곳에 체중계를 올려 놓고 찍으면 미인증 처리됩니다.',10000,'together_img/600_img.jpg','체중을 줄일 강력한 동기가 필요하신 분, 인바디 기계를 사용할 수 없어 체지방 감랑 챌린지에 참가가 불가능 하신분, 주단위로 몸무게 감량에 성공하고 싶으신 분들께 추천합니다.','2020-03-15',1,'together_img/600_good.jpg','together_img/600_bad.jpg');
Insert into YOUNGYOUNG.TOGETHER_INFO (INFO_NO,CAT_NO,MEM_ID,INFO_NAME,INFO_HOW_CONFIRM,INFO_APPLICATION_FEE,INFO_IMG,INFO_INTRO,INFO_UPLOAD_DATE,INFO_STATUS,PHO_GOOD,PHO_BAD) values (700,2,'jonghyeok','책읽기','[책 표지 또는 읽기 시작한 페이지]한 잔, [마지막으로 읽은 페이지] 한 장 찍기 (총 2장) *책 표지는 두 인증샷 중 첫번째 인증샷으로만 찍을 수 있습니다. *책 표지가 중복이 되면 안됩니다. *페이지수가 나오지 않아도 됩니다. *e-book에 한해 사진첩, 갤러리 사용이 가능합니다 * 교재, 문제집, 만화책, 그림책, 오디오북 등의 기타서적은 허용되지 않습니다 *만화책이 아니더라도 만화/삽화만 나오는 페이지를 찍으면 신고를 받고 인증 실패가 될 수 있습니다 *영어 원서 읽기, 공부하기 챌린지 등 다른 챌린지와 동일한 책으로 인증하실 수 없습니다',10000,'together_img/700_img.jpg','결심했던 목표를 포기하게 되는 이유는 시간이 지날 수록 의지가 약해지기 때문입니다. 의지를 유지하는 가장 간단하고 효과적인 방법은 자신의 목표에 돈을 거는 것입니다.','2020-10-09',2,'together_img/700_good.jpg','together_img/700_bad.jpg');
Insert into YOUNGYOUNG.TOGETHER_INFO (INFO_NO,CAT_NO,MEM_ID,INFO_NAME,INFO_HOW_CONFIRM,INFO_APPLICATION_FEE,INFO_IMG,INFO_INTRO,INFO_UPLOAD_DATE,INFO_STATUS,PHO_GOOD,PHO_BAD) values (800,2,'heonmyeong','영어·외국어 팝송가사 쓰기','[가수]와 [곡명]과 [10줄 이상의 가사]를 외국어로 적은 손글씨 사진 찍기 *태블릿이나 패드 펜슬로 쓰셔도 됩니다',10000,'together_img/800_img.jpg','*이런 분들께 추천합니다 - 조금 더 즐거운 외국어 공부 방법을 찾으시는 분 - 평소 팝송을 따라 부르고 싶으셨떤 분 - 외국어 리스닝과 라이팅 공부를 한 번에 해결하고 싶으신 분','2021-02-25',1,'together_img/800_good.jpg','together_img/800_bad.jpg');
Insert into YOUNGYOUNG.TOGETHER_INFO (INFO_NO,CAT_NO,MEM_ID,INFO_NAME,INFO_HOW_CONFIRM,INFO_APPLICATION_FEE,INFO_IMG,INFO_INTRO,INFO_UPLOAD_DATE,INFO_STATUS,PHO_GOOD,PHO_BAD) values (900,3,'sumin','집밥 요리하기','다음 중 택1 #1. [인덕션] 혹은 [가스레인지] 위에서 요리하는 음식 사진 찍기 #2. [에어프라이어]를 이용해서 요리하는 음식 사진 찍기 #3. [오븐] 혹은 [그릴]을 이용해서 요리하는 음식 사진 찍기',10000,'together_img/900_img.jpg','이런 분들께 추천합니다 - 불필요한 외식을 줄이고 싶으신 분- 집밥으로 건강을 챙기고 돈도 아끼고 싶으신 분- 가족과 함께 식사하는 시간을 늘리고 싶으신 분','2020-01-31',1,'together_img/900_good.jpg','together_img/900_bad.jpg');
Insert into YOUNGYOUNG.TOGETHER_INFO (INFO_NO,CAT_NO,MEM_ID,INFO_NAME,INFO_HOW_CONFIRM,INFO_APPLICATION_FEE,INFO_IMG,INFO_INTRO,INFO_UPLOAD_DATE,INFO_STATUS,PHO_GOOD,PHO_BAD) values (1000,3,'sooin','4주 x 매주 영화 시청 후 감상평','[영화 제목]과 [10줄 이상의 감상평]이 나온 사진 찍기',10000,'together_img/1000_img.jpg','이런 분들께 추천합니다 - 꾸준히 문화생활을 하고 싶으신 분 - 영화를 보고 느낀 점을 오래 기억하고 싶으신 분 - 영화감상을 조금 더 생산적인 활동으로 만들고 싶으신 분','2021-02-14',1,'together_img/1000_good.jpg','together_img/1000_bad.jpg');
Insert into YOUNGYOUNG.TOGETHER_INFO (INFO_NO,CAT_NO,MEM_ID,INFO_NAME,INFO_HOW_CONFIRM,INFO_APPLICATION_FEE,INFO_IMG,INFO_INTRO,INFO_UPLOAD_DATE,INFO_STATUS,PHO_GOOD,PHO_BAD) values (1100,1,'jihoon','홈트 영상 보며 운동하기','[홈트영상화면]과 [운동할 수 있는 바닥 또는 매트]가 같이 나온 사진 찍기 (시작할 때 1장, 끝날 때 1장)  * 매트는 선택이며, 일반 거실, 방바닥도 인정됩니다. * 스텝의 판단으로 운동 가능한 바닥이 아닐 경우 인정되지 않습니다 (참가자의 진행기록을 확인하여 인정 여부를 검토) * 바닥이 충분히 나오지 않아 스텝 판단에 바닥인지 책상인지 구분이 되지 않는 경우 인정되지 않습니다 * 갤러리 이용이 불가능합니다. 사용하시는 핸드폰 외에 다른 기기(예. 노트북, 태블릿, 다른 핸드폰 등)으로 홈트 영상을 시청할 수 있을 때만 이 챌린지를 신청하세요',10000,'together_img/1100_img.jpg','이런 분들께 추천합니다 - 헬스장이 아닌 집에서도 운동을 하고 싶으신 분 - 시간에 구애받지 않고 틈틈히 운동 하고 싶으신 분 - 다양한 영상을 보며 새로운 운동을 하고 싶으신 분','2020-06-25',0,'together_img/1100_good.jpg','together_img/1100_bad.jpg');
Insert into YOUNGYOUNG.TOGETHER_INFO (INFO_NO,CAT_NO,MEM_ID,INFO_NAME,INFO_HOW_CONFIRM,INFO_APPLICATION_FEE,INFO_IMG,INFO_INTRO,INFO_UPLOAD_DATE,INFO_STATUS,PHO_GOOD,PHO_BAD) values (500,3,'aran','악기연습하기','"악기를 들고 사진찍기(시작할때 1장, 끝날때 1장)
(인증샷간격 최소10분)
*들 수 없는 경우 악기에 손을 올려놓고 사진찍기
*디제잉 장비도 허용됩니다"',10000,'together_img/500_img.jpg','악기 연습은 명상이다
박자에 집중하다보면 아무런 생각이 없어져요.
누구나 생활이 힘들고 지칠때가 있죠. 하지만 지쳣다고 매번 생활의 굴레를 벗어나긴 힘들어요 그럴 때에는 일사에서 크게 벗어나지 않고도 감정을 변화시킬 무언가가 필요해요, 흔히들 말하는 취미라는 것의 역할이죠.

악기를 연습할 떄는 생각이 사라지고 악기를 다루는 나와 내가 만들어내는 음악에만 집중하게 되요. 박자에 맞춰서 몸과 어깨를 흔들고 리듬을 타고나면 깨끗하게 비워진 상태가 되죠. 그렇게 집중의 시간을 지나고 나면 어느새 무거운 스트레스의 짐을 덜어버린 자신을 발견할 수 있어요

악기연습하기,
오늘부터 함께 시작해볼까요?','2020-10-03',1,'together_img/500_good.jpg','together_img/500_bad.jpg');
--------------------------------------------------------
--  DDL for Index TOGETHER_INFO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "YOUNGYOUNG"."TOGETHER_INFO_PK" ON "YOUNGYOUNG"."TOGETHER_INFO" ("INFO_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table TOGETHER_INFO
--------------------------------------------------------

  ALTER TABLE "YOUNGYOUNG"."TOGETHER_INFO" MODIFY ("INFO_APPLICATION_FEE" NOT NULL ENABLE);
  ALTER TABLE "YOUNGYOUNG"."TOGETHER_INFO" ADD CONSTRAINT "TOGETHER_INFO_PK" PRIMARY KEY ("INFO_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "YOUNGYOUNG"."TOGETHER_INFO" MODIFY ("INFO_INTRO" NOT NULL ENABLE);
  ALTER TABLE "YOUNGYOUNG"."TOGETHER_INFO" MODIFY ("INFO_IMG" NOT NULL ENABLE);
  ALTER TABLE "YOUNGYOUNG"."TOGETHER_INFO" MODIFY ("INFO_HOW_CONFIRM" NOT NULL ENABLE);
  ALTER TABLE "YOUNGYOUNG"."TOGETHER_INFO" MODIFY ("INFO_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table TOGETHER_INFO
--------------------------------------------------------

  ALTER TABLE "YOUNGYOUNG"."TOGETHER_INFO" ADD CONSTRAINT "CATEGORY_NO_FK" FOREIGN KEY ("CAT_NO")
	  REFERENCES "YOUNGYOUNG"."CATEGORY" ("CAT_NO") ENABLE;
  ALTER TABLE "YOUNGYOUNG"."TOGETHER_INFO" ADD CONSTRAINT "MEMBER_ID_FK" FOREIGN KEY ("MEM_ID")
	  REFERENCES "YOUNGYOUNG"."MEMBERS" ("MEM_ID") ENABLE;
