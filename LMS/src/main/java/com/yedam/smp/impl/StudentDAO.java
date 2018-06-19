package com.yedam.smp.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.smp.StudentVO;

@Repository
public class StudentDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	//목록조회
	public List<Map<String,Object>> getStudentList(StudentVO studentVO){
		return mybatis.selectList("com.yedam.smp.impl.getStudentList",studentVO);
	}
	
	//단건조회
	public StudentVO getStudent(String studentNum) {
		return mybatis.selectOne("com.yedam.smp.impl.getStudent",studentNum);
	}
	
	//입력
	public void insertStudent(StudentVO vo) {
		mybatis.insert("com.yedam.smp.impl.insertStudent",vo);
	}
	
	//수정
	public void updateStudent(StudentVO vo) {
		mybatis.update("com.yedam.smp.impl.updateStudent",vo);
	}
	
	//삭제
	public void deleteStudent(String studentNum) {
		mybatis.delete("com.yedam.smp.impl.deleteStudent",studentNum);
	}
}
