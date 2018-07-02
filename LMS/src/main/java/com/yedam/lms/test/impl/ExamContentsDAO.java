package com.yedam.lms.test.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.lms.test.ExamContentsVO;

@Repository
public class ExamContentsDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	public void examContentsInsert(ExamContentsVO examVO) {
		mybatis.insert("com.yedam.lms.test.impl.ExamContentsDAO.examContentsInsert",examVO);
	}

	public ExamContentsVO getExamSub(String Testnum) {
		return mybatis.selectOne("com.yedam.lms.test.impl.ExamContentsDAO.getExamSub", Testnum);
	}

	public ExamContentsVO getexamContents(String examconnum) {
		return mybatis.selectOne("com.yedam.lms.test.impl.ExamContentsDAO.getexamContents", examconnum);
	}

	public void examContentsUpdate(ExamContentsVO examVO) {
		mybatis.update("com.yedam.lms.test.impl.ExamContentsDAO.examContentsUpdate", examVO);
	}

	public List<ExamContentsVO> getExamList(String testnum){
		return mybatis.selectList("com.yedam.lms.test.impl.ExamContentsDAO.getExamList", testnum);
	}
	
}
