package control.together;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import exception.FindException;
import service.TogetherService;
import vo.Photo_Shoot;

/**
 * Servlet implementation class TogetherSearchServlet
 */

@WebServlet(name = "PhotoSearchServlet", urlPatterns = { "/photosearch" })
public class TogetherSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json;charset=utf-8");
		TogetherService service = new TogetherService();
		PrintWriter out= response.getWriter();
		String option = request.getParameter("option");
		String content = request.getParameter("content");
		List<Photo_Shoot> pho_list= new ArrayList<Photo_Shoot>();
		if(option.equals("닉네임")) {
			option = "nickname";
		}else if(option.equals("카테고리")) {
			option = "category";
		}else if(option.equals("TOGETHER이름")){
			option = "info_name";
		}
		
		try {
			pho_list = service.searchPhoto(option, content);
			List<Map> list = new ArrayList<>();
			
			for(Photo_Shoot pho:pho_list) {
				Map<String, Object> map_list = new HashMap();
				map_list.put("mem_profile_img",pho.getMember().getMem_profile_img());
				map_list.put("mem_nickname", pho.getMember().getMem_nickname());
				map_list.put("info_name",pho.getTogether().getInfo().getInfo_name());
				map_list.put("pho_no",pho.getPho_no());
				map_list.put("pho_good", pho.getPho_good());
				map_list.put("pho_impression",pho.getPho_impression());
				map_list.put("pho_like_cnt", pho.getPho_like_cnt());
				map_list.put("pho_upload_date", pho.getPho_upload_date());
				list.add(map_list);
			}
			ObjectMapper mapper = new ObjectMapper();
			out.print(mapper.writeValueAsString(list));
		} catch (FindException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


}
