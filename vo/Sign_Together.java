package vo;

public class Sign_Together {
	
	
//	TOGETHER_SIGN	NUMBER(5,0)			No	
//	TOGETHER_NO		VARCHAR2(8 BYTE)	Yes	
//	MEMBER_ID		VARCHAR2(20 BYTE)	Yes	
//	TOTAL_ACHV		NUMBER(2,0)			Yes	
//	ACHV			NUMBER(2,0)			Yes	
//	STATUS			NUMBER(1,0)			Yes	
		
	

	private int together_sign;
//	private String together_no;
	private Together together_no;
	private String member_id;
	private int total_achv;
	private int achv;
	private int status;
	public int getTogether_sign() {
		return together_sign;
	}
	public void setTogether_sign(int together_sign) {
		this.together_sign = together_sign;
	}
	public Together getTogether_no() {
		return together_no;
	}
	public void setTogether_no(Together together_no) {
		this.together_no = together_no;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getTotal_achv() {
		return total_achv;
	}
	public void setTotal_achv(int total_achv) {
		this.total_achv = total_achv;
	}
	public int getAchv() {
		return achv;
	}
	public void setAchv(int achv) {
		this.achv = achv;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	


	
}
