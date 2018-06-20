package com.yedam.result;

import java.util.List;

public interface TestResultService {
	
	//교수 성적 입력
	public void testResultInsert(String testscore, String testnum,String classapplynum);
	
	//교수 성적 수정
	public void testResultUpdate(TestResultVO vo);
	
	//단건조회
	public TestResultVO gettestresult(TestResultVO vo);
	
	//교수 성적 조회
	public List<TestResultVO> gettestresultList(TestResultVO ts);
	
	//학생 성적 조회
	public List<TestResultVO> gettestresultList1(TestResultVO vo);
}
