package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Question;

public class QuestionDAO {
	private String jdbcURL = "jdbc:mysql://localhost:3306/quiz?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "";

	private static final String INSERT_QUESTION_SQL = "INSERT INTO questions (question, answer_1, answer_2, answer_3, answer_4, theme, correct) VALUES (?, ?, ?, ?, ?, ?, ?);";
	private static final String SELECT_CHECK_THEME = "SELECT theme FROM questions WHERE theme = ?;";
	private static final String SELECT_CORRECT_ANSWER = "SELECT correct FROM questions WHERE id_question = ?;";
	private static final String SELECT_QUESTION_BY_ID = "select * from questions where id_question = ?;";
	private static final String SELECT_QUESTION_BY_THEME = "select * from questions where theme = ? order by rand() limit 5;";
	private static final String SELECT_ALL_QUESTIONS = "select * from questions";
	private static final String DELETE_QUESTION_SQL = "delete from questions where id_question = ?;";
	private static final String UPDATE_QUESTION_SQL = "UPDATE questions SET question =?, answer_1 =?, answer_2 =?, answer_3 =?, answer_4 =?, theme =?, correct =? WHERE id_question = ?;";

	public QuestionDAO() {
	}

	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}
	
	public int selectGoodAnswer(int id) throws SQLException {
		int goodAnswer = 0;
		try (Connection connection = getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CORRECT_ANSWER);) {
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet res = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			if (res.next()) goodAnswer = (res.getInt("correct"));
		} catch (SQLException e) {
			printSQLException(e);
		}
		return goodAnswer;
	}
	
	public boolean checkTheme(String theme) throws SQLException {
		boolean rowSelected = false;
		try (Connection connection = getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CHECK_THEME);) {
			preparedStatement.setString(1, theme);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet res = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			if (res.next()) rowSelected = true ;
			else rowSelected = false;
		} catch (SQLException e) {
			printSQLException(e);
		}
		return rowSelected;
	}

	public boolean insertQuestion(Question q) throws SQLException {
		boolean rowInserted = false;
		System.out.println(INSERT_QUESTION_SQL);
		// try-with-resource statement will auto close the connection.
		try (Connection connection = getConnection();
				PreparedStatement ps = connection.prepareStatement(INSERT_QUESTION_SQL)) {
			ps.setString(1,q.getQuestion());
			ps.setString(2,q.getAnswer1());
			ps.setString(3,q.getAnswer2());
			ps.setString(4,q.getAnswer3());
			ps.setString(5,q.getAnswer4());
			ps.setString(6,q.getTheme());
			ps.setInt(7,q.getGoodAnswer());
			System.out.println(ps);
			ps.executeUpdate();
			
			rowInserted = ps.executeUpdate() > 0;
		} catch (SQLException e) {
			printSQLException(e);
		}
		return rowInserted;
	}

	public Question selectQuestion(int id) {
		Question question = null;
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_QUESTION_BY_ID);) {
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet res = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (res.next()) {
				String answer1 = (res.getString("answer_1"));
				String answer2 = (res.getString("answer_2"));
				String answer3 = (res.getString("answer_3"));
				String answer4 = (res.getString("answer_4"));
				String questionStr = (res.getString("question"));
				int goodAnswer = (res.getInt("correct"));
				String theme = (res.getString("theme"));
				question = new Question(id, questionStr, answer1, answer2, answer3, answer4, theme, goodAnswer);
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return question;
	}
	
	public List<Question> selectQuestionsByTheme(String theme) {
		List<Question> questions = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_QUESTION_BY_THEME);) {
			preparedStatement.setString(1, theme);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet res = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (res.next()) {
				int id = (res.getInt("id_question"));
				String answer1 = (res.getString("answer_1"));
				String answer2 = (res.getString("answer_2"));
				String answer3 = (res.getString("answer_3"));
				String answer4 = (res.getString("answer_4"));
				String questionStr = (res.getString("question"));
				int goodAnswer = (res.getInt("correct"));
				questions.add(new Question(id, questionStr, answer1, answer2, answer3, answer4, theme, goodAnswer));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return questions;
	}

	public List<Question> selectAllQuestions() {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<Question> questions = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();

				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_QUESTIONS);) {
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet res = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (res.next()) {
				int idQuestion = (res.getInt("id_question"));
				String answer1 = (res.getString("answer_1"));
				String answer2 = (res.getString("answer_2"));
				String answer3 = (res.getString("answer_3"));
				String answer4 = (res.getString("answer_4"));
				String questionStr = (res.getString("question"));
				int goodAnswer = (res.getInt("correct"));
				String theme = (res.getString("theme"));
				questions.add(new Question(idQuestion, questionStr, answer1, answer2, answer3, answer4, theme, goodAnswer));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return questions;
	}

	public boolean deleteQuestion(int id) throws SQLException {
		boolean rowDeleted;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_QUESTION_SQL);) {
			statement.setInt(1, id);
			rowDeleted = statement.executeUpdate() > 0;
		}
		return rowDeleted;
	}

	public boolean updateQuestion(Question q) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = getConnection();
				PreparedStatement ps = connection.prepareStatement(UPDATE_QUESTION_SQL);) {
			ps.setString(1,q.getQuestion());
			ps.setString(2,q.getAnswer1());
			ps.setString(3,q.getAnswer2());
			ps.setString(4,q.getAnswer3());
			ps.setString(5,q.getAnswer4());
			ps.setString(6,q.getTheme());
			ps.setInt(7,q.getGoodAnswer());
			ps.setInt(8,q.getIdQuestion());
			
			rowUpdated = ps.executeUpdate() > 0;
		}
		return rowUpdated;
	}

	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}

}
