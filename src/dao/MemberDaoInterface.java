package dao;

import java.util.Date;

import exception.AddException;
import exception.FindException;
import exception.ModifyException;
import exception.RemoveException;
import vo.Member;
import vo.Sign_Together;

public interface MemberDaoInterface {

	/** 로그인 
	 *  @param id
	 *  @param pwd
	 *  @return  Member 멤버 객체 를 전달합니다. 
	 *  @throws FindeException
	 */
	public Member login(String id,String pwd)throws FindException;
	
	
	/**
	 * 로그아웃
	 * @param id
	 * @throws RemoveException
	 */
	public void logout(String id) throws RemoveException;
	
	
	/**
	 * 회원가입
	 * @param m 멤버객체
	 * @throws AddException
	 */
	public void signup(Member m)throws AddException;
	

	/**
	 * 아이디 찾기
	 * @param birthday
	 * @param phonme_num
	 * @return id
	 * @throws AddException
	 * 
	 */
	public String findId(Date birthday,String phonme_num)throws AddException;
	
	
	/**
	 * 비밀번호 찾기
	 * @param id
	 * @param phonme_num
	 * @return password
	 *@@throws FindException
	 */
	public String findPwd(String id,String phonme_num)throws FindException;
	
	

	/**
	 * 마이페이지
	 * @param id
	 * @return sign_together 진행중인 투게더 객체
	 * 
	 */
	public Sign_Together mypage(String id);
	
	
	/**
	 * 개인정보 수정
	 * @param id
	 * @return 확인 숫자 1 : 성공 / -1: 실패
	 * @throws ModifyException
	 *
	 */
	public int modify_meminfo(String id)throws Exception;
	
	

	
	// 닉네임 중복확인 
	//리턴값 : 실패시 0 , 성공시 1 
	/**
	 * 닉네임 중복확인
	 * @param id
	 * @return 확인 숫자 1 : 성공 / -1: 실패 
	 * @throws FindException
	 * 
	 */
	public int selectByNickname(String id) throws FindException;
	
	// 아이디 중복확인
	//리턴값 : 실패시 0 , 성공시 1  
	/**
	 * 아아디 중복확인
	 * @param id
	 * @return 확인 숫자 1 : 성공 / -1: 실패
	 * @throws FindException
	 */
	public int selectById(String id) throws FindException;
	
	// 내가 참여한 투게더 - 메인에 사용
	/**
	 * 내가 참여한 TOGETHER
	 * @param id
	 * @return sign_together 내가 참여한 챌린지
	 * @throws FindException
	 */
	public Sign_Together selectByTogether(String id)throws FindException;
	
	//임박한 챌린지 -메인에 사용
	/**
	 * 임박한 챌린지
	 * @return sign_together 임박한 투게더
	 * @throws FindException
	 */
	public Sign_Together soon_together()throws FindException;
	
//	//메인화면
//	//리턴값 : 현재 로그인 된 회원의 진행중인 챌린지
//	/**
//	 * main에 사용될 임박한 TOGETHER
//	 * @param id
//	 * @return sign_together 현재 로그인 된 회원의 진행중인 챌린지
//	 * 
//	 */
//	public Sign_Together main(String id)throws Exception;
}

