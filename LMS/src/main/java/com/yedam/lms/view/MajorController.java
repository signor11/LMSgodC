package com.yedam.lms.view;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.yedam.admin.web.Paging;
import com.yedam.lms.smp.MajorService;
import com.yedam.lms.smp.MajorVO;


@SessionAttributes("major")
@Controller
public class MajorController {
	
	@Autowired
	MajorService majorService;
	
	/* 관리자 모드 */

	// 학과조회
	@RequestMapping("/getMajorList")
	public ModelAndView getMajorList(HttpServletRequest request, MajorVO vo,
			HttpSession session) {

		ModelAndView mv = new ModelAndView();
		
		// 학과 조회
		mv.addObject("major", majorService.getMajorList(vo));
		
		// 뷰페이지 지정
		mv.setViewName("admin/major/getMajorList");
		return mv;

	}

	//학과 등록폼
	
	//학과 등록
	
	//학과 수정
	
	//학과 삭제
	
}
