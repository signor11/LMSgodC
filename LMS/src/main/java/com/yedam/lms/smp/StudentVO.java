package com.yedam.lms.smp;

public class StudentVO {
	private String studentnum;
	private String majornum;
	private String majorname;
	private String studentpw;
	private String studentname;
	private String studentphone;
	private String studentdate;
	private String startdate;
	private String usertype;
	private String page;
	
	
	
	
	public String getUsertype() {
		return usertype;
	}
	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}
	public String getStudentnum() {
		return studentnum;
	}
	public void setStudentnum(String studentnum) {
		this.studentnum = studentnum;
	}
	public String getMajornum() {
		return majornum;
	}
	public void setMajornum(String majornum) {
		this.majornum = majornum;
	}
	public String getStudentpw() {
		return studentpw;
	}
	public void setStudentpw(String studentpw) {
		this.studentpw = studentpw;
	}
	public String getStudentname() {
		return studentname;
	}
	public void setStudentname(String studentname) {
		this.studentname = studentname;
	}
	public String getStudentphone() {
		return studentphone;
	}
	public void setStudentphone(String studentphone) {
		this.studentphone = studentphone;
	}
	public String getStudentdate() {
		return studentdate;
	}
	public void setStudentdate(String studentdate) {
		this.studentdate = studentdate;
	}
	
	
	public String getMajorname() {
		return majorname;
	}
	public void setMajorname(String majorname) {
		this.majorname = majorname;
	}
	
	
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	
	public String getpage() {
		return page;
	}
	public void setpage(String page) {
		this.page = page;
	}
	@Override
	public String toString() {
		return "StudentVO [studentnum=" + studentnum + ", majornum=" + majornum + ", majorname=" + majorname
				+ ", studentpw=" + studentpw + ", studentname=" + studentname + ", studentphone=" + studentphone
				+ ", studentdate=" + studentdate + ", startdate=" + startdate + ", usertype=" + usertype + ", page="
				+ page + "]";
	}
	
	
	
	
	
	
	
	
	
}
