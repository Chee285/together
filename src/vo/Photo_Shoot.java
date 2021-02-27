package vo;

import java.util.Date;

public class Photo_Shoot {

	/*
	 * PHOTO_NO NUMBER(4,0) No 인증샷번호 MEMBER_ID VARCHAR2(20 BYTE) Yes 회원아이디
	 * TOGETHER_NO VARCHAR2(8 BYTE) Yes 챌린지번호 PHOTO_GOOD VARCHAR2(300 BYTE) No 인증사진
	 * IMPRESSION VARCHAR2(500 BYTE) No 소감 LIKE_CNT NUMBER(4,0) Yes 0 좋아요수 STATUS
	 * NUMBER(1,0) Yes 1 상태 UPLOAD_DATE DATE Yes sysdate 업로드날짜
	 * 
	 */

	private int pho_no;
//	private String mem_id;
   private Member member;
	private String tog_no;
	private Together together;
	private String pho_good;
	private String pho_impression;
	private int pho_like_cnt;
	private int pho_status;
	private String pho_upload_date;

	public Photo_Shoot(Member m, Together info, String pho_good, String pho_impression, int pho_like_cnt, String pho_upload_date) {
		this.member = m;
		this.together = info;
		this.pho_good = pho_good;
		this.pho_impression = pho_impression;
		this.pho_like_cnt = pho_like_cnt;
		this.pho_upload_date =pho_upload_date;
	}

	public Together getTogether() {
		return together;
	}

	public void setTogether(Together together) {
		this.together = together;
	}

	public int getPho_no() {
		return pho_no;
	}

	public void setPho_no(int pho_no) {
		this.pho_no = pho_no;
	}

	public String getTog_no() {
		return tog_no;
	}

	public void setTog_no(String tog_no) {
		this.tog_no = tog_no;
	}

	public String getPho_good() {
		return pho_good;
	}

	public void setPho_good(String pho_good) {
		this.pho_good = pho_good;
	}

	public String getPho_impression() {
		return pho_impression;
	}

	public void setPho_impression(String pho_impression) {
		this.pho_impression = pho_impression;
	}

	public int getPho_like_cnt() {
		return pho_like_cnt;
	}

	public void setPho_like_cnt(int pho_like_cnt) {
		this.pho_like_cnt = pho_like_cnt;
	}

	public int getPho_status() {
		return pho_status;
	}

	public void setPho_status(int pho_status) {
		this.pho_status = pho_status;
	}

	public String getPho_upload_date() {
		return pho_upload_date;
	}

	public void setPho_upload_date(String pho_upload_date) {
		this.pho_upload_date = pho_upload_date;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}
	
}
