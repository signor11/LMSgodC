package com.yedam.lms.view;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.yedam.lms.classs.ClassService;
import com.yedam.lms.hw.HWService;
import com.yedam.lms.hw.HWVO;

@Controller
public class HWController {

	@Autowired	HWService hwService;
	@Autowired	ClassService classService;
	
	
	/*//단건조회
	@RequestMapping("/getHW")
	public String getHW(@RequestParam String hwnum) {
		hwService.getHW(hwnum);
		return "hw/getHW";
		
	}*/

	// 학생용 다건조회
	@RequestMapping("/getHWList")
	public String getHWList(HttpServletRequest request, HWVO vo, HttpSession session) {
		//vo.setStudentnum((String)session.getAttribute("loginvo"));
		vo.setStudentnum("18000001");
		request.setAttribute("HWList", hwService.getHWList(vo));
		request.setAttribute("classname", classService.stu_classnameList(vo.getStudentnum()));
		return "hw/getHWList";
	}

	// 교수용 다건조회
	@RequestMapping("/getHWListPro")
	public String getHWListPro(HttpServletRequest request, HWVO vo) {
		vo.setProfessornum("28000001");
		request.setAttribute("HWListPro", hwService.getHWListPro(vo));
		return "hw/getHWListPro";
	}

	// 과제 등록폼
	@RequestMapping(value = "/hwInsert", method = RequestMethod.GET)
	public String hwInsertForm(HttpServletRequest request, HWVO vo) {
		vo.setProfessornum("28000001");
		request.setAttribute("classname", classService.pro_classnameList(vo.getProfessornum()));
		return "hw/hwInsert";
	}

	// 과제 등록처리
	@RequestMapping(value = "/hwInsert", method = RequestMethod.POST)
	public String hwInsert(@ModelAttribute("vo") HWVO vo) {
		hwService.hwInsert(vo);
		return "redirect:/getHWListPro";  
	}
	
	//수정폼
	@RequestMapping(value = "/hwUpdate", method = RequestMethod.GET)
	public String hwUpdateForm(HttpServletRequest request, HWVO vo) {
		vo.setClassnum("48000001");
		vo.setHwnum("68000073");
		request.setAttribute("cn", classService.getClass(vo.getClassnum()));
		request.setAttribute("hw", hwService.getHW(vo.getHwnum()));
		return "hw/hwUpdate";
	}
	
	//수정 처리
	@RequestMapping(value = "/hwUpdate", method = RequestMethod.POST)
	public String hwUpdate(@ModelAttribute("vo") HWVO vo) {
		hwService.hwUpdate(vo);
		return "redirect:/getHWListPro";
	}
	
	//삭제
	@RequestMapping("/hwDelete")
	public String hwDelete(@ModelAttribute("vo") HWVO vo) {
		hwService.hwDelete(vo);
		return "hw/getHWListPro";
	}
	
	

}
