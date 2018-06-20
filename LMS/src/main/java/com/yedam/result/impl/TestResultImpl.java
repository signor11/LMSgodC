package com.yedam.result.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.result.TestResultService;
import com.yedam.result.TestResultVO;

@Service("testresultService")
public class TestResultImpl implements TestResultService{

	@Autowired
	TestResultDAO dao;

	@Override
	public void testResultInsert(String testscore, String testnum, String classapplynum) {
		
	}

	@Override
	public void testResultUpdate(TestResultVO vo) {
		
	}

	@Override
	public TestResultVO gettestresult(String testresultnum) {
		return dao.gettestresult(testresultnum);
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
