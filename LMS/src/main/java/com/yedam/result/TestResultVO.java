package com.yedam.result;

public class TestResultVO {
	private String testresultNum;
	private String testNum;
	private String testScore;
	private String classapplyNum;
	private String grade;
	private String scoret;
	
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
	@Override
	public String toString() {
		return "TestResultVO [testresultNum=" + testresultNum + ", testNum=" + testNum + ", testScore=" + testScore
				+ ", classapplyNum=" + classapplyNum + "]";
	}
	
	
	
}
