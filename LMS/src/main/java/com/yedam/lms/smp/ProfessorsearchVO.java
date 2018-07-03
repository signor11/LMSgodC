package com.yedam.lms.smp;

public class ProfessorsearchVO extends StudentVO{
	Integer start;
	Integer end;
	String classnum;
	private String t;
	
	public String getQ() {
		return t;
	}
	public void setQ(String t) {
		this.t = t;
	}
	public String getClassnum() {
		return classnum;
	}
	public void setClassnum(String classnum) {
		this.classnum = classnum;
	}
	public Integer getStart() {
		return start;
	}
	public void setStart(Integer start) {
		this.start = start;
	}
	public Integer getEnd() {
		return end;
	}
	public void setEnd(Integer end) {
		this.end = end;
	}
	
}