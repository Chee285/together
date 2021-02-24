package vo;

import java.sql.Date;

public class Together {

	/*
	 * TOGETHER_NO VARCHAR2(8 BYTE) TOGETHER_INFO_NO NUMBER(4,0) VERSION NUMBER(3,0)
	 * SUM NUMBER(8,0) PEOPLE NUMBER(4,0) START_DATE DATE END_DATE DATE STATUS
	 * NUMBER(1,0)
	 */

	private String tog_no;
//   private int together_info;
	private Together_Info info;

	private int tog_version;
	private int tog_sum;
	private int tog_people;
	private Date tog_start_date;
	private Date tog_end_date;
	private int tog_status;
	private String tog_confirm_cnt;
	private int tog_sub_cnt;

	public String getTog_no() {
		return tog_no;
	}

	public void setTog_no(String tog_no) {
		this.tog_no = tog_no;
	}

	public Together_Info getInfo() {
		return info;
	}

	public void setInfo(Together_Info info) {
		this.info = info;
	}

	public int getTog_version() {
		return tog_version;
	}

	public void setTog_version(int tog_version) {
		this.tog_version = tog_version;
	}

	public int getTog_sum() {
		return tog_sum;
	}

	public void setTog_sum(int tog_sum) {
		this.tog_sum = tog_sum;
	}

	public int getTog_people() {
		return tog_people;
	}

	public void setTog_people(int tog_people) {
		this.tog_people = tog_people;
	}

	public Date getTog_start_date() {
		return tog_start_date;
	}

	public void setTog_start_date(Date tog_start_date) {
		this.tog_start_date = tog_start_date;
	}

	public Date getTog_end_date() {
		return tog_end_date;
	}

	public void setTog_end_date(Date tog_end_date) {
		this.tog_end_date = tog_end_date;
	}

	public int getTog_status() {
		return tog_status;
	}

	public void setTog_status(int tog_status) {
		this.tog_status = tog_status;
	}

	public String getTog_confirm_cnt() {
		return tog_confirm_cnt;
	}

	public void setTog_confirm_cnt(String tog_confirm_cnt) {
		this.tog_confirm_cnt = tog_confirm_cnt;
	}

	public int getTog_sub_cnt() {
		return tog_sub_cnt;
	}

	public void setTog_sub_cnt(int tog_sub_cnt) {
		this.tog_sub_cnt = tog_sub_cnt;
	}

}