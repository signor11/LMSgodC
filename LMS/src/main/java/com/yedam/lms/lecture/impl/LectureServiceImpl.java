package com.yedam.lms.lecture.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.lms.lecture.LectureService;
import com.yedam.lms.lecture.LectureVO;

@Service("lectureService")
public class LectureServiceImpl implements LectureService {

	@Autowired
	LectureDAO dao;
	
	
	@Override
	public boolean insertClassapply(LectureVO vo) {
		return ;
	}

	@Override
	public void updateClassapply(LectureVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteClassapply(String classapplynum) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public LectureVO getClassapply(String classapplynum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public LectureVO cnClassapply(String classnum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<LectureVO> getClassapplyList(LectureVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean getClassapplyListcheck(LectureVO vo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public LectureVO getschedulePro(LectureVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public LectureVO getcanum(LectureVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

}
