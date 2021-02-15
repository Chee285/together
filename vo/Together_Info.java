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
   private String toget_name;
   private String how_confirm;
   private String confirmCnt;
   private int applicationFee;
   private String togetherImg;
   private String togetherIntro;
   private Date upload_date;
   private char status;
   
   
 
}