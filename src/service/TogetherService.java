package service;

import java.util.ArrayList;
import java.util.List;

import dao.TogetherDAO;
import exception.AddException;
import exception.FindException;
import vo.Photo_Shoot;
import vo.Together;

public class TogetherService {
	private TogetherDAO dao = new TogetherDAO();
	
	
	// together상세페이지
	public Together togetherDetail(String tog_no, int info_no) throws FindException {
		try {
			Together tog =dao.togetherDetail(tog_no, info_no);
			
			return tog;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		throw new FindException("해당 Together는 없습니다.");
	}
	
	// together version list 생성
	public List<Together> togetherDetailInsert(int info_no) throws FindException {
		List<Together> tog = new ArrayList<Together>();
		try {
			tog = dao.together_version(info_no);
			return tog;
		} catch (FindException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new FindException("회차 정보가 없습니다.");
			
		}
		
	}

	// together version 생성합니다. create
	public void togetherVersionCreate(int info_no, String start, String end, int certified, int sub_certified) {
		try {
			dao.together_insert_version(info_no,start, end, certified, sub_certified);
		} catch (AddException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	// 인증모아보기 - 처음 화면 / 모든인증샷을 불러옴 페이징 처리를 해야되나? 일단 보류
	public List<Photo_Shoot> photoCollection() throws FindException{
		List<Photo_Shoot> photoshoot;
		try {
			photoshoot = dao.photoCollection();
			return photoshoot;
		} catch (FindException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new FindException("포토샵이 없습니다.");
		}
		
	
		
	}
	
	
	
	// 인증모아보기 - 검색 액션
	public List<Photo_Shoot> searchPhoto(String option,String content) throws FindException{
		List<Photo_Shoot> pho_list = dao.searchPhoto(option, content);
		return pho_list;
	}
}
