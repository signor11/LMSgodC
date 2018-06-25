package com.yedam.lms.view;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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
	public String getHWList(HttpServletRequest request, HWVO vo) {
		request.setAttribute("HWList", hwService.getHWList(vo));
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
	public String hwInsertForm(HttpServletRequest request, @RequestParam String professornum) {
		request.setAttribute("classname", classService.pro_classnameList(professornum));
		return "hw/hwInsert";
	}

	// 과제 등록처리
	@RequestMapping(value = "/hwInsert", method = RequestMethod.POST)
	public String hwInsert(@ModelAttribute("vo") HWVO vo) {
		hwService.hwInsert(vo);
		System.out.println("ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ");
		System.out.println(vo);
		return "redirect:/getHWListPro";  
	}
	
	//수정폼
	@RequestMapping(value = "/hwUpdate", method = RequestMethod.GET)
	public String hwUpdateForm() {
		return "hw/hwUpdate";
	}
	
	//수정 처리
	@RequestMapping(value = "/hwUpdate", method = RequestMethod.POST)
	public String hwUpdate(@ModelAttribute("vo") HWVO vo) {
		hwService.hwUpdate(vo);
		return "hw/getHWListPro";
	}
	
	//삭제
	@RequestMapping("/hwDelete")
	public String hwDelete(@ModelAttribute("vo") HWVO vo) {
		hwService.hwDelete(vo);
		return "hw/getHWListPro";
	}
	
	

}
