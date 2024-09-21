package vn.iotstar.controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.iotstar.models.UserModel;
import vn.iotstar.services.IUserService;
import vn.iotstar.services.impl.UserServiceImpl;

import java.io.IOException;

@WebServlet(urlPatterns = {"/forgotpass"})
public class ForgotPasswordController extends HttpServlet {

    private static final long serialVersionUID = 3699837414228474028L;

    IUserService userService = new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("views/forgotpassword.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        String username = req.getParameter("username");
        String email = req.getParameter("email");

        String alertMsg = "";

        if (username.isEmpty() || email.isEmpty()) {
            alertMsg = "Tên tài khoản và email không được để trống";
            req.setAttribute("alert", alertMsg);
            req.getRequestDispatcher("views/forgotpassword.jsp").forward(req, resp);
            return;
        }

        UserModel user = userService.findByUserNameAndEmail(username, email);
        if (user == null || !user.getEmail().equals(email)) {
            alertMsg = "Tài khoản hoặc email không đúng ";
            req.setAttribute("alert", alertMsg);
            req.getRequestDispatcher("views/forgotpassword.jsp").forward(req, resp);
            return;
        }

        if (user != null) {
            alertMsg = "Mật khẩu của bạn là: "+user.getPassword();
            req.setAttribute("alert", alertMsg);
            req.getRequestDispatcher("views/forgotpassword.jsp").forward(req, resp);
        } 
    }
}
