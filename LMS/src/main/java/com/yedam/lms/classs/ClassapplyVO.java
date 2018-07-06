package com.yedam.lms.classs;

public class ClassapplyVO {
	public String classapplynum;
	public String studentnum;
	public String classnum;
	public String score;
	public String classname;
	public String classtime;
	public String professorname;
	public String credit;
	public String studentname;
	public String professornum;
	public String pMessage;
	
	
	
	public ClassapplyVO(String studentnum, String classnum) {
		super();
		this.studentnum = studentnum;
		this.classnum = classnum;
	}
	public String getpMessage() {
		return pMessage;
	}
	public void setpMessage(String pMessage) {
		this.pMessage = pMessage;
	}
	public String getClassapplynum() {
		return classapplynum;
	}
	public void setClassapplynum(String classapplynum) {
		this.classapplynum = classapplynum;
	}
	public String getStudentnum() {
		return studentnum;
	}
	public void setStudentnum(String studentnum) {
		this.studentnum = studentnum;
	}
	public String getClassnum() {
		return classnum;
	}
	public void setClassnum(String classnum) {
		this.classnum = classnum;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	public String getClassname() {
		return classname;
	}
	public void setClassname(String classname) {
		this.classname = classname;
	}
	public String getClasstime() {
		return classtime;
	}
	public void setClasstime(String classtime) {
		this.classtime = classtime;
	}
	public String getProfessorname() {
		return professorname;
	}
	public void setProfessorname(String professorname) {
		this.professorname = professorname;
	}
	public String getCredit() {
		return credit;
	}
	public void setCredit(String credit) {
		this.credit = credit;
	}
	public String getStudentname() {
		return studentname;
	}
	public void setStudentname(String studentname) {
		this.studentname = studentname;
	}
	public String getProfessornum() {
		return professornum;
	}
	public void setProfessornum(String professornum) {
		this.professornum = professornum;
	}
	@Override
	public String toString() {
		return "ClassapplyVO [classapplynum=" + classapplynum + ", studentnum=" + studentnum + ", classnum=" + classnum
				+ ", score=" + score + ", classname=" + classname + ", classtime=" + classtime + ", professorname="
				+ professorname + ", credit=" + credit + ", studentname=" + studentname + ", professornum="
				+ professornum + ", pMessage=" + pMessage + "]";
	}
	
	
	
	
	
}