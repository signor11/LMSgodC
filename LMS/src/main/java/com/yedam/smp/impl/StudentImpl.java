package com.yedam.smp.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.smp.StudentService;
import com.yedam.smp.StudentVO;

@Service("studentService")
public class StudentImpl implements StudentService{

	@Autowired
	StudentDAO dao;

	@Override
	public List<Map<String, Object>> getStudentList() {
		return dao.getStudentList(null);
	}

	@Override
	public void insertStudent(StudentVO vo) {
		dao.insertStudent(vo);
		
	}

	@Override
	public void updateStudent(StudentVO vo) {
		dao.updateStudent(vo);
		
	}

	@Override
	public void deleteStudent(String studentNum) {
		dao.deleteStudent(studentNum);
		
	}


	@Override
	public StudentVO getStudent(String studentNum) {
		// TODO Auto-generated method stub
		return null;
	}

	

}
