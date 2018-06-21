package com.yedam.lms.hw;
/*
 * 
 * VO(Value Object), DO(DATA Object), DTO
 * 
 */
public class AddFileVO {
	private String addfileid;
	private String addfilename;
	private String addfilesize;
	private String status;
	
	
	
	public AddFileVO() {
		super();
	}
	public AddFileVO(String addfileid, String addfilename, String addfilesize, String status) {
		super();
		this.addfileid = addfileid;
		this.addfilename = addfilename;
		this.addfilesize = addfilesize;
		this.status = status;
		
	}
	public String getAddfileid() {
		return addfileid;
	}
	public void setAddfileid(String addfileid) {
		this.addfileid = addfileid;
	}
	public String getAddfilename() {
		return addfilename;
	}
	public void setAddfilename(String addfilename) {
		this.addfilename = addfilename;
	}
	public String getAddfilesize() {
		return addfilesize;
	}
	public void setAddfilesize(String addfilesize) {
		this.addfilesize = addfilesize;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	



}



