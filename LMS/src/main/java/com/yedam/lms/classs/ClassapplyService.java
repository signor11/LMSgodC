 package com.yedam.lms.classs;

import java.util.List;
import java.util.Map;

import com.yedam.lms.result.TestResultVO;

public interface ClassapplyService {
	
	//중복 확인
	public boolean checkclassapply(ClassapplyVO vo);
	 
	//강의 신청
	public int insertClassapply(ClassapplyVO vo);
	
	//강의 수정
	public void updateClassapply(ClassapplyVO vo);
	
	//강의 삭제
	
	public void deleteClassapply(String classapplynum);
	
	//단건 강의 조회
	
	public ClassapplyVO getClassapply(String classapplynum);
	
	//(Classnum 기준) 학생 강의 조회
	
	public ClassapplyVO cnClassapply(String classnum);
	
	//전체 강의 조회
	
	public List<ClassapplyVO> getClassapplyList(ClassapplyVO vo);
	
	//학생 강의 체크
	
	public boolean getClassapplyListcheck(ClassapplyVO vo);
	
	//교수 시간표 조회
	
	public ClassapplyVO getSchedulepro(ClassapplyVO vo);
	
	//수강 신청 번호 조회
	
	public ClassapplyVO getcanum(ClassapplyVO vo);
	
	
	//전체 과목 조회
	public List<Map<String, Object>> getClassList(ClassSearchVO classsearchVO);
	
	//학생 시간표 조회
	public List<ClassapplyVO> getSchedule(ClassapplyVO vo);
	
}
