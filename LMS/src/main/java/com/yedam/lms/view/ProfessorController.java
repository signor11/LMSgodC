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

import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.yedam.admin.web.Paging;
import com.yedam.lms.smp.MajorService;
import com.yedam.lms.smp.MajorVO;
import com.yedam.lms.smp.ProfessorService;
import com.yedam.lms.smp.ProfessorVO;
import com.yedam.lms.smp.ProfessorsearchVO;





@Controller
@SessionAttributes("professor")
public class ProfessorController {

	@Autowired
	ProfessorService professorService;
	@Autowired
	MajorService majorService;
	
	/*@RequestMapping("/getProfessorList")
	public String getProfessorList(HttpServletRequest request, HttpSession session,ProfessorVO vo) {

		request.setAttribute("professorList", professorService.getProfessorList(vo));
		return "professor/getProfessorList";
	}
	@ResponseBody
	public String getProfessorList(HttpServletRequest request) {
		request.setAttribute("professorList", professorService.getProfessorList(vo));
		return "professor/getProfessorList";
	}*/

	@RequestMapping("/getProfessorList")
	public ModelAndView getProfessorList(HttpServletRequest request, ProfessorVO vo, ProfessorsearchVO vo2, HttpSession session, Paging paging) {
		
		ModelAndView mv = new ModelAndView();
				mv.addObject("List",professorService.getProfessorList(vo));
				mv.setViewName("admin/professor/getProfessorList");
				return mv;}
	
	// 등록폼
		@RequestMapping(value = "/insertProfessor", method = RequestMethod.GET)
		String insertProfessorForm(HttpServletRequest request, MajorVO vo) {
			request.setAttribute("major", majorService.getMajorList(vo));
			return "admin/professor/insertProfessor";
		
		}
	// 등록처리
	// / localhost 밑 web 아래
	@RequestMapping(value = "/insertProfessor", method = RequestMethod.POST)	
	public String insertProfessor(@ModelAttribute("vo") ProfessorVO vo, HttpServletRequest request)

			throws IllegalStateException, IOException {
		System.out.println(vo);		
		professorService.insertProfessor(vo);
		return "redirect:/getProfessorList";
	}
	
		//수정폼
		@RequestMapping(value = "/updateProfessor", method = RequestMethod.GET)
		String updateProfessorForm(HttpServletRequest request, ProfessorVO vo,MajorVO vo2) {
			vo2.setMajornum(vo.getMajornum());
			request.setAttribute("get_pro", professorService.getProfessor(vo.getProfessornum()));
			request.setAttribute("m_list", majorService.getMajorList(vo2));
			
			return "admin/professor/updateProfessor";
	
		}
		//수정 처리
		@RequestMapping(value = "/updateProfessor", method = RequestMethod.POST)
		String updateProfessor(@ModelAttribute("vo") ProfessorVO vo) {
			professorService.updateProfessor(vo);
			return "redirect:/getProfessorList";
		}
		
		@RequestMapping("/deleteProfessor")
		
		//삭제
		 String deleteProfessor(@ModelAttribute("vo") ProfessorVO vo) {
			professorService.deleteProfessor(vo);
			//ajax json구조로 리턴해줌
			return "redirect:/getProfessorList";
		}
	
	}
	


