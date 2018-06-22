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

import com.yedam.lms.classs.ClassapplyVO;
import com.yedam.lms.classs.impl.ClassapplyServiceImpl;

@Controller
public class ClassapplyController {
	
	@Autowired
	ClassapplyServiceImpl classapplyService;
	
	
	@RequestMapping("/checkclassapply")
	@ResponseBody
	public ClassapplyVO checkclassapply(ClassapplyVO vo) {
			classapplyService.checkclassapply(vo);
			return vo;
	}
	
	@RequestMapping("/insertClassapply")
	public String insertClassapply(ClassapplyVO vo, HttpSession session, HttpServletResponse response) throws IOException {
		String stid =(String)session.getAttribute("in");
		PrintWriter out = response.getWriter();
		vo.setStudentnum(stid);  
		if (classapplyService.getClassapplyListcheck(vo)) {

			if (classapplyService.insertClassapply(vo)) {
				//return "redirect":getClassapplyList;
				return null;
			} else {
				out.print("<script>");
				out.print("alert('학점초과');");
				out.print("history.go(-1);");
				out.print("</script>");
			}
		} else {
			out.print("<script>");
			out.print("alert('수강과목중복.');");
			out.print("history.go(-1);");
			out.print("</script>");
		}
		return "";
	}
	@RequestMapping("/getClassapplyList")
	public String getClassapplyList(HttpServletRequest request,ClassapplyVO vo, HttpSession session) {
		//String stid=(String)session.getAttribute("");
		vo.setStudentnum("18000001");
		request.setAttribute("classapplyList",classapplyService.getClassapplyList(vo));
		return "classapply/searchlecture";
	}
	
	
}
