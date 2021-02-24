package dao;

import java.util.Date;
import java.util.List;

import vo.Photo_Shoot;
import vo.Sign_Together;
import vo.Together;

public class TogetherDAO implements TogetherDaoInterface {

	@Override
	public Together togetherList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Together togetherDetail(String together_info) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Sign_Together photoCollection() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int pay(String together_info) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int charge(int money) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Together certifyT(Photo_Shoot ps) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Together createT(Together t) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Together updateT(Together t) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int checkPS(Date day, String id, String together_no) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Photo_Shoot> name_vw(String nickname) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Photo_Shoot> category_vw(String cName) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Photo_Shoot> id_vw(String id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
