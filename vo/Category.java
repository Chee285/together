package vo;

public class Category {
	
	/*
		 	CATEGORY_NO		NUMBER(2,0)			No
			CATEGORY_NAME	VARCHAR2(15 BYTE)	Yes
	 */

	
	
	
	private int Category_no;
	private String Category_name;
	public int getCategory_no() {
		return Category_no;
	}
	public void setCategory_no(int category_no) {
		Category_no = category_no;
	}
	public String getCategory_name() {
		return Category_name;
	}
	public void setCategory_name(String category_name) {
		Category_name = category_name;
	}
	
	
	
	
}
