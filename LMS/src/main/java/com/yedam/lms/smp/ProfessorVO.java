package com.yedam.lms.smp;

public class ProfessorVO {

	private String professornum;
	private String professorname;
	private String professorpw;
	private String professorphone;
	private String hiredate;
	private String majornum;
	private String majorname;
	private String cnt;
	
	
	public String getMajorname() {
		return majorname;
	}
	public void setMajorname(String majorname) {
		this.majorname = majorname;
	}
	public String getProfessorpw() {
		return professorpw;
	}
	public void setProfessorpw(String professorpw) {
		this.professorpw = professorpw;
	}
	public String getProfessornum() {
		return professornum;
	}
	public void setProfessornum(String professornum) {
		this.professornum = professornum;
	}
	public String getProfessorname() {
		return professorname;
	}
	public void setProfessorname(String professorname) {
		this.professorname = professorname;
	}
	public String getProfessorphone() {
		return professorphone;
	}
	public void setProfessorphone(String professorphone) {
		this.professorphone = professorphone;
	}
	public String getHiredate() {
		return hiredate;
	}
	public void setHiredate(String hiredate) {
		this.hiredate = hiredate;
	}
	public String getMajornum() {
		return majornum;
	}
	public void setMajornum(String majornum) {
		this.majornum = majornum;
	}
	
	public String getCnt() {
		return cnt;
	}
	public void setCnt(String cnt) {
		this.cnt = cnt;
	}
	@Override
	public String toString() {
		return "ProfessorVO [professornum=" + professornum + ", professorname=" + professorname + ", professorphone="
				+ professorphone + ", hiredate=" + hiredate + ", majornum=" + majornum + "]";
	}
	
	
}
