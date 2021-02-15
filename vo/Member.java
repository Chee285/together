package vo;

import java.sql.Date;
import java.util.List;


public class Member{
	
	/*
	 	MEMBER_ID		VARCHAR2(20 BYTE)	No
		MEMBER_PWD		VARCHAR2(30 BYTE)	No
		NAME			VARCHAR2(15 BYTE)	No
		BIRTHDAY		DATE				Yes
		NICKNAME		VARCHAR2(30 BYTE)	No
		PHONE_NUM		VARCHAR2(11 BYTE)	No
		BALANCE			NUMBER(7,0)			Yes
		PROFILE_IMG		VARCHAR2(100 BYTE)	Yes
		STATUS_MESSAGE	VARCHAR2(100 BYTE)	Yes
		STATUS			NUMBER(1,0)			Yes
	 */
	
	
	
	
	
	private String member_id; //아이디
	private String member_pwd; //비밀번호
	private String name; //이름
	private Date birthday; //생년월일
	private String nickname; //별명
	private String phonme_num; // 휴대폰번호
	private int balance; // 포인트
	private String profile_img; // 프로필 사진
	private String status_message; // 상태 메세지
	private int status; // 상태
	
	

	// 인증모아보기
	// 카테고리로 검색가능 이름으로도 검색가능 챌린지 이름으로도 검색가능
//	public Category category;
//	public Together_Info together_info;
//	public Photo_Shoot photo_shoot;

	
	
	
	
	
}
