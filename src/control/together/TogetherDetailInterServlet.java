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
import vo.Together;

/**
 * Servlet implementation class TogetherDetailInterServlet
 */
@WebServlet("/together_version")
public class TogetherDetailInterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(1);
		// detail에 있던 모든 값을 가져와야함
		TogetherService service = new TogetherService();
		int info_no = Integer.parseInt(request.getParameter("info_no"));
		PrintWriter out = response.getWriter();
		List<Together> t;
		try {
			t = service.togetherDetailInsert(info_no);
//			request.setAttribute("together_version", t);
			List<Map> list= new ArrayList<>();
			for( Together t1 : t) {
				Map<String, Object> map_list = new HashMap();
				map_list.put("tog_version",t1.getTog_version());
				map_list.put("tog_people", t1.getTog_people());
				map_list.put("tog_sum", t1.getTog_sum());
				list.add(map_list);
			}
			
			
			ObjectMapper mapper = new ObjectMapper();
			
			
			out.print(mapper.writeValueAsString(list));
			
			
		} catch (FindException e) {
			out.print("해당하는 값이 없습니다.");
			
		}
		
		
	}

}
