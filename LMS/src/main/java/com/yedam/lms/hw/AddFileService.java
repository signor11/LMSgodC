package com.yedam.lms.hw;

import java.util.List;


public interface AddFileService {

	// 등록
	public void AddFileInsert(String addfilename);

	// 수정
	public void addfileUpdate(AddFileVO vo);

	// 삭제
	public void addfileDelete(String addfileid);

	// 단건조회
	public AddFileVO getAddFile(String addfileid);

	// 전체조회
	public List<AddFileVO> getAddFileList(AddFileVO vo);
}
