package com.yedam.lms.view;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.yedam.admin.web.Paging;
import com.yedam.lms.smp.MajorService;
import com.yedam.lms.smp.MajorVO;
import com.yedam.lms.smp.StudentSearchVO;
import com.yedam.lms.smp.StudentVO;


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

	//학과 수정 및 등록폼
	@RequestMapping(value = "/insertMajor", method = RequestMethod.GET)
	String insertMajorForm(HttpServletRequest request, @RequestParam String majornum) {
		request.setAttribute("maj", majorService.getMajor(majornum));
		return "admin/major/insertMajor";
	}

	//학과 등록
	@RequestMapping(value = "/insertMajor", method = RequestMethod.POST)
	String insertMajor(MajorVO vo) {
		majorService.insertMajor(vo);
		return "redirect:/getMajorList";
	}
	
	//학과 수정
	@RequestMapping(value = "/updateMajor", method = RequestMethod.POST)
	String updateMajor(MajorVO vo) {
		majorService.updateMajor(vo);
		return "redirect:/getMajorList";
	}

	
	//학과 삭제
	@RequestMapping("/deleteMajor")
	String deleteStudent(MajorVO vo) {
		majorService.deleteMajor(vo);
		return "redirect:/getMajorList";
	}
	
	// 엑셀출력
		@RequestMapping("/majExcelView")
		public ModelAndView excelView(MajorVO vo, HttpServletResponse response) throws IOException {
			List<Map<String, Object>> list = majorService.getMajorList(vo);
			HashMap<String, Object> map = new HashMap<String, Object>();
			String[] header = {
								"MAJORNUM",
								"MAJORNAME",
								};
			map.put("headers", header);
			map.put("filename", "excel_maj");
			map.put("datas", list);
			return new ModelAndView("commonExcelView", map);
		}
	
}
