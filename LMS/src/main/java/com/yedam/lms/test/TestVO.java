package com.yedam.lms.test;


public class TestVO {
	private String testnum;
	private String testname;
	private String testdate;
	private String testinfo;
	private String classnum;
	private boolean check;
	private String testsum;
	private String testtime;
	private String testing;

	
	


	public TestVO(String testname, String testdate, String classnum, String testtime,
			String testing, String testnum) {
		super();
		this.testnum = testnum;
		this.testname = testname;
		this.testdate = testdate;
		this.classnum = classnum;
		this.testtime = testtime;
		this.testing = testing;
	}


	public String getTesttime() {
		return testtime;
	}


	public void setTesttime(String testtime) {
		this.testtime = testtime;
	}


	public String getTesting() {
		return testing;
	}


	public void setTesting(String testing) {
		this.testing = testing;
	}


	public String getTestsum() {
		return testsum;
	}


	public void setTestsum(String testsum) {
		this.testsum = testsum;
	}

	public TestVO() {
		super();
	}
	

	public TestVO(String testnum, String testname, String testdate, String testinfo, String classnum) {
		super();
		this.testnum = testnum;
		this.testname = testname;
		this.testdate = testdate;
		this.testinfo = testinfo;
		this.classnum = classnum;
	}


	public TestVO(String testnum, String testname, String testdate, boolean check) {
		super();
		this.testnum = testnum;
		this.testname = testname;
		this.testdate = testdate;
		this.check = check;
	}

	public TestVO(String testnum, String testname, String testdate,  String testinfo, String classnum,
			boolean check) {
		super();
		this.testnum = testnum;
		this.testname = testname;
		this.testdate = testdate;
		this.testinfo = testinfo;
		this.classnum = classnum;
		this.check = check;
	}


	public boolean getCheck() {
		return check;
	}

	public void setCheck(boolean check) {
		this.check = check;
	}

	public String getTestnum() {
		return testnum;
	}
	public void setTestnum(String testnum) {
		this.testnum = testnum;
	}
	public String getTestname() {
		return testname;
	}
	public void setTestname(String testname) {
		this.testname = testname;
	}
	public String getTestdate() {
		return testdate;
	}
	public void setTestdate(String testdate) {
		this.testdate = testdate;
	}

	public String getTestinfo() {
		return testinfo;
	}
	public void setTestinfo(String testinfo) {
		this.testinfo = testinfo;
	}
	public String getClassnum() {
		return classnum;
	}
	public void setClassnum(String classnum) {
		this.classnum = classnum;
	}
	
	
}
