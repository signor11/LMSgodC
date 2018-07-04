package com.yedam.lms.poll;
/*
 * 
 * VO(Value Object), DO(DATA Object), DTO
 * 
 */
public class PollVO {
	private String pollid;
	private String questionnum;
	private String answer;
	private String studentnum;
	private String answercnt;
	
	
	
	
	
	
	
	
	public String getAnswercnt() {
		return answercnt;
	}
	public void setAnswercnt(String answercnt) {
		this.answercnt = answercnt;
	}
	public String getStudentnum() {
		return studentnum;
	}
	public void setStudentnum(String studentnum) {
		this.studentnum = studentnum;
	}
	public String getPollid() {
		return pollid;
	}
	public void setPollid(String pollid) {
		this.pollid = pollid;
	}
	public String getQuestionnum() {
		return questionnum;
	}
	public void setQuestionnum(String questionnum) {
		this.questionnum = questionnum;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	@Override
	public String toString() {
		return "PollVO [pollid=" + pollid + ", questionnum=" + questionnum + ", answer=" + answer + ", studentnum="
				+ studentnum + ", answercnt=" + answercnt + "]";
	}
	
	

}



