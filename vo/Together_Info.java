package vo;

import java.sql.Date;

public class Together_Info {
	/*
	 * TOGETHER_INFO_NO NUMBER(4,0) No CATEGORY_NO NUMBER(2,0) Yes MEMBER_ID
	 * VARCHAR2(20 BYTE) Yes TOGETHER_NAME VARCHAR2(100 BYTE) No HOW_CONFIRM
	 * VARCHAR2(3000 BYTE) No CONFIRM_CNT VARCHAR2(30 BYTE) No APPLICATION_FEE
	 * NUMBER(6,0) No TOGETHER_IMG VARCHAR2(300 BYTE) No TOGETHER_INTRO
	 * VARCHAR2(2000 BYTE) No UPLOAD_DATE DATE No STATUS NUMBER(1,0) Yes
	 */

	private int info_no;
	private Category category;
	private String mem_id;
	private String info_name;
	private String info_how_confirm;
	private int info_application_fee;
	private String info_img;
	private String info_intro;
	private Date info_uplocad_date;
	private char info_status;
	private String pho_good;
	private String pho_bad;

	public int getInfo_no() {
		return info_no;
	}

	public void setInfo_no(int info_no) {
		this.info_no = info_no;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getInfo_name() {
		return info_name;
	}

	public void setInfo_name(String info_name) {
		this.info_name = info_name;
	}

	public String getInfo_how_confirm() {
		return info_how_confirm;
	}

	public void setInfo_how_confirm(String info_how_confirm) {
		this.info_how_confirm = info_how_confirm;
	}

	public int getInfo_application_fee() {
		return info_application_fee;
	}

	public void setInfo_application_fee(int info_application_fee) {
		this.info_application_fee = info_application_fee;
	}

	public String getInfo_img() {
		return info_img;
	}

	public void setInfo_img(String info_img) {
		this.info_img = info_img;
	}

	public String getInfo_intro() {
		return info_intro;
	}

	public void setInfo_intro(String info_intro) {
		this.info_intro = info_intro;
	}

	public Date getInfo_uplocad_date() {
		return info_uplocad_date;
	}

	public void setInfo_uplocad_date(Date info_uplocad_date) {
		this.info_uplocad_date = info_uplocad_date;
	}

	public char getInfo_status() {
		return info_status;
	}

	public void setInfo_status(char info_status) {
		this.info_status = info_status;
	}

	public String getPho_good() {
		return pho_good;
	}

	public void setPho_good(String pho_good) {
		this.pho_good = pho_good;
	}

	public String getPho_bad() {
		return pho_bad;
	}

	public void setPho_bad(String pho_bad) {
		this.pho_bad = pho_bad;
	}

}