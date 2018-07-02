package com.yedam.lms.smp;

public class MajorVO {

	private String majornum;
	private String majorname;
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
	@Override
	public String toString() {
		return "MajorVO [majornum=" + majornum + ", majorname=" + majorname + "]";
	}
	
	
}
