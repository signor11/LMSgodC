package com.yedam.lms.result.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.lms.result.TestResultService;
import com.yedam.lms.result.TestResultVO;

@Service("testresultService")
public class TestResultImpl implements TestResultService{

	@Autowired
	TestResultDAO dao;

	@Override
	public void insertTestResult(TestResultVO vo) {
		dao.gettestresultList(vo);
	}

	@Override
	public void updateTestResult(TestResultVO vo) {
		dao.gettestresultList(vo);
	}

	@Override
	public TestResultVO gettestresult(TestResultVO vo) {
		return dao.gettestresult(vo);
	}
	//교수 성적 조회
	@Override
	public List<TestResultVO> gettestResultList(TestResultVO vo) {
		return dao.gettestresultList(vo);
	}
	//학생성적 조회
	@Override
	public List<TestResultVO> gettestresultListstu(TestResultVO vo) {
		return dao.gettestresultListstu(vo);
	}

	
	
}
