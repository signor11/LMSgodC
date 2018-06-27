package com.yedam.lms.view;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

//github.com/signor11/LMSgodC

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.yedam.lms.smp.ProfessorService;
import com.yedam.lms.smp.ProfessorVO;



@Controller
@SessionAttributes("professor")
public class ProfessorController {

	@Autowired
	ProfessorService professorService;
	private ProfessorVO vo;	
	
	@RequestMapping("/getProfessorList")
	public String getProfessorList(HttpServletRequest request, HttpSession session,ProfessorVO vo) {

		request.setAttribute("professorList", professorService.getProfessorList(vo));
		return "professor/getProfessorList";
	}
	@ResponseBody
	public String getProfessorList(HttpServletRequest request) {
		request.setAttribute("professorList", professorService.getProfessorList(vo));
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
	public String insertProfessor(@ModelAttribute("vo") ProfessorVO vo, HttpServletRequest request)

			throws IllegalStateException, IOException {
		System.out.println(vo);		
	
		return "professor/insertProfessor";
	}
		@RequestMapping(value = "/updateProfessor", method = RequestMethod.GET)
		public String updateProfessorForm() {
			return "professor/updateProfessor";
	
		}
		@RequestMapping(value = "/updateProfessor", method = RequestMethod.POST)
		public String updateProfessor(@ModelAttribute("professor") ProfessorVO vo) {
			System.out.println(vo);
			// boardService.updateBoard(vo);
			return "professor/getProfessor";
		}
		
		@RequestMapping("/deleteProfessor")
		@ResponseBody
		public String deleteProfessor(ProfessorVO vo) {
			professorService.deleteProfessor(vo.getProfessornum());
			//ajax json구조로 리턴해줌
			return "{\"result\":true}";
		}
		 
		
	}
	


