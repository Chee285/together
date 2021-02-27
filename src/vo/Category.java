package vo;

public class Category {

	/*
	 * CATEGORY_NO NUMBER(2,0) No CATEGORY_NAME VARCHAR2(15 BYTE) Yes
	 */

	private int cat_no;
	private String cat_name;

	public int getCat_no() {
		return cat_no;
	}

	public void setCat_no(int cat_no) {
		this.cat_no = cat_no;
	}

	public String getCat_name() {
		return cat_name;
	}

	public void setCat_name(String cat_name) {
		this.cat_name = cat_name;
	}

}
