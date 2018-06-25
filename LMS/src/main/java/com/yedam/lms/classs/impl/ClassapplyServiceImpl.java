package com.yedam.lms.classs.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.lms.classs.ClassSearchVO;
import com.yedam.lms.classs.ClassVO;
import com.yedam.lms.classs.ClassapplyService;
import com.yedam.lms.classs.ClassapplyVO;

@Service("classapplyService")
public class ClassapplyServiceImpl implements ClassapplyService  {

	@Autowired
	ClassapplyDAO dao;
	@Autowired
	ClassDAO dao2;
	
	
	@Override
	public boolean insertClassapply(ClassapplyVO vo) {
		int a = dao.insertClassapply(vo);
		if (a==0) {
		return false;
		}
		else 
			return true;
	}

	@Override
	public void updateClassapply(ClassapplyVO vo) {
		
	}

	@Override
	public void deleteClassapply(String classapplynum) {
		
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
		return true;
	}

	@Override
	public ClassapplyVO getschedulePro(ClassapplyVO vo) {
		return dao.getschedulePro(vo);
	}

	@Override
	public ClassapplyVO getcanum(ClassapplyVO vo) {
		return dao.getcanum(vo);
	}

	@Override
	public ClassapplyVO checkclassapply(ClassapplyVO vo) {
		// TODO Auto-generated method stub
		return dao.checkclassapply(vo);
	}

	@Override
	public List<Map<String, Object>> getClassList(ClassSearchVO classsearchVO) {
		// TODO Auto-generated method stub
		return dao2.getClassList(classsearchVO);
	}

	
}
