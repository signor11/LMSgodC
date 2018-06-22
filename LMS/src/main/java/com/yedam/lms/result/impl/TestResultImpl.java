package com.yedam.lms.result.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.lms.result.TestResultService;
import com.yedam.lms.result.TestResultVO;

@Service("testresultService")
public class TestResultImpl implements TestResultService{

	@Autowired
	TestResultDAO dao;

	@Override
	public void insertTestResult(String testscore, String testnum, String classapplynum) {
	
	}

	@Override
	public void updateTestResult(TestResultVO vo) {
	 
	}

	@Override
	public TestResultVO gettestresult(TestResultVO vo) {
		return dao.gettestresult(vo);
	}

	@Override
	public List<TestResultVO> gettestresultList(TestResultVO ts) {
		return dao.gettestresultList(ts);
	}

	@Override
	public List<TestResultVO> gettestresultListstu(TestResultVO vo) {
		return dao.gettestresultListstu(vo);
	}

	


	
	
}
