package com.yedam.result;

public class TestResultVO {
	private String testresultNum;
	private String testNum;
	private String testScore;
	private String classapplyNum;
	private String classNum;
	private String credit;
	private String classname;
	private String studentName;
	private String studentNum;
	private String score;
	private String professorName;
	private String grade;	//등급 function
	private String scoret;	//학점 function
	
	public String getTestresultNum() {
		return testresultNum;
	}
	public void setTestresultNum(String testresultNum) {
		this.testresultNum = testresultNum;
	}
	public String getTestNum() {
		return testNum;
	}
	public void setTestNum(String testNum) {
		this.testNum = testNum;
	}
	public String getTestScore() {
		return testScore;
	}
	public void setTestScore(String testScore) {
		this.testScore = testScore;
	}
	public String getClassapplyNum() {
		return classapplyNum;
	}
	public void setClassapplyNum(String classapplyNum) {
		this.classapplyNum = classapplyNum;
	}
	
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getScoret() {
		return scoret;
	}
	public void setScoret(String scoret) {
		this.scoret = scoret;
	}
	
	public String getClassNum() {
		return classNum;
	}
	public void setClassNum(String classNum) {
		this.classNum = classNum;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getStudentNum() {
		return studentNum;
	}
	public void setStudentNum(String studentNum) {
		this.studentNum = studentNum;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	
	public String getCredit() {
		return credit;
	}
	public void setCredit(String credit) {
		this.credit = credit;
	}
	public String getClassname() {
		return classname;
	}
	public void setClassname(String classname) {
		this.classname = classname;
	}
	public String getProfessorName() {
		return professorName;
	}
	public void setProfessorName(String professorName) {
		this.professorName = professorName;
	}
	@Override
	public String toString() {
		return "TestResultVO [testresultNum=" + testresultNum + ", testNum=" + testNum + ", testScore=" + testScore
				+ ", classapplyNum=" + classapplyNum + ", classNum=" + classNum + ", credit=" + credit + ", classname="
				+ classname + ", studentName=" + studentName + ", studentNum=" + studentNum + ", score=" + score
				+ ", professorName=" + professorName + ", grade=" + grade + ", scoret=" + scoret + "]";
	}
	
	
	
	
}
