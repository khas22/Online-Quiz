package model;

public class FailedQuestion {
	private String question;
	private String answer;
	private String correct;
	
	public FailedQuestion(String question, String correct) {
		super();
		this.question = question;
		this.correct = correct;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getCorrect() {
		return correct;
	}
	public void setCorrect(String correct) {
		this.correct = correct;
	}
	
	
}
