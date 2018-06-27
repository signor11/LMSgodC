package com.yedam.lms.result.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.lms.classs.ClassapplyVO;
import com.yedam.lms.classs.impl.ClassapplyDAO;
import com.yedam.lms.result.TestResultService;
import com.yedam.lms.result.TestResultVO;
//작성자 김혜민
@Service("testresultService")
public class TestResultImpl implements TestResultService{

	@Autowired
	TestResultDAO dao;
	@Autowired
	ClassapplyDAO applydao;
	
	@Override
	public void insertTestResult(TestResultVO vo) {
		dao.getTestresultList(vo);
	}
	//온라인 성적 업데이트
	@Override
	public void updateTestResult(TestResultVO vo) {
		dao.updateTestResult(vo);
	}
	
	//과목 성적 업데이트

	@Override
	public void updateClassapply(ClassapplyVO vo) {
		applydao.updateClassapply(vo);
	}
	
	@Override
	public TestResultVO gettestresult(TestResultVO vo) {
		return dao.gettestresult(vo);
	}
	//교수 성적 조회
	@Override
	public List<TestResultVO> getTestresultList(TestResultVO vo) {
		return dao.getTestresultList(vo);
	}
	//학생성적 조회
	@Override
	public List<TestResultVO> gettestresultListstu(TestResultVO vo) {
		return dao.gettestresultListstu(vo);
	}
	//성적표 출력
	@Override
	public List<TestResultVO> gettransList(TestResultVO vo) {
		return dao.gettransList(vo);
	}
	
	
	
}
