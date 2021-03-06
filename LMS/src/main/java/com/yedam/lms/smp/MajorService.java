package com.yedam.lms.smp;

import java.util.List;
import java.util.Map;

public interface MajorService {

	
	//학과 단건 조회
	public MajorVO getMajor(String majornum); 
	//학과 전체 조회
	public List<Map<String,Object>> getMajorList(MajorVO vo);
	//학과 수정
	public void updateMajor(MajorVO vo);
	//학과 삭제
	public void deleteMajor(MajorVO vo);
	//학과 등록
	public void insertMajor(MajorVO vo);
	//학과 건수
	public int majorCount(MajorVO vo);
	
}
