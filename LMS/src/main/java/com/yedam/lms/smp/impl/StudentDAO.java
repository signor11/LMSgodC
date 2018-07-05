package com.yedam.lms.smp.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.lms.smp.StudentSearchVO;
import com.yedam.lms.smp.StudentVO;


@Repository
public class StudentDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	//목록조회
	public List<Map<String,Object>> getStudentList(StudentSearchVO vo){
		return mybatis.selectList("com.yedam.lms.smp.impl.StudentDAO.getStudentList",vo);
	}
	
	//단건조회
	public StudentVO getStudent(String studentnum) {
		return mybatis.selectOne("com.yedam.lms.smp.impl.StudentDAO.getStudent",studentnum);
	}
	
	//입력
	public void insertStudent(StudentVO vo) {
		mybatis.insert("com.yedam.lms.smp.impl.StudentDAO.insertStudent",vo);
	}
	
	//수정
	public void updateStudent(StudentVO vo) {
		mybatis.update("com.yedam.lms.smp.impl.StudentDAO.updateStudent",vo);
	}
	
	//삭제
	public void deleteStudent(StudentVO vo) {
		mybatis.delete("com.yedam.lms.smp.impl.StudentDAO.deleteStudent",vo);
	}
	//사용자로그인
	public StudentVO getLogin(StudentVO vo) {
		return mybatis.selectOne("com.yedam.lms.smp.impl.StudentDAO.getLogin", vo);
	}
	
	//건수조회
	public int studentCount(StudentSearchVO vo) {
		return mybatis.selectOne("com.yedam.lms.smp.impl.StudentDAO.studentCount", vo);
	}
	//로그인 체크
	public int checklogin(StudentVO vo) {
		return  mybatis.selectOne("com.yedam.lms.smp.impl.StudentDAO.checklogin", vo);
	}


}

