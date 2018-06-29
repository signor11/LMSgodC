package com.yedam.lms.smp.impl;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.lms.classs.ClassVO;
import com.yedam.lms.smp.StudentService;
import com.yedam.lms.smp.StudentVO;


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
	public void deleteStudent(String studentnum) {
		dao.deleteStudent(studentnum);
		
	}


	@Override
	public StudentVO getStudent(String studentnum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public StudentVO getLogin(StudentVO vo) {
		System.out.println(vo.getStudentname()+"aaaaa");
		return dao.getLogin(vo);
		
	}

	@Override
	public void logout(HttpSession session) {
		// TODO Auto-generated method stub
		session.invalidate();
	}

	
	
}



	