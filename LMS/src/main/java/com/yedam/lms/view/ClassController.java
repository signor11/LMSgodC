package com.yedam.lms.view;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yedam.lms.classs.ClassSearchVO;
import com.yedam.lms.classs.ClassService;
import com.yedam.lms.classs.ClassVO;
import com.yedam.lms.classs.ClassapplyVO;
import com.yedam.lms.web.Paging;

@Controller
public class ClassController {
	
	@Autowired
	ClassService classService;
	
	
	@RequestMapping("/insertClass")
	public String insertClass(ClassVO vo, HttpSession session, HttpServletResponse response)
			throws IOException {
		//한글 인코딩
		response.setContentType("text/html; charset=UTF-8");
		String stid =(String)session.getAttribute("loginvo");
		PrintWriter out = response.getWriter();
		vo.setStudentnum(stid);
		classService.insertClass(vo);
		
		return "admin/";
		
	}
	@RequestMapping("/updateClass")
	public String updateClass(ClassVO vo, HttpSession session, HttpServletResponse response)
			throws IOException {
		//한글 인코딩
		response.setContentType("text/html; charset=UTF-8");
		String stid =(String)session.getAttribute("loginvo");
		PrintWriter out = response.getWriter();
		vo.setStudentnum(stid);
		classService.updateClass(vo);
		
		return "admin/";
		
	}
	
	
	
	
	@RequestMapping("/deleteClass")
	@ResponseBody
	public String deleteClass(ClassVO vo) {
		classService.deleteClass(vo);
		//ajax json구조로 리턴해줌
		return "{\"result\":true}";
	}
	
	
	/*@RequestMapping("/getClassapplyList")
	public ModelAndView getClassapplyList(HttpServletRequest request,ClassapplyVO vo,ClassSearchVO vo2, HttpSession session, Paging paging,ClassVO vo3	) {

		ModelAndView mv = new ModelAndView();
		
		//페이지 번호 파라미터
		if(paging.getPage() == null)
			paging.setPage(1);
		
		String stid=(String)session.getAttribute("loginvo");
		vo.setStudentnum(stid);
		//페이징 하기 위한 start,end 조건 검색
		//page1 ==> 1~5 2 ==> 6~10
		vo2.setStart(paging.getStart());
		vo2.setEnd(paging.getEnd());
		//전체 건수
		paging.setTotalRecord(classService.getCountclass(vo2));
		
		
		//////결과를 모델에 저장
		
		mv.addObject("paging",paging);
		//수강신청내역 조회
		mv.addObject("classapplyList",classService.getClassapplyList(vo));
		//수강신청목록 조회
		mv.addObject("classlist", classService.getClassList(vo2));
		
		//뷰페이지 지정
		mv.setViewName("classapply/applylecture");
		return mv;
	}
	@RequestMapping("/getClassList")
	public ModelAndView getClassList(HttpServletRequest request,ClassapplyVO vo,ClassSearchVO vo2, HttpSession session, Paging paging) {
		
ModelAndView mv = new ModelAndView();
		
		//페이지 번호 파라미터
		if(paging.getPage() == null)
			paging.setPage(1);
		
		String stid=(String)session.getAttribute("loginvo");
		vo.setStudentnum(stid);
		//페이징 하기 위한 start,end 조건 검색
		//page1 ==> 1~5 2 ==> 6~10
		vo2.setStart(paging.getStart());
		vo2.setEnd(paging.getEnd());
		//전체 건수
		paging.setTotalRecord(classService.getCountclass(vo2));
		
		
		//////결과를 모델에 저장
		
		mv.addObject("paging",paging);
		
		//수강신청목록 조회
		mv.addObject("classlist", classService.getClassList(vo2));
		
		//뷰페이지 지정
		mv.setViewName("classs/searchlecture");
		return mv;
		
	}*/
	
	
}
