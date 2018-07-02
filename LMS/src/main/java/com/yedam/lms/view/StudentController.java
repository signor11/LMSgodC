package com.yedam.lms.view;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yedam.lms.smp.StudentService;
import com.yedam.lms.smp.StudentVO;



@Controller
@SessionAttributes("student")
public class StudentController {

	@Autowired
	StudentService studentService;
	
	/*관리자 모드*/
	
	//학생조회
	@RequestMapping("/getStudentList")
	public String getStudentList(HttpServletRequest request, StudentVO vo) {
		request.setAttribute("serList", studentService.getStudentList());
		return "student/getStudentList";
	}
	//등록폼
	@RequestMapping(value="/insertStudent",method=RequestMethod.GET)
	String insertStudentForm() {
		return "student/insertStudent";
	}
	
	//등록처리
	@RequestMapping(value="/insertStudent",method=RequestMethod.POST)
	String insertStudent() {
		return "student/getStudentList";
	}
	
	//수정폼
	@RequestMapping(value="/updateStudent", method = RequestMethod.GET)
	String updateStudentForm() {
		return "student/updateBoard";
	}
	
	//수정처리
		@RequestMapping(value="/updateStudent", method = RequestMethod.POST)
		String updateStudent() {
			return "student/getStudentList";
		}
	
	//삭제
		@RequestMapping("/deleteStudent")
		String deleteStudent() {
			return "student/getStudentList";
		}
		
	
}

