package com.yedam.lms.view;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

	public String getlogin(StudentVO vo, HttpSession session, HttpServletRequest request,HttpServletResponse response) throws IOException {

		StudentVO vo1 = studentService.getLogin(vo);
	
		int r=studentService.checklogin(vo);
		response.setContentType("text/html; charset=UTF-8");
		
		if (r!=0) { // 로그인 완료
			
			
			session.setAttribute("stdname", vo1.getStudentname());

			session.setAttribute("loginvo", vo1.getStudentnum());
			
			session.setAttribute("mode", vo1.getUsertype());
				
			return "home/home";
		} else {
	     
		PrintWriter out = response.getWriter();
	      out.print("<script>");
	      out.print("alert('아이디 또는 비밀번호를 확인하세요'); ");
	      out.print("history.go(-1);");
	      out.print("</script>");
	      return null;
	      }
	    
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
	@RequestMapping("home")
	public String goHome() {
		return "home/home";
	
	}
	
	
}
