package model;

import java.io.Serializable;

public class Question implements Serializable{
	private int idQuestion;
	private String question;
	private String answer1;
	private String answer2;
	private String answer3;
	private String answer4;
	private String theme;
	private int goodAnswer;
	
	
	public Question(int id, String question, String answer1, String answer2, String answer3, String answer4, String theme,
			int goodAnswer) {
		super();
		this.idQuestion = id;
		this.question = question;
		this.answer1 = answer1;
		this.answer2 = answer2;
		this.answer3 = answer3;
		this.answer4 = answer4;
		this.theme = theme;
		this.goodAnswer = goodAnswer;
	}
	
	public Question(String question, String answer1, String answer2, String answer3, String answer4, String theme,
			int goodAnswer) {
		super();
		this.question = question;
		this.answer1 = answer1;
		this.answer2 = answer2;
		this.answer3 = answer3;
		this.answer4 = answer4;
		this.theme = theme;
		this.goodAnswer = goodAnswer;
	}

	public int getIdQuestion() {
		return idQuestion;
	}
	public void setIdQuestion(int idQuestion) {
		this.idQuestion = idQuestion;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer1() {
		return answer1;
	}
	public void setAnswer1(String answer1) {
		this.answer1 = answer1;
	}
	public String getAnswer2() {
		return answer2;
	}
	public void setAnswer2(String answer2) {
		this.answer2 = answer2;
	}
	public String getAnswer3() {
		return answer3;
	}
	public void setAnswer3(String answer3) {
		this.answer3 = answer3;
	}
	public String getAnswer4() {
		return answer4;
	}
	public void setAnswer4(String answer4) {
		this.answer4 = answer4;
	}
	public String getTheme() {
		return theme;
	}
	public void setTheme(String theme) {
		this.theme = theme;
	}
	public int getGoodAnswer() {
		return goodAnswer;
	}
	public void setGoodAnswer(int goodAnswer) {
		this.goodAnswer = goodAnswer;
	}

	@Override
	public String toString() {
		return "Question [idQuestion=" + idQuestion + ", question=" + question + ", answer1=" + answer1 + ", answer2="
				+ answer2 + ", answer3=" + answer3 + ", answer4=" + answer4 + ", theme=" + theme + ", goodAnswer="
				+ goodAnswer + "]";
	}
	
	
}
