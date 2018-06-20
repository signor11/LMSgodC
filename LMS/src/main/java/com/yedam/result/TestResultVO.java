package com.yedam.lms.result;

public class TestResultVO {
	private String testresultNum;
	private String testNum;
	private String testScore;
	private String classapplyNum;
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
	@Override
	public String toString() {
		return "TestResultVO [testresultNum=" + testresultNum + ", testNum=" + testNum + ", testScore=" + testScore
				+ ", classapplyNum=" + classapplyNum + "]";
	}
	
	
	
}
