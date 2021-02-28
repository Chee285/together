package dao;

import java.util.List;

import exception.AddException;
import exception.FindException;
import exception.ModifyException;
import vo.Photo_Shoot;
import vo.Together;
import vo.Together_Info;

public interface TogetherDaoInterface {

	// 모든 투게더 출력
	/**
	 * 모든 투게더 출력
	 * @return Together 
	 * @throws FindException
	 */
	
	public Together togetherList()throws FindException;
	
	// 투게더 상세
	/**
	 * 투게더 상세
	 * @param together_info
	 * @return Together t
	 * @throws FindException
	 */
	public Together togetherDetail(String together_info, int info_no)throws FindException;
	
	// 인증모아보기
	/**
	 * 인증 모아보기
	 * @return sign_together 
	 * @thorws FindException
	 */
	
	public List<Photo_Shoot> photoCollection()throws FindException;
	
	// 결재
	// 남은 잔액 반환
	// 0원인 확인 비교 
	/**
	 * 결재
	 * @param together_info
	 * @return money 잔액
	 * @throws ModifyException
	 */
	public void pay(String id, int balance)throws ModifyException;
	
	// 충전
	// 충전후 잔액 반환
	/**
	 * 
	 * @param money
	 * @return money 충전후 잔액
	 * @throws ModifyException
	 */
	public int charge(int money)throws ModifyException;
	
	// 챌린지 인증 insert
	// 모르겠음
	/**
	 * 챌린지 인증 추가
	 * @param ps
	 * @return Together
	 * @throws AddException
	 */
	public Together certifyT(Photo_Shoot ps)throws AddException;

	// 투게더 생성
	/**
	 * 
	 * @param Together t
	 * @return Together 
	 * @throws AddException
	 */
	public Together createT(Together t)throws AddException;
	
	// 투게더 수정
	/**
	 * 투게더 수정
	 * @param t
	 * @return Together
	 * @throws
	 */
	public Together updateT(Together t)throws ModifyException;

	// 챌린지를 여러번하는지 체크
	// 현재 날짜, 아이디, 투게더 정보
	/**
	 * 
	 * @param day
	 * @param id
	 * @param together_no
	 * @return 이미했으면 :1 / 하지 않았으면 :0
	 * @throws FindException
	 */
	public int checkPS(String day, String id, String together_no) throws FindException;

	// 투게더 이름 검색
	/**
	 * 투게더 이름 검색
	 * @param nickname
	 * @return List<Photo_Shoot>
	 * @throws FindException
	 */
	public List<Photo_Shoot> name_vw(String nickname) throws FindException;
	
	// 카테고리 검색
	/**
	 * 카테고리 검색
	 * @param cName
	 * @return List<Photo_Shoot>
	 * @throws FindException
	 */
	public List<Photo_Shoot> category_vw(String cName) throws FindException;
	
	// 아이디 검색 
	/**
	 * 아이디 검색
	 * @param id
	 * @return List<Photo_Shoot>
	 * @throws FindException
	 */
	public List<Photo_Shoot> id_vw(String id) throws FindException;

	
	public List<Together> together_version(int info_no) throws FindException;
	
	public void together_insert_version(int info_no,String start, String end, int certified, int sub_certified, String id) throws AddException;
	
	public List<Photo_Shoot> searchPhoto(String option, String content) throws FindException;
	
	public void sign_insert (String id, String tog_no) throws AddException;
	
	public Together payInfoSelect(String tog_no ) throws FindException;
	
	public int phtoLike(String photo_no, String id) throws AddException;
}
