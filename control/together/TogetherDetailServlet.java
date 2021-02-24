package control.together;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.TogetherService;

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
		service.togetherDetail(tog_no);
	}



}
