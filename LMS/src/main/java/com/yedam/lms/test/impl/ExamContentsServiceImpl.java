package com.yedam.lms.test.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.lms.classs.impl.ClassapplyDAO;
import com.yedam.lms.test.ExamContentsService;
import com.yedam.lms.test.ExamContentsVO;

@Service("ExamContentsService")
public class ExamContentsServiceImpl implements ExamContentsService{

	@Autowired
	ExamContentsDAO dao;
	
	@Override
	public void examContentsInsert(ExamContentsVO examVO) {
		dao.examContentsInsert(examVO);
		
	}

	@Override
	public ExamContentsVO getExamSub(String Testnum) {
		return dao.getExamSub(Testnum);
	}

	@Override
	public ExamContentsVO getexamContents(String examconnum) {
		return dao.getexamContents(examconnum);
	}

	@Override
	public void examContentsUpdate(ExamContentsVO examVO) {
		dao.examContentsUpdate(examVO);
	}

	@Override
	public List<ExamContentsVO> getExamList(String testnum) {
		return dao.getExamList(testnum);
	}

}
