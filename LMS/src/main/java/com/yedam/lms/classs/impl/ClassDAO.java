package com.yedam.lms.classs.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.lms.classs.ClassSearchVO;
import com.yedam.lms.classs.ClassVO;
import com.yedam.lms.classs.ClassapplyVO;

@Repository
public class ClassDAO {

	@Autowired
	SqlSessionTemplate mybatis;

	public ClassVO getClass(String classnum) {
		return mybatis.selectOne("com.yedam.lms.classs.impl.classDAO.getClass", classnum);
	}
	//전체 레코드 건수 조회
	public int getCountclass(ClassSearchVO classSearchVO) {
		return mybatis.selectOne("com.yedam.lms.classs.impl.classDAO.getCountclass", classSearchVO);
	}
		
	
	public List<Map<String, Object>> getClassList(ClassVO classVO) {
		return mybatis.selectList("com.yedam.lms.classs.impl.classDAO.getClassList", classVO);
	}

	public List<Map<String, Object>> stu_classnameList(String studentnum) {
		return mybatis.selectList("com.yedam.lms.classs.impl.classDAO.stu_classnameList", studentnum);
	}

	public List<Map<String, Object>> pro_classnameList(String professornum) {
		return mybatis.selectList("com.yedam.lms.classs.impl.classDAO.pro_classnameList", professornum);
	}

	public int count(ClassSearchVO classSearchVO) {
		return mybatis.selectOne("com.yedam.lms.classs.impl.classDAO.getClass", classSearchVO);
	}
	public List<Map<String, Object>> getClassList(ClassSearchVO classSearchVO){
		return mybatis.selectList("com.yedam.lms.classs.impl.classDAO.getClassList",classSearchVO);
	}
	public ClassapplyVO getSchedulepro(ClassapplyVO vo) {
		return mybatis.selectOne("com.yedam.lms.classs.impl.classDAO.getSchedulepro",vo);
	}
	public void insertClass(ClassVO vo) {
		 mybatis.insert("com.yedam.lms.classs.impl.classDAO.insertClass",vo);
	}
	public void updateClass(ClassVO vo) {
		mybatis.update("com.yedam.lms.classs.impl.classDAO.updateClass",vo);
	}
	public void deleteClass(String classnum) {
		mybatis.delete("com.yedam.lms.classs.impl.classDAO.deleteClass",classnum);
	}
	public List<Map<String, Object>> getClassList2(String classnum) {
		return mybatis.selectList("com.yedam.lms.classs.impl.classDAO.getClassList2", classnum);
	}
	public Map<String, Object> stuCnt(String classnum){
		return mybatis.selectOne("com.yedam.lms.classs.impl.classDAO.stuCnt", classnum);
	}
}
