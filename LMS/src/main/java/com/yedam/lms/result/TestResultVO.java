package com.yedam.lms.result;

public class TestResultVO {
	private String testresultnum;
	private String testnum;
	private String testscore;
	private String classapplynum;
	private String classnum;
	private String credit;
	private String classname;
	private String studentname;
	private String studentnum;
	private String score;
	private String professorname;
	private String grade;	//등급 function
	private String scoret;	//학점 function
	public String getTestresultnum() {
		return testresultnum;
	}
	public void setTestresultnum(String testresultnum) {
		this.testresultnum = testresultnum;
	}
	public String getTestnum() {
		return testnum;
	}
	public void setTestnum(String testnum) {
		this.testnum = testnum;
	}
	public String getTestscore() {
		return testscore;
	}
	public void setTestscore(String testscore) {
		this.testscore = testscore;
	}
	public String getClassapplynum() {
		return classapplynum;
	}
	public void setClassapplynum(String classapplynum) {
		this.classapplynum = classapplynum;
	}
	public String getClassnum() {
		return classnum;
	}
	public void setClassnum(String classnum) {
		this.classnum = classnum;
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
	public String getStudentname() {
		return studentname;
	}
	public void setStudentname(String studentname) {
		this.studentname = studentname;
	}
	public String getStudentnum() {
		return studentnum;
	}
	public void setStudentnum(String studentnum) {
		this.studentnum = studentnum;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	public String getProfessorname() {
		return professorname;
	}
	public void setProfessorname(String professorname) {
		this.professorname = professorname;
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
	@Override
	public String toString() {
		return "TestResultVO [testresultnum=" + testresultnum + ", testnum=" + testnum + ", testscore=" + testscore
				+ ", classapplynum=" + classapplynum + ", classnum=" + classnum + ", credit=" + credit + ", classname="
				+ classname + ", studentname=" + studentname + ", studentnum=" + studentnum + ", score=" + score
				+ ", professorname=" + professorname + ", grade=" + grade + ", scoret=" + scoret + "]";
	}
	
	
	
	
}
