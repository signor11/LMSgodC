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

import com.yedam.lms.classs.ClassSearchVO;
import com.yedam.lms.classs.ClassapplyService;
import com.yedam.lms.classs.ClassapplyVO;

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
		// String stid =(String)session.getAttribute("loginvo");
		PrintWriter out = response.getWriter();
		vo.setStudentnum("18000003");
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
	public String getClassapplyList(HttpServletRequest request,ClassapplyVO vo,ClassSearchVO vo2, HttpSession session) {
		//String stid=(String)session.getAttribute("loginvo");
		vo.setStudentnum("18000003");
		vo2.setStart(1);
		vo2.setEnd(10);
		//수강신청내역 조회
		request.setAttribute("classapplyList",classapplyService.getClassapplyList(vo));
		//수강신청목록 조회
		request.setAttribute("classlist", classapplyService.getClassList(vo2));
		return "classapply/applylecture";
	}
	@RequestMapping("/getClassList")
	public String getClassList(HttpServletRequest request,ClassapplyVO vo,ClassSearchVO vo2, HttpSession session) {
		//String stid=(String)session.getAttribute("loginvo");
		vo.setStudentnum("18000003");
		vo2.setStart(1);
		vo2.setEnd(10);
		//수강신청목록 조회
		request.setAttribute("classlist", classapplyService.getClassList(vo2));
		return "classs/searchlecture";
	}
	
	@RequestMapping("/deleteClassapply")
	@ResponseBody
	public String deleteClassapply(ClassapplyVO vo) {
		classapplyService.deleteClassapply(vo.getClassapplynum());
		//ajax json구조로 리턴해줌
		return "{\"result\":true}";
	}
}
