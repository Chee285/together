package dao;

import java.util.Date;

import vo.Member;
import vo.Sign_Together;

public interface MemberDaoInterface {
	
	//로그인 
	//리턴값 : 회원정보
	public Member login(String id,String pwd)throws Exception;
	
	
	//로그아웃
	public void logout(String id)throws Exception;
	
	
	//회원가입
	public void signup(Member m)throws Exception;
	
	
	//아이디찾기
	//리턴값 : ID
	public String findId(Date birthday,String phonme_num)throws Exception;
	
	
	//비밀번호찾기
	//리턴값 : PWD
	public String findPwd(String id,String phonme_num)throws Exception;
	
	
	//마이페이지
	//리턴값 : 진행중인 챌린지
	public Sign_Together mypage(String id)throws Exception;
	
	
	//정보수정
	//리턴값 : 실패시 0 , 성공시 1 
	public int modify_meminfo(String id)throws Exception;
	
	
	//메인화면
	//리턴값 : 현재 로그인 된 회원의 진행중인 챌린지
	public Sign_Together main(String id)throws Exception;
	
	// 닉네임 중복확인 
	//리턴값 : 실패시 0 , 성공시 1 
	public int selectByNickname(String id)throws Exception;
	
	// 아이디 중복확인
	//리턴값 : 실패시 0 , 성공시 1  
	public int selectById() throws Exception;
	
	// 내가 참여한 챌린지 - 메인에 사용
	// 
	public Sign_Together selectByTogether(String id)throws Exception;
	
	//임박한 챌린지 -메인에 사용
	// 
	public Sign_Together soon_together()throws Exception;

}

