package com.yedam.lms.hw;

import java.util.List;


public interface HWService {

	// 등록
	public void hwInsert(HWVO vo);

	// 수정
	public void hwUpdate(HWVO vo);

	// 삭제
	public void hwDelete(HWVO vo);

	// 단건조회
	public HWVO getHW(String hwnum);

	// 전체조회(학생용)
	public List<HWVO> getHWList(HWVO hw);

	// 전체조회(교수용)
	public List<HWVO> getHWListPro(HWVO hw);

}
