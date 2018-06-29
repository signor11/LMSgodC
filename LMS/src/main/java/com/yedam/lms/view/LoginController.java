package com.yedam.lms.view;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.yedam.lms.smp.StudentService;
import com.yedam.lms.smp.StudentVO;


@Controller

public class LoginController {

	@Autowired
	StudentService studentService;

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)

	public String getlogin(StudentVO vo, HttpSession session, HttpServletRequest request) {

		StudentVO vo1 = studentService.getLogin(vo);

		
		if (studentService.getLogin(vo1) != null) { // 로그인 완료

			session.setAttribute("stdname", vo1.getStudentname());

			session.setAttribute("loginvo", vo1.getStudentnum());

			if (vo1.getStudentnum().compareTo("20000000") >= 0) {
				session.setAttribute("mode", "pro");

				return "home/home2";
			} else {
				session.setAttribute("mode", "std");

				return "home/home2";
			}

		} else
			return "home/home";
	}

	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session) {
		studentService.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("home/home");
		return mav;
	}
	@RequestMapping("login")
	public String loginHome() {
		return "login/login";
	
	}
	@RequestMapping("gohome")
	public String goHome() {
		return "home/home2";
	
	}
	
	
}
