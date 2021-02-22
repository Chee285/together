package dao;

import java.util.Date;

import vo.Member;
import vo.Sign_Together;

public interface MemberDaoInterface {

	/** 로그인 
	 *  @param id
	 *  @param pwd
	 *  @return  Member 멤버 객체 를 전달합니다. 
	 */
	public Member login(String id,String pwd)throws Exception;
	
	
	/**
	 * 로그아웃
	 * @param id
	 * 
	 */
	public void logout(String id)throws Exception;
	
	
	/**
	 * 회원가입
	 * @param m 멤버객체
	 * 
	 */
	public void signup(Member m)throws Exception;
	

	/**
	 * 
	 * @param birthday
	 * @param phonme_num
	 * @return id
	 * 
	 */
	public String findId(Date birthday,String phonme_num)throws Exception;
	
	
	/**
	 * 
	 * @param id
	 * @param phonme_num
	 * @return password
	 *
	 */
	public String findPwd(String id,String phonme_num)throws Exception;
	
	

	/**
	 * 
	 * @param id
	 * @return sign_together 진행중인 투게더 객체
	 * 
	 */
	public Sign_Together mypage(String id)throws Exception;
	
	
	/**
	 * 
	 * @param id
	 * @return 확인 숫자 1 : 성공 / -1: 실패
	 * @throws Exception
	 */
	public int modify_meminfo(String id)throws Exception;
	
	
	//메인화면
	//리턴값 : 현재 로그인 된 회원의 진행중인 챌린지
	/**
	 * 
	 * @param id
	 * @return sign_together 현재 로그인 된 회원의 진행중인 챌린지
	 * 
	 */
	public Sign_Together main(String id)throws Exception;
	
	// 닉네임 중복확인 
	//리턴값 : 실패시 0 , 성공시 1 
	/**
	 * 
	 * @param id
	 * @return 확인 숫자 1 : 성공 / -1: 실패
	 * 
	 */
	public int selectByNickname(String id)throws Exception;
	
	// 아이디 중복확인
	//리턴값 : 실패시 0 , 성공시 1  
	/**
	 * @param id
	 * @return 확인 숫자 1 : 성공 / -1: 실패
	 */
	public int selectById(String id) throws Exception;
	
	// 내가 참여한 챌린지 - 메인에 사용
	/**
	 * 
	 * @param id
	 * @return sign_together 내가 참여한 챌린지
	 */
	public Sign_Together selectByTogether(String id)throws Exception;
	
	//임박한 챌린지 -메인에 사용
	/**
	 * 
	 * @return sign_together 임박한 투게더
	 */
	public Sign_Together soon_together()throws Exception;

}

