package com.yedam.web.classs.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.web.classs.ClassSearchVO;
import com.yedam.web.classs.ClassService;
import com.yedam.web.classs.ClassVO;

@Service("classService")
public class ClassServiceImpl implements ClassService{
	
	@Autowired
	ClassDAO dao;

	@Override
	public ClassVO getClass(String classnum) {
		return dao.getClass(classnum);
	}

	@Override
	public List<Map<String, Object>> getClassList(ClassVO classVO) {
		return dao.getClassList(classVO);
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

}
