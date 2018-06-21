package com.yedam.web.classs.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.web.classs.LectureService;
import com.yedam.web.classs.LectureVO;

@Service("lectureService")
public class LectureServiceImpl implements LectureService {

	@Autowired
	LectureDAO dao;
	
	
	@Override
	public boolean insertClassapply(LectureVO vo) {
		return false;
		
	}

	@Override
	public void updateClassapply(LectureVO vo) {
		
	}

	@Override
	public void deleteClassapply(String classapplynum) {
		
	}

	@Override
	public LectureVO getClassapply(String classapplynum) {
		return dao.getClassapply(classapplynum);
	}

	@Override
	public LectureVO cnClassapply(String classnum) {
		return dao.cnClassapply(classnum);
	}

	@Override
	public List<LectureVO> getClassapplyList(LectureVO vo) {
		return dao.getClassapplyList(vo);
	}

	@Override
	public boolean getClassapplyListcheck(LectureVO vo) {
		return true;
	}

	@Override
	public LectureVO getschedulePro(LectureVO vo) {
		return dao.getschedulePro(vo);
	}

	@Override
	public LectureVO getcanum(LectureVO vo) {
		return dao.getcanum(vo);
	}

}
