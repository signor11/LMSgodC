package com.yedam.web.classs;

import java.util.List;

public interface LectureService {
	//강의 신청
	public boolean insertClassapply(LectureVO vo);
	
	//강의 수정
	public void updateClassapply(LectureVO vo);
	
	//강의 삭제
	
	public void deleteClassapply(String classapplynum);
	
	//단건 강의 조회
	
	public LectureVO getClassapply(String classapplynum);
	
	//(Classnum 기준) 학생 강의 조회
	
	public LectureVO cnClassapply(String classnum);
	
	//전체 강의 조회
	
	public List<LectureVO> getClassapplyList(LectureVO vo);
	
	//학생 강의 체크
	
	public boolean getClassapplyListcheck(LectureVO vo);
	
	//교수 시간표 조회
	
	public LectureVO getschedulePro(LectureVO vo);
	
	//수강 신청 번호 조회
	
	public LectureVO getcanum(LectureVO vo);
}
