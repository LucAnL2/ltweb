package vn.iotstar.controllers.admin;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class HomeController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2224812508118643530L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    HttpSession session = req.getSession(false);
	    if (session == null || session.getAttribute("account") == null) {
	        RequestDispatcher rd = req.getRequestDispatcher("/LoginController");
	        rd.forward(req, resp);
	    } else {
	        req.getRequestDispatcher("/views/home.jsp").forward(req, resp);
	    }
	}


}
