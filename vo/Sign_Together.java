package vo;

public class Sign_Together {

//   TOGETHER_SIGN   NUMBER(5,0)         No   
//   TOGETHER_NO      VARCHAR2(8 BYTE)   Yes   
//   MEMBER_ID      VARCHAR2(20 BYTE)   Yes   
//   TOTAL_ACHV      NUMBER(2,0)         Yes   
//   ACHV         NUMBER(2,0)         Yes   
//   STATUS         NUMBER(1,0)         Yes   

	private int sign_no;
//   private String together_no;
	private Together together;
	private String mem_id;
	private int sign_total_achv;
	private int sign_achv;
	private int sign_status;

	public int getSign_no() {
		return sign_no;
	}

	public void setSign_no(int sign_no) {
		this.sign_no = sign_no;
	}

	public Together getTogether() {
		return together;
	}

	public void setTogether(Together together) {
		this.together = together;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public int getSign_total_achv() {
		return sign_total_achv;
	}

	public void setSign_total_achv(int sign_total_achv) {
		this.sign_total_achv = sign_total_achv;
	}

	public int getSign_achv() {
		return sign_achv;
	}

	public void setSign_achv(int sign_achv) {
		this.sign_achv = sign_achv;
	}

	public int getSign_status() {
		return sign_status;
	}

	public void setSign_status(int sign_status) {
		this.sign_status = sign_status;
	}

}