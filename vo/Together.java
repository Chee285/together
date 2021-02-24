package vo;

import java.sql.Date;

public class Together {
   
   /*
    * TOGETHER_NO   		VARCHAR2(8 BYTE) 
      TOGETHER_INFO_NO   	NUMBER(4,0)
      VERSION   			NUMBER(3,0)
      SUM   				NUMBER(8,0)
      PEOPLE   				NUMBER(4,0)
      START_DATE   			DATE
      END_DATE   			DATE
      STATUS   				NUMBER(1,0) 
    */
   
   private String together_no;
//   private int together_info;
   private Together_Info together_info; 
   
   private int version;
   private int sum;
   private int people;
   private Date start_date;
   private Date end_date;
   private int status;
public String getTogether_no() {
	return together_no;
}
public void setTogether_no(String together_no) {
	this.together_no = together_no;
}
public Together_Info getTogether_info() {
	return together_info;
}
public void setTogether_info(Together_Info together_info) {
	this.together_info = together_info;
}
public int getVersion() {
	return version;
}
public void setVersion(int version) {
	this.version = version;
}
public int getSum() {
	return sum;
}
public void setSum(int sum) {
	this.sum = sum;
}
public int getPeople() {
	return people;
}
public void setPeople(int people) {
	this.people = people;
}
public Date getStart_date() {
	return start_date;
}
public void setStart_date(Date start_date) {
	this.start_date = start_date;
}
public Date getEnd_date() {
	return end_date;
}
public void setEnd_date(Date end_date) {
	this.end_date = end_date;
}
public int getStatus() {
	return status;
}
public void setStatus(int status) {
	this.status = status;
}
   
   
  
   
   
   

}