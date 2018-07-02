package com.yedam.lms.smp.impl;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.lms.smp.StudentSearchVO;
import com.yedam.lms.smp.StudentService;
import com.yedam.lms.smp.StudentVO;


@Service("studentService")
public class StudentImpl implements StudentService{

	@Autowired
	StudentDAO dao;

	@Override
	public List<Map<String, Object>> getStudentList(StudentSearchVO vo) {
		return dao.getStudentList(vo);
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
	public void deleteStudent(String studentnum) {
		dao.deleteStudent(studentnum);
		
	}


	@Override
	public StudentVO getStudent(String studentnum) {
		return dao.getStudent(studentnum);
	}

	@Override
	public StudentVO getLogin(StudentVO vo) {
		System.out.println(vo.getStudentname()+"aaaaa");
		return dao.getLogin(vo);
		
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}

	@Override
	public int studentCount(StudentSearchVO vo) {
		return dao.studentCount(vo);
	}

	
	
}



	