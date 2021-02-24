package vo;

import java.sql.Date;

public class Together_Info {
   /*
    * TOGETHER_INFO_NO   	NUMBER(4,0)   			No         
      CATEGORY_NO   		NUMBER(2,0)   			Yes       
      MEMBER_ID   			VARCHAR2(20 BYTE)   	Yes        
      TOGETHER_NAME   		VARCHAR2(100 BYTE)   	No        
      HOW_CONFIRM   		VARCHAR2(3000 BYTE)   	No         
      CONFIRM_CNT   		VARCHAR2(30 BYTE)   	No         
      APPLICATION_FEE   	NUMBER(6,0)   			No        
      TOGETHER_IMG   		VARCHAR2(300 BYTE)   	No        
      TOGETHER_INTRO   		VARCHAR2(2000 BYTE)   	No         
      UPLOAD_DATE   		DATE   					No         
      STATUS   				NUMBER(1,0)   			Yes     
    */
   
	

   private int together_info;
//   private int category_no;
   private Category category_no;
   private String member_id;
   private String together_name;
   private String confirmCnt;
   private int applicationFee;
   private String togetherImg;
   private String togetherIntro;
   private Date upload_date;
   private char status;
   private String pho_good;
   private String pho_bad;
   
public String getTogether_name() {
	return together_name;
}
public void setTogether_name(String together_name) {
	this.together_name = together_name;
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
public int getTogether_info() {
	return together_info;
}
public void setTogether_info(int together_info) {
	this.together_info = together_info;
}
public Category getCategory_no() {
	return category_no;
}
public void setCategory_no(Category category_no) {
	this.category_no = category_no;
}
public String getMember_id() {
	return member_id;
}
public void setMember_id(String member_id) {
	this.member_id = member_id;
}

public String getConfirmCnt() {
	return confirmCnt;
}
public void setConfirmCnt(String confirmCnt) {
	this.confirmCnt = confirmCnt;
}
public int getApplicationFee() {
	return applicationFee;
}
public void setApplicationFee(int applicationFee) {
	this.applicationFee = applicationFee;
}
public String getTogetherImg() {
	return togetherImg;
}
public void setTogetherImg(String togetherImg) {
	this.togetherImg = togetherImg;
}
public String getTogetherIntro() {
	return togetherIntro;
}
public void setTogetherIntro(String togetherIntro) {
	this.togetherIntro = togetherIntro;
}
public Date getUpload_date() {
	return upload_date;
}
public void setUpload_date(Date upload_date) {
	this.upload_date = upload_date;
}
public char getStatus() {
	return status;
}
public void setStatus(char status) {
	this.status = status;
}
   
   
 
}