package com.yedam.lms.smp;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.yedam.lms.classs.ClassVO;


public interface StudentService {
	//전체조회
		public List<Map<String,Object>> getStudentList();
		
		//단건조회
		public StudentVO getStudent(String studentnum);
				
		//입력
		public void insertStudent(StudentVO vo);
		
		//수정
		public void updateStudent(StudentVO vo);
		
		//삭제
		public void deleteStudent(String studentnum);
		//로그인 체크
		public StudentVO getLogin(StudentVO vo);
		
		//로그아웃
		public void logout(HttpSession session); 
		
		
		
		
}
