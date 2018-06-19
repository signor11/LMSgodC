package com.yedam.web.classs.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.web.classs.ClassSearchVO;
import com.yedam.web.classs.ClassVO;
import com.yedam.web.emp.EmpVO;

@Repository
public class ClassDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	public ClassVO getClass(String classnum) {
		return mybatis.selectOne("com.yedam.web.classs.impl.ClassDAO.getClass", classnum);
	}
	
	public List<Map<String, Object>> getClassList(ClassVO classVO){
		return mybatis.selectList("com.yedam.web.classs.impl.ClassDAO.getClassList", classVO);
	}
	
	public List<Map<String, Object>> stu_classnameList(String studentnum){
		return mybatis.selectList("com.yedam.web.classs.impl.ClassDAO.stu_classnameList", studentnum);
	}
	public List<Map<String, Object>> pro_classnameList(String professornum){
		return mybatis.selectList("com.yedam.web.classs.impl.ClassDAO.pro_classnameList", professornum);
	}
	
	public int count(ClassSearchVO classSearchVO) {
		return mybatis.selectOne("com.yedam.web.classs.impl.ClassDAO.getClass", classSearchVO);
	}
	
	

	

}
