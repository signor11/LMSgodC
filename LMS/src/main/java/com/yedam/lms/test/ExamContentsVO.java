package com.yedam.lms.test;

public class ExamContentsVO {
	private String examcon;
	private String show1;
	private String show2;
	private String show3;
	private String show4;
	private String answer;
	private String testnum;
	private String addfileid;
	private String testpoint;
	private String examconnum;
	private String psum;
	private String cnt;
	
	@Override
	public String toString() {
		return "ExamContentsVO [examcon=" + examcon + ", show1=" + show1 + ", show2=" + show2 + ", show3=" + show3
				+ ", show4=" + show4 + ", answer=" + answer + ", testnum=" + testnum + ", addfileid=" + addfileid
				+ ", testpoint=" + testpoint + ", examconnum=" + examconnum + ", psum=" + psum + ", cnt=" + cnt + "]";
	}

	public String getPsum() {
		return psum;
	}

	public void setPsum(String psum) {
		this.psum = psum;
	}

	public String getCnt() {
		return cnt;
	}

	public void setCnt(String cnt) {
		this.cnt = cnt;
	}

	public ExamContentsVO(String psum, String cnt) {
		super();
		this.psum = psum;
		this.cnt = cnt;
	}

	public ExamContentsVO(String examcon, String show1, String show2, String show3, String show4, String answer,
			String testnum, String addfileid, String testpoint, String examconnum) {
		super();
		this.examcon = examcon;
		this.show1 = show1;
		this.show2 = show2;
		this.show3 = show3;
		this.show4 = show4;
		this.answer = answer;
		this.testnum = testnum;
		this.addfileid = addfileid;
		this.testpoint = testpoint;
		this.examconnum = examconnum;
	}

	public ExamContentsVO() {
		super();
	}


	public String getExamcon() {
		return examcon;
	}


	public void setExamcon(String examcon) {
		this.examcon = examcon;
	}


	public String getShow1() {
		return show1;
	}


	public void setShow1(String show1) {
		this.show1 = show1;
	}


	public String getShow2() {
		return show2;
	}


	public void setShow2(String show2) {
		this.show2 = show2;
	}


	public String getShow3() {
		return show3;
	}


	public void setShow3(String show3) {
		this.show3 = show3;
	}


	public String getShow4() {
		return show4;
	}


	public void setShow4(String show4) {
		this.show4 = show4;
	}


	public String getAnswer() {
		return answer;
	}


	public void setAnswer(String answer) {
		this.answer = answer;
	}


	public String getTestnum() {
		return testnum;
	}


	public void setTestnum(String testnum) {
		this.testnum = testnum;
	}


	public String getAddfileid() {
		return addfileid;
	}


	public void setAddfileid(String addfileid) {
		this.addfileid = addfileid;
	}


	public String getTestpoint() {
		return testpoint;
	}


	public void setTestpoint(String testpoint) {
		this.testpoint = testpoint;
	}


	public String getExamconnum() {
		return examconnum;
	}


	public void setExamconnum(String examconnum) {
		this.examconnum = examconnum;
	}
	
	
}
