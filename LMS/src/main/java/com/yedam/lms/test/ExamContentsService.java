package com.yedam.lms.test;

import java.util.List;

public interface ExamContentsService {
	
	public void examContentsInsert(ExamContentsVO examVO);

	public ExamContentsVO getExamSub(String Testnum);

	public ExamContentsVO getexamContents(String examconnum);

	public void examContentsUpdate(ExamContentsVO examVO);

	public List<ExamContentsVO> getExamList(String testnum);
	
}
