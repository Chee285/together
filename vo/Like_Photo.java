package vo;

public class Like_Photo {
	
	/*
		 	MEMBER_ID	VARCHAR2(20 BYTE)	Yes
			PHOTO_NO	NUMBER(4,0)			Yes
	 */
	
	
	private String member_id;
//	private String photo_no;
	private Photo_Shoot photo;
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public Photo_Shoot getPhoto() {
		return photo;
	}
	public void setPhoto(Photo_Shoot photo) {
		this.photo = photo;
	}
	
	
}
