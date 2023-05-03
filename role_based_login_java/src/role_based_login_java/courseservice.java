package role_based_login_java;

import java.util.ArrayList;
import java.util.List;

public class courseservice {
    public course getCourse() {
        List<Assignment> assignments = new ArrayList<>();
        assignments.add(new Assignment("Assignment 1", "https://codingbat.com/java"));
        assignments.add(new Assignment("Assignment 2", "https://example.com/assignment2"));

        List<Quiz> quizzes = new ArrayList<>();
        quizzes.add(new Quiz("Quiz 1", "https://codingbat.com/java"));
        quizzes.add(new Quiz("Quiz 2", "https://example.com/quiz2"));

        return new course("Java Programming", "Learn how to program in Java", assignments, quizzes);
    }
}
