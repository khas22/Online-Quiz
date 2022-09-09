package web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.QuestionDAO;
import model.Question;

@WebServlet(urlPatterns={"/admin","/logout","/new","/insert","/edit","/update","/list","/delete"})
public class QuestionServlet extends HttpServlet {
	private QuestionDAO questionDAO;
	
	public void init() {
		questionDAO = new QuestionDAO();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();

		try {
			switch (action) {
			case "/admin":
				home(request, response);
				break;
			case "/logout":
				logoutUser(request, response);
				break;
			case "/new":
				showNewForm(request, response);
				break;
			case "/insert":
				insertQuestion(request, response);
				break;
			case "/delete":
				deleteQuestion(request, response);
				break;
			case "/edit":
				showEditForm(request, response);
				break;
			case "/update":
				updateQuestion(request, response);
				break;
			case "/list":
				listQuestions(request, response);
				break;
			default:
				error404(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}
	
	private void error404(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
    	
            response.sendRedirect("error404.jsp");
	}
	
	private void home(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
    	
            response.sendRedirect("index.jsp");
	}
	
    private void logoutUser(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
    	HttpSession session = request.getSession(false);
        if (session != null) {
            session.removeAttribute("user");
            session.invalidate();
            response.sendRedirect("login");
        }
	}

	private void listQuestions(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<Question> listQuestions = questionDAO.selectAllQuestions();
		request.setAttribute("listQuestions", listQuestions);
		RequestDispatcher dispatcher = request.getRequestDispatcher("admin/question-list.jsp");
		dispatcher.forward(request, response);
	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("admin/question-form.jsp");
		dispatcher.forward(request, response);
	}

	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Question existingQuestion = questionDAO.selectQuestion(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("admin/question-form.jsp");
		request.setAttribute("question", existingQuestion);
		dispatcher.forward(request, response);

	}

	private void insertQuestion(HttpServletRequest request, HttpServletResponse response)throws SQLException, IOException {
		String question = request.getParameter("question");
		String answer1 = request.getParameter("answer1");
		String answer2 = request.getParameter("answer2");
		String answer3 = request.getParameter("answer3");
		String answer4 = request.getParameter("answer4");
		boolean insert = false;
		int goodAnswer = Integer.parseInt(request.getParameter("goodAnswer"));
		String theme = request.getParameter("theme");
		Question newQuestion = new Question(question, answer1, answer2, answer3, answer4, theme, goodAnswer);
		insert = questionDAO.insertQuestion(newQuestion);
		HttpSession session = request.getSession();
		session.setAttribute("insert", "The addition of the question is a success!");
		response.sendRedirect("list");
	}

	private void updateQuestion(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String question = request.getParameter("question");
		String answer1 = request.getParameter("answer1");
		String answer2 = request.getParameter("answer2");
		String answer3 = request.getParameter("answer3");
		String answer4 = request.getParameter("answer4");
		String theme = request.getParameter("theme");
		boolean update = false;
		int goodAnswer = Integer.parseInt(request.getParameter("goodAnswer"));

		Question book = new Question(id, question, answer1, answer2, answer3, answer4, theme, goodAnswer);
		update = questionDAO.updateQuestion(book);
		HttpSession session = request.getSession();
		session.setAttribute("update", "The edition of the question occurred with success!");
		response.sendRedirect("list");
	}

	private void deleteQuestion(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		boolean delete = false;
		int id = Integer.parseInt(request.getParameter("id"));
		delete = questionDAO.deleteQuestion(id);
		HttpSession session = request.getSession();
		session.setAttribute("delete", "The suppression of the question is a success!");
		response.sendRedirect("list");
	}

}
