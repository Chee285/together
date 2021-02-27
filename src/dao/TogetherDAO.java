package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import exception.AddException;
import exception.FindException;
import exception.ModifyException;
import sql.MyConnection;
import vo.Member;
import vo.Photo_Shoot;
import vo.Sign_Together;
import vo.Together;
import vo.Together_Info;

public class TogetherDAO implements TogetherDaoInterface {

	@Override
	public Together togetherList() throws FindException {
		// TODO Auto-generated method stub
		return null;
	}

	// 투게더 상세
	@Override

	public Together togetherDetail(String together_info, int info_no) throws FindException {
		Connection con = null;
		try {
			con = MyConnection.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new FindException("디테일 찾기 실패 : " + e.getMessage());
		}
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select* from together t join together_info info on t.info_no = info.info_no where t.tog_no = ? or info.info_no=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, together_info);
			pstmt.setInt(2, info_no);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				String together_no = rs.getString("tog_no");

				int info_no1 = rs.getInt("info_no");
				String info_name = rs.getString("info_name");
				String info_how_confirm = rs.getString("info_how_confirm"); // 설명
				String info_intro = rs.getString("info_intro");
				String info_img = rs.getString("info_img");
				String pho_good = rs.getString("pho_good");
				String pho_bad = rs.getString("pho_bad");

				String tog_confirm_cnt = rs.getString("tog_confirm_cnt");
				String tog_start_date = rs.getString("tog_start_date");
				String tog_end_date = rs.getString("tog_end_date");
				Together_Info info = new Together_Info(info_no1, info_name, info_how_confirm, info_img, info_intro,
						pho_good, pho_bad);
				Together t = new Together(together_no, info, tog_start_date, tog_end_date, tog_confirm_cnt);

				return t;

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		throw new FindException("해당 TOGETHER는 없습니다.");
	}

	// 버전 페이지 select 사용
	@Override
	public List<Together> together_version(int info_no) throws FindException {
		Connection con = null;
		List<Together> version_list = new ArrayList<Together>();
		try {
			con = MyConnection.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select info_no, tog_version,tog_people, tog_sum from together where info_no =?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, info_no);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				Together t = new Together(rs.getInt("tog_version"), rs.getInt("tog_people"), rs.getInt("tog_sum"));
				version_list.add(t);
			}

			if (version_list.size() == 0) {
				throw new FindException("버전이 없습니다.");
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return version_list;

	}

	// together version을 생성합니다.
	@Override
	public void together_insert_version(int info_no, String start, String end, int certified, int sub_certified)
			throws AddException {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = MyConnection.getConnection();
			String max_version_sql = "select max(tog_version) as version from together where info_no =?";
			pstmt = con.prepareStatement(max_version_sql);
			pstmt.setInt(1, info_no);
			rs = pstmt.executeQuery();
			String new_version = info_no + "-1";
			int upVersion = 1;
			if (rs.next()) {
				int version = rs.getInt("version");
				upVersion = version + 1;
				new_version = info_no + "-" + upVersion;

			}

			String tog_info_insert_sql = "insert into together (tog_no, info_no, tog_version, tog_start_date, tog_end_date, tog_status, tog_confirm_cnt, tog_sub_cnt )  values(?,?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(tog_info_insert_sql);
			pstmt.setString(1, new_version);
			pstmt.setInt(2, info_no);
			pstmt.setInt(3, upVersion);
			pstmt.setString(4, start);
			pstmt.setString(5, end);
			pstmt.setInt(6, 1);
			pstmt.setInt(7, certified);
			pstmt.setInt(8, sub_certified);
			pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 인증모아보기에서 페이지 모든 인증샷
	@Override
	public List<Photo_Shoot> photoCollection() throws FindException {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		List<Photo_Shoot> photoShoot = new ArrayList<Photo_Shoot>();

		try {
			con = MyConnection.getConnection();
			String photoCollection_sql = "select* from photo_shoot_search_vw order by pho_upload_date desc";
			pstmt = con.prepareStatement(photoCollection_sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Member m = new Member(rs.getString("mem_profile_img"), rs.getString("mem_nickname"));

				Together_Info info = new Together_Info(rs.getString("info_name"));
				Together t = new Together(info);
				Photo_Shoot pho = new Photo_Shoot(m, t, rs.getString("pho_good"), rs.getString("pho_impression"),
						rs.getInt("pho_like_cnt"), rs.getString("pho_upload_date"));

				photoShoot.add(pho);

			}
			return photoShoot;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return photoShoot;

	}

	@Override
	public List<Photo_Shoot> searchPhoto(String option, String content) throws FindException {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		// 닉네임 검색
		String nickname_sql = "select* from photo_shoot_search_vw where mem_nickname like '%'||?||'%' order by pho_upload_date desc";
		// 카테고리 이름 검색
		String category_sql = "select* from photo_shoot_search_vw where cat_name like '%'||?||'%' order by pho_upload_date desc";
		// together 이름
		String tog_name_sql = "select* from photo_shoot_search_vw where info_name like '%'||?||'%' order by pho_upload_date desc";

		List<Photo_Shoot> pho_list = new ArrayList<Photo_Shoot>();
		try {
			con = MyConnection.getConnection();
			// option 에 따라 분류
			if (option.equals("nickname")) {
				pstmt = con.prepareStatement(nickname_sql);
			} else if (option.equals("category")) {
				pstmt = con.prepareStatement(category_sql);
			} else if (option.equals("info_name")) {
				pstmt = con.prepareStatement(tog_name_sql);
			}
			pstmt.setString(1, content);
			System.out.println(content);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Member m = new Member(rs.getString("mem_profile_img"), rs.getString("mem_nickname"));

				Together_Info info = new Together_Info(rs.getString("info_name"));
				Together t = new Together(info);
				Photo_Shoot pho = new Photo_Shoot(m, t, rs.getString("pho_good"), rs.getString("pho_impression"),
						rs.getInt("pho_like_cnt"), rs.getString("pho_upload_date"));

				pho_list.add(pho);
			}
			return pho_list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		throw new FindException("검색된 인증샷이 없습니다.");

	
	}

	@Override
	public int pay(String together_info) throws ModifyException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int charge(int money) throws ModifyException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Together certifyT(Photo_Shoot ps) throws AddException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Together createT(Together t) throws AddException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Together updateT(Together t) throws ModifyException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int checkPS(String day, String id, String together_no) throws FindException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Photo_Shoot> name_vw(String nickname) throws FindException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Photo_Shoot> category_vw(String cName) throws FindException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Photo_Shoot> id_vw(String id) throws FindException {
		// TODO Auto-generated method stub
		return null;
	}

}
