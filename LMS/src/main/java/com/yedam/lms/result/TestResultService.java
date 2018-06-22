package com.yedam.lms.result;

import java.util.List;

public interface TestResultService {
	
	//교수 성적 입력
	public void insertTestResult(String testscore, String testnum, String classapplynum);
	
	//교수 성적 수정
	public void updateTestResult(TestResultVO vo);
	
	//단건조회
	public TestResultVO gettestresult(TestResultVO vo);
	
	//교수 성적 조회
	public List<TestResultVO> gettestresultList(TestResultVO ts);
	
	//학생 성적 조회
	public List<TestResultVO> gettestresultListstu(TestResultVO vo);

	

	
}
