package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.LoginModel;
import dao.LoginDAO;


@WebServlet(urlPatterns={"/login"})
public class LoginServlet extends HttpServlet {
	private LoginDAO loginDao;

    public void init() {
        loginDao = new LoginDAO();
    }
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("admin/login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
        String password = request.getParameter("password");
        LoginModel loginModel = new LoginModel();
        loginModel.setUsername(username);
        loginModel.setPassword(password);

        try {
            if (loginDao.validate(loginModel)) {
                HttpSession session = request.getSession();
                session.setAttribute("username",username);
                response.sendRedirect("admin/welcome.jsp");
            } else {
                request.setAttribute("error", "Your username or password is incorrect!");
                request.getRequestDispatcher("admin/login.jsp").forward(request, response);
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
	}

}
