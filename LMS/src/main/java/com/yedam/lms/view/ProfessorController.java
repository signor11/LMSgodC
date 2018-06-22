package com.yedam.lms.view;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yedam.lms.classs.ClassapplyVO;
import com.yedam.lms.smp.ProfessorService;
import com.yedam.lms.smp.ProfessorVO;

@Controller
@SessionAttributes("professor")
public class ProfessorController {

	@Autowired
	ProfessorService professorService;

	@RequestMapping("/getProfessorList")
	
	public String getProfessorList(HttpServletRequest request, HttpSession session,ProfessorVO vo) {

		request.setAttribute("professorList", professorService.getProfessorList(vo));;
		return "professor/getProfessorList";
	}

	// 등록폼
	@RequestMapping(value = "/insertProfessor", method = RequestMethod.GET)

	public String insertProfessorForm() {
		return "professor/insertProfessor";
	}

	// 등록처리
	// / localhost 밑 web 아래
	@RequestMapping(value = "/insertProfessor", method = RequestMethod.POST)
	
	public String insertProfessor() {
		// 서비스 이용하여 등록처리하고 목록페이지로 이동
		return "redirect:/getProfessorList";
	}

	
	
	
	
	
	
	
	
	
}
