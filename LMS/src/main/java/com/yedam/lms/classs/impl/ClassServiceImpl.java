package com.yedam.lms.classs.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.lms.classs.ClassSearchVO;
import com.yedam.lms.classs.ClassService;
import com.yedam.lms.classs.ClassVO;

@Service("classService")
public class ClassServiceImpl implements ClassService{
	
	@Autowired
	ClassDAO dao;

	@Override
	public ClassVO getClass(String classnum) {
		return dao.getClass(classnum);
	}


	@Override
	public List<Map<String, Object>> stu_classnameList(String studentnum) {
		return dao.stu_classnameList(studentnum);
	}

	@Override
	public List<Map<String, Object>> pro_classnameList(String professornum) {
		return dao.pro_classnameList(professornum);
	}

	@Override
	public int count(ClassSearchVO classSearchVO) {
		return dao.count(classSearchVO);
	}

	@Override
	public void insertClass(ClassVO classVO) {
		dao.insertClass(classVO);
	}

	@Override
	public void updateClass(ClassVO classVO) {
		dao.updateClass(classVO);
	}
	
	@Override
	public void deleteClass(String classnum) {
		dao.deleteClass(classnum);
	}


	@Override
	public List<Map<String, Object>> getClassList2(String classnum) {
		
		return dao.getClassList2(classnum);
	}


	
}
