package test;

import java.sql.SQLException;

import dao.QuestionDAO;

public class Test {

	public static void main(String[] args) throws SQLException {
//		CHECK THEME
		String theme = "GENERAl";
		QuestionDAO dao = new QuestionDAO();
		boolean isThemeExist = dao.checkTheme(theme);
		int id = 10;
		int gans = dao.selectGoodAnswer(id);
		System.out.println("ID: "+id+" CORRECT ANSWER "+gans+"\n");
		if(isThemeExist)System.out.println("\nThe theme "+theme+" exists!!");
		else System.out.println("\nThe theme "+theme+" doesn't exist!!");
	}

}
