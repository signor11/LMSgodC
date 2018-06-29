package com.yedam.lms.smp.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.lms.classs.ClassVO;
import com.yedam.lms.smp.StudentVO;


@Repository
public class StudentDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	//목록조회
	public List<Map<String,Object>> getStudentList(StudentVO studentVO){
		return mybatis.selectList("com.yedam.lms.smp.impl.StudentDAO.getStudentList",studentVO);
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
	public void deleteStudent(String studentnum) {
		mybatis.delete("com.yedam.lms.smp.impl.StudentDAO.deleteStudent",studentnum);
	}
	//사용자로그인
	public StudentVO getLogin(StudentVO vo) {
		
		return mybatis.selectOne("com.yedam.lms.smp.impl.StudentDAO.getLogin", vo);
	}
}

