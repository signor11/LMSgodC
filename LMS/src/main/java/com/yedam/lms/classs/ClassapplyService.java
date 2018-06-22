package com.yedam.lms.classs;

import java.util.List;

public interface ClassapplyService {
	
	//중복 확인
	public ClassapplyVO checkclassapply(ClassapplyVO vo);
	
	//강의 신청
	public boolean insertClassapply(ClassapplyVO vo);
	
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
	
	public ClassapplyVO getschedulePro(ClassapplyVO vo);
	
	//수강 신청 번호 조회
	
	public ClassapplyVO getcanum(ClassapplyVO vo);
}
