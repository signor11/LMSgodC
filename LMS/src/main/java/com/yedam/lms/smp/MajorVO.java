package com.yedam.lms.smp;

public class MajorVO {

	private String majornum;
	private String majorname;
	Integer start;
	Integer end; 

	public String getMajornum() {
		return majornum;
	}

	public void setMajornum(String majornum) {
		this.majornum = majornum;
	}

	public String getMajorname() {
		return majorname;
	}

	public void setMajorname(String majorname) {
		this.majorname = majorname;
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

	@Override
	public String toString() {
		return "MajorVO [majornum=" + majornum + ", majorname=" + majorname + ", start=" + start + ", end=" + end + "]";
	}

	

}
