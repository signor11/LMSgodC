package com.yedam.lms.result;

import java.util.List;
import java.util.Map;

public interface TestResultService {
	
	//교수 성적 입력
	public void insertTestResult(TestResultVO vo);
	
	//교수 성적 수정
	public void updateTestResult(TestResultVO vo);
	
	//단건조회
	public TestResultVO gettestresult(TestResultVO vo);
	
	//교수 성적 조회
	public List<TestResultVO> getTestresultList(TestResultVO vo);
	
	//학생 성적 조회
	public List<TestResultVO> gettestresultListstu(TestResultVO vo);

	

	
}
