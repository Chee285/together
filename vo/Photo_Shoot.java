package vo;

import java.sql.Date;
import java.util.List;
 
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
//	private String member_id;
	private Member member;
	private String together_no;
	private Together together;
	private String photo_good;
	private String impression;
	private int like_cnt;
	private int status;
	private Date date;
	public int getPhoto_no() {
		return photo_no;
	}
	public void setPhoto_no(int photo_no) {
		this.photo_no = photo_no;
	}
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	public String getTogether_no() {
		return together_no;
	}
	public void setTogether_no(String together_no) {
		this.together_no = together_no;
	}
	public Together getTogether() {
		return together;
	}
	public void setTogether(Together together) {
		this.together = together;
	}
	public String getPhoto_good() {
		return photo_good;
	}
	public void setPhoto_good(String photo_good) {
		this.photo_good = photo_good;
	}
	public String getImpression() {
		return impression;
	}
	public void setImpression(String impression) {
		this.impression = impression;
	}
	public int getLike_cnt() {
		return like_cnt;
	}
	public void setLike_cnt(int like_cnt) {
		this.like_cnt = like_cnt;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	


	
}

