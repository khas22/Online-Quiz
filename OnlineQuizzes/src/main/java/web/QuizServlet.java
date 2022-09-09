package web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.QuestionDAO;
import model.FailedQuestion;
import model.Question;

@WebServlet("/quiz")
public class QuizServlet extends HttpServlet {
private QuestionDAO questionDAO;
	
	public void init() {
		questionDAO = new QuestionDAO();
	}
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String theme = request.getParameter("topic");
		List<Question> quizQuestions = null;
		try {
			boolean isThemeExist = questionDAO.checkTheme(theme);
			if(isThemeExist) {
				quizQuestions = (List<Question>) questionDAO.selectQuestionsByTheme(theme);
				request.setAttribute("quizQuestions", quizQuestions);
				RequestDispatcher dispatcher = request.getRequestDispatcher("quiz-form.jsp");
				dispatcher.forward(request, response);
//				response.getWriter().append(theme.toUpperCase()+" QUIZ FORM").append(request.getContextPath());
			}else {
				request.setAttribute("topic", theme);
				RequestDispatcher dispatcher = request.getRequestDispatcher("errorTopic.jsp");
				dispatcher.forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idQuestion1 = Integer.parseInt(request.getParameter("id1"));
		int idQuestion2 = Integer.parseInt(request.getParameter("id2"));
		int idQuestion3 = Integer.parseInt(request.getParameter("id3"));
		int idQuestion4 = Integer.parseInt(request.getParameter("id4"));
		int idQuestion5 = Integer.parseInt(request.getParameter("id5"));
		int[] questionIds = {idQuestion1,idQuestion2,idQuestion3,idQuestion4,idQuestion5};
		
		//Answers
		int ans1 = Integer.parseInt(request.getParameter("question1"));
		int ans2 = Integer.parseInt(request.getParameter("question2"));
		int ans3 = Integer.parseInt(request.getParameter("question3"));
		int ans4 = Integer.parseInt(request.getParameter("question4"));
		int ans5 = Integer.parseInt(request.getParameter("question5"));
		
		// Table of answers
		int[] answers = {ans1,ans2,ans3,ans4,ans5};
		int score = 0;
		List<Question> listQuestions = new ArrayList<>();
		List<FailedQuestion> failedQuestions = new ArrayList<>();
		List<String> goodAnswers = new ArrayList<>();
		
		String motivationWords = "";
		// This loop is for checking answers from the database
		for(int i = 0; i < 5; i++) {
			try {
				int goodAnswer = questionDAO.selectGoodAnswer(questionIds[i]);
				listQuestions.add(questionDAO.selectQuestion(questionIds[i]));
				//List of answers
				switch(listQuestions.get(i).getGoodAnswer()) {
				case 1:
					goodAnswers.add(listQuestions.get(i).getAnswer1());
					break;
				case 2:
					goodAnswers.add(listQuestions.get(i).getAnswer2());
					break;
				case 3:
					goodAnswers.add(listQuestions.get(i).getAnswer3());
					break;
				default:
					goodAnswers.add(listQuestions.get(i).getAnswer4());
					break;
				}
				
				if(goodAnswer == answers[i])score ++;
				else {
					failedQuestions.add(new FailedQuestion(listQuestions.get(i).getQuestion(), goodAnswers.get(i)));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		switch(score) {
		case 0:
			motivationWords = "F";
			break;
		case 1:
			motivationWords = "E";
			break;
		case 2:
			motivationWords = "D";
			break;
		case 3:
			motivationWords = "C";
			break;
		case 4:
			motivationWords = "B";
			break;
		default:
			motivationWords = "A";
			break;
	}
		System.out.println(listQuestions);
		System.out.println();
		System.out.println();
		System.out.println(listQuestions.get(1).getAnswer1());
		System.out.println();
		System.out.println();
		System.out.println(failedQuestions);
		System.out.println();
		System.out.println();
		System.out.println(goodAnswers);
		
		request.setAttribute("score", score);
		request.setAttribute("motivation", motivationWords);
		request.setAttribute("failedQuestions", failedQuestions);
		request.setAttribute("correction", goodAnswers);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
		dispatcher.forward(request, response);
//		response.getWriter().append("YOUR SCORE -> "+score+ "MENTION "+motivationWords).append(request.getContextPath());
		
	}

}
