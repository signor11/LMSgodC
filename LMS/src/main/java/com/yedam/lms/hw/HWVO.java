package com.yedam.lms.hw;
/*
 * 
 * VO(Value Object), DO(DATA Object), DTO
 * 
 */
public class HWVO {
	private String hwnum;
	private String applydate;
	private String hwname;
	private String hwinfo;
	private String classnum;
	private String submit;
	private String studentnum;
	private String professornum;
	
	
	
	public String getStudentnum() {
		return studentnum;
	}
	public void setStudentnum(String studentnum) {
		this.studentnum = studentnum;
	}
	public String getHwnum() {
		return hwnum;
	}
	public void setHwnum(String hwnum) {
		this.hwnum = hwnum;
	}
	public String getApplydate() {
		return applydate;
	}
	public void setApplydate(String applydate) {
		this.applydate = applydate;
	}
	public String getHwname() {
		return hwname;
	}
	public void setHwname(String hwname) {
		this.hwname = hwname;
	}
	public String getHwinfo() {
		return hwinfo;
	}
	public void setHwinfo(String hwinfo) {
		this.hwinfo = hwinfo;
	}
	public String getClassnum() {
		return classnum;
	}
	public void setClassnum(String classnum) {
		this.classnum = classnum;
	}
	public String getSubmit() {
		return submit;
	}
	public void setSubmit(String submit) {
		this.submit = submit;
	}
	public String getProfessornum() {
		return professornum;
	}
	public void setProfessornum(String professornum) {
		this.professornum = professornum;
	}
	@Override
	public String toString() {
		return "HWVO [hwnum=" + hwnum + ", applydate=" + applydate + ", hwname=" + hwname + ", hwinfo=" + hwinfo
				+ ", classnum=" + classnum + ", submit=" + submit + ", studentnum=" + studentnum + ", professornum="
				+ professornum + "]";
	}



}



