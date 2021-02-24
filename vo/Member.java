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
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pwd() {
		return member_pwd;
	}
	public void setMember_pwd(String member_pwd) {
		this.member_pwd = member_pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPhonme_num() {
		return phonme_num;
	}
	public void setPhonme_num(String phonme_num) {
		this.phonme_num = phonme_num;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	public String getProfile_img() {
		return profile_img;
	}
	public void setProfile_img(String profile_img) {
		this.profile_img = profile_img;
	}
	public String getStatus_message() {
		return status_message;
	}
	public void setStatus_message(String status_message) {
		this.status_message = status_message;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	

	// 인증모아보기
	// 카테고리로 검색가능 이름으로도 검색가능 챌린지 이름으로도 검색가능
//	public Category category;
//	public Together_Info together_info;
//	public Photo_Shoot photo_shoot;

	
	
	
	
	
}
