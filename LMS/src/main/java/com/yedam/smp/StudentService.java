package com.yedam.smp;

import java.util.List;
import java.util.Map;

public interface StudentService {
	
	//전체조회
	public List<Map<String,Object>> getStudentList();
	
	//단건조회
	public StudentVO getStudent(String studentNum);
	
	//입력
	public void insertStudent(StudentVO vo);
	
	//수정
	public void updateStudent(StudentVO vo);
	
	//삭제
	public void deleteStudent(String studentNum);
}
