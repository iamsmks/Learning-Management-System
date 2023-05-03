package role_based_login_java;

import java.util.*;

public class course {
	private String name;
	private String description;
	private List<Assignment> assignments;
	private List<Quiz> quizzes;
	
	public course(String name, String description, List<Assignment> assignments, List<Quiz> quizzes) {
		this.name = name;
		this.description = description;
		this.assignments = assignments;
		this.quizzes = quizzes;
	}
	
	public String getName() {
		return name;
	}
	
	public String getDescription() {
		return description;
	}
	
	public List<Assignment> getAssignments() {
		return assignments;
	}
	
	public List<Quiz> getQuizzes() {
		return quizzes;
	}
	
	// Other getters and setters as needed
}

public class Assignment {
	private String name;
	private String url;
	
	public Assignment(String name, String url) {
		this.name = name;
		this.url = url;
	}
	
	public String getName() {
		return name;
	}
	
	public String getUrl() {
		return url;
	}
	
	// Other getters and setters as needed
}

public class Quiz {
	private String name;
	private String url;
	
	public Quiz(String name, String url) {
		this.name = name;
		this.url = url;
	}
	
	public String getName() {
		return name;
	}
	
	public String getUrl() {
		return url;
	}
	
	// Other getters and setters as needed
}
