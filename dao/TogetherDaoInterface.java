package dao;

import java.util.Date;
import java.util.List;

import vo.Photo_Shoot;
import vo.Sign_Together;
import vo.Together;

public interface TogetherDaoInterface {

	// 모든 투게더 출력
	// 
	public Together togetherList()throws Exception;
	
	// 투게더 상세
	public Together togetherDetail(String together_info)throws Exception;
	
	// 인증모아보기
	public Sign_Together photoCollection()throws Exception;
	
	// 결제
	// 남은 잔액 반환
	// 0원인 확인 비교 
	public int pay(String together_info)throws Exception;
	
	// 충전
	// 충전후 잔액 반환
	public int charge(int money)throws Exception;
	
	// 챌린지 인증 insert
	// 모르겠음
	public Together certifyT(Photo_Shoot ps)throws Exception;

	// 투게더 생성
	// 
	public Together createT(Together t)throws Exception;
	
	// 투게더 수정
	public Together updateT(Together t)throws Exception;

	// 챌린지를 여러번하는지 체크
	// 현재 날짜, 아이디, 투게더 정보
	public int checkPS(Date day, String id, String together_no) throws Exception;

	// 챌린지 이름 검색
	public List<Photo_Shoot> name_vw(String nickname) throws Exception;
	
	// 카테고리 검색
	public List<Photo_Shoot> category_vw(String cName) throws Exception;
	
	// 아이디 검색 
	public List<Photo_Shoot> id_vw(String id) throws Exception;

}
