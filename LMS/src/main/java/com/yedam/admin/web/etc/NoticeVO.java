package com.yedam.admin.web.etc;

import org.springframework.web.multipart.MultipartFile;

public class NoticeVO {

	private String seq;
	private String title;
	private String writer;
	private String content;
	private String regdate;
	private int cnt;
	private String uploadfile;//data에 들어갈 파일
	//멀티 파트 파일
	MultipartFile tempuploadfile;//임시
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getUploadfile() {
		return uploadfile;
	}
	public void setUploadfile(String uploadfile) {
		this.uploadfile = uploadfile;
	}
	public MultipartFile getTempuploadfile() {
		return tempuploadfile;
	}
	public void setTempuploadfile(MultipartFile tempuploadfile) {
		this.tempuploadfile = tempuploadfile;
	}
	@Override
	public String toString() {
		return "NoticeVO [seq=" + seq + ", title=" + title + ", writer=" + writer + ", content=" + content
				+ ", regdate=" + regdate + ", cnt=" + cnt + ", uploadfile=" + uploadfile + ", tempuploadfile="
				+ tempuploadfile + "]";
	}
	
	
	
	
}
