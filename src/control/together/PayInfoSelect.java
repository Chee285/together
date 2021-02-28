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
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.databind.ObjectMapper;

import exception.FindException;
import service.TogetherService;
import vo.Member;
import vo.Together;

/**
 * Servlet implementation class PayInfoSelect
 */
@WebServlet("/payinfo")
public class PayInfoSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tog_no  =request.getParameter("tog_no");
		response.setContentType("application/json;charset=utf-8");
		TogetherService service = new TogetherService();
		PrintWriter out = response.getWriter();
		
		try {
			Together tog=service.infoSelect(tog_no);
			
			ObjectMapper mapper = new ObjectMapper();
			
			
			out.print(mapper.writeValueAsString(tog));
		
		} catch (FindException e) {
			// 해당 정보가 없을경우
			e.printStackTrace();
			
		}
		
	}

}
