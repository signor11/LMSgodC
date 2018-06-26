package com.yedam.lms.hw;

import java.util.List;


public interface SubmitHWService {

	//과제등록
	public void submitHwInsert(SubmitHWVO vo);
	
	//과제파일등록(제출)
	public void addfileInsert(AddFileVO vo);
	
	//과제수정
	public void submitHwUpdate(SubmitHWVO vo);
	
	//파일수정
	public void addfileUpdate(AddFileVO vo);
	
	//과제삭제
	public void submitHwDelete(String submithwnum);
	
	//과제확인
	public SubmitHWVO getsubmitHw(SubmitHWVO vo);
	
	public List<SubmitHWVO> getsubmitHwList(SubmitHWVO sv);
}
