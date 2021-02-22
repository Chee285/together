package dao;

import java.util.Date;
import java.util.List;

import vo.Photo_Shoot;
import vo.Sign_Together;
import vo.Together;

public interface TogetherDaoInterface {

	// 모든 투게더 출력
	/**
	 * 모든 투게더 출력
	 * @return Together 
	 * @throws Exception
	 */
	
	public Together togetherList()throws Exception;
	
	// 투게더 상세
	/**
	 * 투게더 상세
	 * @param together_info
	 * @return Together t
	 */
	public Together togetherDetail(String together_info)throws Exception;
	
	// 인증모아보기
	/**
	 * 인증 모아보기
	 * @return sign_together 
	 */
	
	public Sign_Together photoCollection()throws Exception;
	
	// 결재
	// 남은 잔액 반환
	// 0원인 확인 비교 
	/**
	 * 결재
	 * @param together_info
	 * @return money 잔액
	 */
	public int pay(String together_info)throws Exception;
	
	// 충전
	// 충전후 잔액 반환
	/**
	 * 
	 * @param money
	 * @return money 충전후 잔액
	 */
	public int charge(int money)throws Exception;
	
	// 챌린지 인증 insert
	// 모르겠음
	/**
	 * 챌린지 인증 추가
	 * @param ps
	 * @return Together 
	 */
	public Together certifyT(Photo_Shoot ps)throws Exception;

	// 투게더 생성
	/**
	 * 
	 * @param Together t
	 * @return Together 
	 */
	public Together createT(Together t)throws Exception;
	
	// 투게더 수정
	/**
	 * 투게더 수정
	 * @param t
	 * @return Together
	 */
	public Together updateT(Together t)throws Exception;

	// 챌린지를 여러번하는지 체크
	// 현재 날짜, 아이디, 투게더 정보
	/**
	 * 
	 * @param day
	 * @param id
	 * @param together_no
	 * @return 이미했으면 :1 / 하지 않았으면 :0
	 */
	public int checkPS(Date day, String id, String together_no) throws Exception;

	// 투게더 이름 검색
	/**
	 * 투게더 이름 검색
	 * @param nickname
	 * @return List<Photo_Shoot>
	 */
	public List<Photo_Shoot> name_vw(String nickname) throws Exception;
	
	// 카테고리 검색
	/**
	 * 카테고리 검색
	 * @param cName
	 * @return List<Photo_Shoot>
	 */
	public List<Photo_Shoot> category_vw(String cName) throws Exception;
	
	// 아이디 검색 
	/**
	 * 아이디 검색
	 * @param id
	 * @return List<Photo_Shoot>
	 */
	public List<Photo_Shoot> id_vw(String id) throws Exception;

}
