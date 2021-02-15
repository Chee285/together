package vo;

import java.sql.Date;
 
public class Photo_Shoot {
	
	/*
	 	PHOTO_NO	NUMBER(4,0)			No			                      인증샷번호
		MEMBER_ID	VARCHAR2(20 BYTE)	Yes						회원아이디
		TOGETHER_NO	VARCHAR2(8 BYTE)	Yes						챌린지번호
		PHOTO_GOOD	VARCHAR2(300 BYTE)	No						인증사진
		IMPRESSION	VARCHAR2(500 BYTE)	No						소감
		LIKE_CNT	NUMBER(4,0)			Yes		0				좋아요수
		STATUS		NUMBER(1,0)			Yes		1				상태
		UPLOAD_DATE	DATE				Yes		sysdate			업로드날짜
	
	 */
	
	
	
	private int photo_no;
	private String member_id;
//	private Member member;
	private String together_no;
//	private Together together;
	private String photo_good;
	private String impression;
	private int like_cnt;
	private int status;
	private Date date;
	
	


	
	
}

