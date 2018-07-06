package com.yedam.lms.result.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.lms.classs.ClassapplyVO;
import com.yedam.lms.result.TestResultVO;
//작성자 김혜민
@Repository
public class TestResultDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	//교수 성적 입력
	public void insertTestResult(TestResultVO vo) {
		mybatis.insert("testResultDAO.testResultInsert",vo);
	}
	
	public void testResultInsert(TestResultVO vo) {
		mybatis.insert("testResultDAO.testResultInsert",vo);
	}
	
	//온라인 성적 수정
	public void updateTestResult(TestResultVO vo) {
		mybatis.update("testResultDAO.updateTestResult",vo);
	}
	
	//과목 성적 수정
	public void updateClassapply(TestResultVO vo) {
		mybatis.update("testResultDAO.updateClassapply",vo);
	}
	//단건 조회
	public TestResultVO gettestresult(TestResultVO vo) {
		return mybatis.selectOne("testResultDAO.gettestresult",vo);
	}
	
	//교수 성적 조회
	public List<TestResultVO> getTestresultList(TestResultVO vo){
		return mybatis.selectList("testResultDAO.getTestresultList",vo);
	}
	
	//학생 성적 조회
	public List<TestResultVO> getTestresultListstu(TestResultVO vo){
		return mybatis.selectList("testResultDAO.getTestresultListstu",vo);
	}
	//성적표 출력
	public List<TestResultVO> getresult(TestResultVO vo){
		return mybatis.selectList("testResultDAO.getresult",vo);
	}
	
}
