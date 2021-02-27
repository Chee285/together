package vo;

public class Like_Photo {

	/*
	 * MEMBER_ID VARCHAR2(20 BYTE) Yes PHOTO_NO NUMBER(4,0) Yes
	 */

	private String mem_id;
	private Photo_Shoot pho_no;

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public Photo_Shoot getPho_no() {
		return pho_no;
	}

	public void setPho_no(Photo_Shoot pho_no) {
		this.pho_no = pho_no;
	}

}
