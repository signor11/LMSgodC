package com.yedam.lms.classs.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.lms.classs.ClassSearchVO;
import com.yedam.lms.classs.ClassVO;

@Repository
public class ClassDAO {

	@Autowired
	SqlSessionTemplate mybatis;

	public ClassVO getClass(String classnum) {
		return mybatis.selectOne("classDAO.getClass", classnum);
	}

	public List<Map<String, Object>> getClassList(ClassVO classVO) {
		return mybatis.selectList("classDAO.getClassList", classVO);
	}

	public List<Map<String, Object>> stu_classnameList(String studentnum) {
		return mybatis.selectList("classDAO.stu_classnameList", studentnum);
	}

	public List<Map<String, Object>> pro_classnameList(String professornum) {
		return mybatis.selectList("classDAO.pro_classnameList", professornum);
	}

	public int count(ClassSearchVO classSearchVO) {
		return mybatis.selectOne("classDAO.getClass", classSearchVO);
	}

}
