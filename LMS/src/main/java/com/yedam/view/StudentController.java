package com.yedam.view;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yedam.smp.StudentService;
import com.yedam.smp.StudentVO;
import com.yedam.smp.impl.StudentDAO;

@Controller
@SessionAttributes("student")
public class StudentController {

	@Autowired
	StudentService studentService;
	
	@RequestMapping("/getStudentList")
	public String getStudentList(HttpServletRequest request, StudentVO vo) {
		request.setAttribute("serList", studentService.getStudentList());
		return "student/getStudentList";
	}
	//등록폼
	@RequestMapping(value="/insertStudnet",method=RequestMethod.GET)
	String insertStudentForm() {
		return "student/insertStudent";
	}
	//수정폼
	@RequestMapping(value="/updateStudent", method = RequestMethod.GET)
	String updateStudentForm() {
		return "student/updateBoard";
	}
}
