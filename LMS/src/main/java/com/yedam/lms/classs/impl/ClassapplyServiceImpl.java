package com.yedam.lms.classs.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.lms.classs.ClassSearchVO;
import com.yedam.lms.classs.ClassVO;
import com.yedam.lms.classs.ClassapplyService;
import com.yedam.lms.classs.ClassapplyVO;
import com.yedam.lms.result.TestResultVO;

@Service("classapplyService")
public class ClassapplyServiceImpl implements ClassapplyService  {

	@Autowired
	ClassapplyDAO dao;
	@Autowired
	ClassDAO dao2;
	
	
	@Override
	public int insertClassapply(ClassapplyVO vo) {
		
		//중복 과목 체크
		ClassapplyVO a = dao.getClassapplyListcheck(vo);
		if(a!=null) {
			return -2;
			//-2이면 중복이 아니다.
		} 
		// 최대학점 체크 (20학점)
		dao.maxCredit(vo);
		if (vo.getpMessage().equals("학점초과"))
			return -1;
		//수강등록
		return dao.insertClassapply(vo);
			

	}
	//성적 수정(김혜민)
	@Override
	public void updateClassapply(ClassapplyVO vo) {
		dao.updateClassapply(vo);
	}


	@Override
	public void deleteClassapply(String classapplynum) {
		dao.deleteClassapply(classapplynum);
	}

	@Override
	public ClassapplyVO getClassapply(String classapplynum) {
		return dao.getClassapply(classapplynum);
	}

	@Override
	public ClassapplyVO cnClassapply(String classnum) {
		return dao.cnClassapply(classnum);
	}

	@Override
	public List<ClassapplyVO> getClassapplyList(ClassapplyVO vo) {
		return dao.getClassapplyList(vo);
	}

	@Override
	public boolean getClassapplyListcheck(ClassapplyVO vo) {
		return false;
	}

	@Override
	public ClassapplyVO getSchedulepro(ClassapplyVO vo) {
		return dao2.getSchedulepro(vo);
	}

	@Override
	public ClassapplyVO getcanum(ClassapplyVO vo) {
		return dao.getcanum(vo);
	}

	@Override
	public boolean checkclassapply(ClassapplyVO vo) {
		int a = dao.checkclassapply(vo);
		if (a==0) {
		return false;
		}
		else 
			return true;
		
	}

	@Override
	public List<Map<String, Object>> getClassList(ClassSearchVO classsearchVO) {
		// TODO Auto-generated method stub
		return dao2.getClassList(classsearchVO);
	}
	



	@Override
	public List<ClassapplyVO> getSchedule(ClassapplyVO vo) {
		return dao.getClassapplyList(vo);
	}
	@Override
	public int getCountclass(ClassSearchVO classSearchVO) {
		return dao2.getCountclass(classSearchVO);
	}
	
}
