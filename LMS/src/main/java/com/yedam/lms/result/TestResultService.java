package com.yedam.lms.result;

import java.util.List;
import java.util.Map;

import com.yedam.lms.classs.ClassapplyVO;

//작성자 김혜민
public interface TestResultService {
	
	//교수 성적 입력
	public void insertTestResult(TestResultVO vo);
	
	//온라인 성적 수정
	public void updateTestResult(TestResultVO vo);
	
	//과목 성적 수정
	public void updateClassapply(ClassapplyVO vo);
	
	//단건조회
	public TestResultVO gettestresult(TestResultVO vo);
	
	//교수 성적 조회
	public List<TestResultVO> getTestresultList(TestResultVO vo);
	
	//학생 성적 조회
	public List<TestResultVO> gettestresultListstu(TestResultVO vo);
	
	/*//성적표 출력
	public List<TestResultVO> result(TestResultVO vo);*/
	

	

	
}
