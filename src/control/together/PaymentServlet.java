package control.together;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exception.AddException;
import exception.ModifyException;
import service.TogetherService;

/**
 * Servlet implementation class PaymentServlet
 */
@WebServlet("/paymenttogether")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String reqBal =request.getParameter("balance");
		int balance = Integer.parseInt(reqBal);
		String tog_no = request.getParameter("tog_no");
		String id = request.getParameter("id");
		
		TogetherService service = new TogetherService();
		try {
			service.pay(tog_no, balance, id);
		} catch (ModifyException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (AddException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
