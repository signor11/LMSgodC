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
import com.yedam.lms.classs.ClassVO;
import com.yedam.lms.classs.ClassapplyService;
import com.yedam.lms.classs.ClassapplyVO;
import com.yedam.lms.web.Paging;

@Controller
public class ClassapplyController {
	
	@Autowired
	ClassapplyService classapplyService;
	
	
	@RequestMapping("/checkclassapply")
	@ResponseBody
	public ClassapplyVO checkclassapply(ClassapplyVO vo) {
			classapplyService.checkclassapply(vo);
			return vo;
	}
	
	@RequestMapping("/insertClassapply")
	public String insertClassapply(ClassapplyVO vo, HttpSession session, HttpServletResponse response)
			throws IOException {
		//한글 인코딩
		response.setContentType("text/html; charset=UTF-8");
		String stid =(String)session.getAttribute("loginvo");
		PrintWriter out = response.getWriter();
		vo.setStudentnum(stid);
		int r = classapplyService.insertClassapply(vo);
		if (r == -2) {
			out.print("<script>");
			out.print("alert('수강과목중복.');");
			out.print("history.go(-1);");
			out.print("</script>");
			return null;
		} else if (r == -1) {
			out.print("<script>");
			out.print("alert('학점초과');");
			out.print("history.go(-1);");
			out.print("</script>");
			return null;
		} else if (r==0) {
			out.print("<script>");
			out.print("alert('원인을 알수 없습니다.');");
			out.print("history.go(-1);");
			out.print("</script>");
			return null;
		} else {
			out.print("<script>");
			out.print("alert('신청 완료');");
			out.print("location.href='getClassapplyList';");
			out.print("</script>");
			return null;
		}
		
	}
	@RequestMapping("/getClassapplyList")
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
		paging.setTotalRecord(classapplyService.getCountclass(vo2));
		
		
		//////결과를 모델에 저장
		
		mv.addObject("paging",paging);
		//수강신청내역 조회
		mv.addObject("classapplyList",classapplyService.getClassapplyList(vo));
		//수강신청목록 조회
		mv.addObject("classlist", classapplyService.getClassList(vo2));
		
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
		paging.setTotalRecord(classapplyService.getCountclass(vo2));
		
		
		//////결과를 모델에 저장
		
		mv.addObject("paging",paging);
		
		//수강신청목록 조회
		mv.addObject("classlist", classapplyService.getClassList(vo2));
		
		//뷰페이지 지정
		mv.setViewName("classs/searchlecture");
		return mv;
		
	}
	@RequestMapping("/getSchedulepro")
	public String getSchedulepro(HttpServletRequest request,ClassapplyVO vo, HttpSession session) {
		String stid=(String)session.getAttribute("loginvo");
		vo.setStudentnum(stid);
		
		//교수 시간표 조회
		request.setAttribute("schedulelistpro", classapplyService.getSchedulepro(vo));
		return "schedule/schedule(pro)";
	}
	@RequestMapping("/getSchedulepropopup")
	public String getSchedulepropopup(HttpServletRequest request,ClassapplyVO vo, HttpSession session) {
		String stid=(String)session.getAttribute("loginvo");
		vo.setStudentnum(stid);
		
		//교수 시간표 조회
		request.setAttribute("schedulelistpro", classapplyService.getSchedulepro(vo));
		return "popup/schedule/schedule(pro)";
	}
	@RequestMapping("/getSchedule")
	public String getSchedule(HttpServletRequest request,ClassapplyVO vo, HttpSession session) {
		String stid=(String)session.getAttribute("loginvo");
		vo.setStudentnum(stid);
		
		//학생 시간표 조회
		request.setAttribute("classapplylist2", classapplyService.getSchedule(vo));
		return "schedule/schedule";
	}
	@RequestMapping("/getSchedulepopup")
	public String getSchedulepopup(HttpServletRequest request,ClassapplyVO vo, HttpSession session) {
		String stid=(String)session.getAttribute("loginvo");
		vo.setStudentnum(stid);
		
		//학생 시간표 조회
		request.setAttribute("classapplylist2", classapplyService.getSchedule(vo));
		return "popup/schedule/schedule";
	}
	@RequestMapping("/deleteClassapply")
	@ResponseBody
	
	
	public String deleteClassapply(ClassapplyVO vo) {
		classapplyService.deleteClassapply(vo.getClassapplynum());
		//ajax json구조로 리턴해줌
		return "{\"result\":true}";
	}
}
