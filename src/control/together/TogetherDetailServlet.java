package control.together;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exception.FindException;
import service.TogetherService;
import vo.Together;

/**
 * Servlet implementation class TogetherDetailServlet
 */
@WebServlet("/togetherdetail")
public class TogetherDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		TogetherService service = new TogetherService();
		String tog_no = request.getParameter("tog_no");
		int info_no = Integer.parseInt(request.getParameter("info_no"));
		
		System.out.println(info_no);
		if(info_no ==0) {
			try {
				Together t = service.togetherDetail(tog_no, info_no);
				request.setAttribute("together_detail",t);
				String path = "./togetherpage/together_detail.jsp";
				RequestDispatcher rd = request.getRequestDispatcher(path);
				rd.forward(request, response);
			
			} catch (FindException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			Together t;
			try {
				t = service.togetherDetail(tog_no, info_no);
				request.setAttribute("together_detail",t);
				String path = "./togetherpage/together_detail_version.jsp";
				RequestDispatcher rd = request.getRequestDispatcher(path);
				rd.forward(request, response);
			} catch (FindException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		
		
		
	}



}
