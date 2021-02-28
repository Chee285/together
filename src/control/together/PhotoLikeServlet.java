package control.together;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exception.AddException;
import service.TogetherService;

/**
 * Servlet implementation class PhotoLikeServlet
 */
@WebServlet("/photolike")
public class PhotoLikeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		TogetherService service =  new TogetherService();
		String photo_no = request.getParameter("no");
		
		String id = "aran";
		try {
			int like_cnt =service.photoLike(photo_no, id);
			out.print(like_cnt);
		} catch (AddException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


}
