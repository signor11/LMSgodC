package com.yedam.lms.view;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yedam.lms.hw.AddFileService;
import com.yedam.lms.hw.HWService;
import com.yedam.lms.hw.SubmitHWService;
import com.yedam.lms.hw.SubmitHWVO;


@Controller
public class SubmitHWController {

	@Autowired
	SubmitHWService submitHWService;
	@Autowired
	AddFileService addfileService;
	@Autowired
	HWService hwService;
	
	
	//학생과제제출폼
	@RequestMapping(value = "/submitHW", method= RequestMethod.GET)
	public String submitHwInsertform(HttpServletRequest request, SubmitHWVO vo) {
		request.setAttribute("sb", hwService.getHW(vo.getHwnum()));
		request.setAttribute("up_hw", submitHWService.getsubmitHw(vo));
		return "hw/submitHW";
	}
	
	//학생과제제출
		@RequestMapping(value = "/submitHWUpdate", method= RequestMethod.POST)
		public String submitHWUpdate() {
			return "redirect:/getHWList";
		}
		
	//학생과제수정
		@RequestMapping(value = "/submitHW/", method= RequestMethod.POST)
		public String submitHwInsert() {
			return "redirect:/getHWList";
		}
	
	
}
