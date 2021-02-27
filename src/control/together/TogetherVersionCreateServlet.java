package control.together;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.TogetherService;

/**
 * Servlet implementation class TogetherVersionCreate
 */
@WebServlet("/togetherversioncreate")
public class TogetherVersionCreateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TogetherService  service = new TogetherService();
				
		int info_no =Integer.parseInt(request.getParameter("info"));
		String start_date = request.getParameter("start");
		String end_date = request.getParameter("end");
		int certified = Integer.parseInt(request.getParameter("how"));
		System.out.println("certified : "+certified);
		int sub_certified = Integer.parseInt(request.getParameter("sub_how"));

		
		service.togetherVersionCreate(info_no,start_date, end_date, certified, sub_certified);
		
	}

}
