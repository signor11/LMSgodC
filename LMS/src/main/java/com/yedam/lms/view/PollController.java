package com.yedam.lms.view;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yedam.lms.poll.PollService;
import com.yedam.lms.poll.PollVO;

@Controller
public class PollController {
	
	@Autowired
	PollService pollService;
	
	@RequestMapping("/insertPollForm")
	public String insertPollForm(@RequestParam Map<String,String> param, HttpServletResponse response,HttpSession session) throws IOException {
		//한글 인코딩
		response.setContentType("text/html; charset=UTF-8");
		String stdnum = (String)session.getAttribute("loginvo");
		PollVO vo = new PollVO();
		vo.setStudentnum(stdnum);
		
		PrintWriter out = response.getWriter();
		int r = pollService.checkPoll(vo);
		if(r==0) {
			return "popup/poll/insertPoll";
		}else {
			out.print("<script>alert('설문 조사 중복');window.close();</script>");
			return null; 
		}
	}
	@RequestMapping("/insertPoll")
	public String insertPoll(@RequestParam Map<String,String> param, HttpServletResponse response,HttpSession session) throws IOException {
		//한글 인코딩
		response.setContentType("text/html; charset=UTF-8");
		String stdnum = (String)session.getAttribute("loginvo");
		pollService.insertPoll(param,stdnum);
		PrintWriter out = response.getWriter();
		out.print("<script>alert('설문완료');window.close();</script>");
		return null;
		
			
	}
	
	@RequestMapping("/getPoll")
	public ModelAndView getPoll(HttpServletRequest request,Map<String,String> param , PollVO vo,String pollid,HttpSession session) {
		
		ModelAndView mv = new ModelAndView();
		
		String stid=(String)session.getAttribute("loginvo");
		vo.setStudentnum(stid);
		
		
		//설문 결과 단건 조회
		mv.addObject("poll", pollService.getPoll(pollid));
		
		//뷰페이지 지정
		mv.setViewName("/getPoll");
		return mv;
		
	}
	@RequestMapping("/updatePoll")
	public String updatePoll(PollVO vo) {
		return null;
	}
	
	@RequestMapping("/chartPoll")
	public String goPoll() {
		return "admin/poll/chartPoll";
	}
	
	
	@RequestMapping("/countPoll")
	@ResponseBody
	public Map<String,Object> countPoll(PollVO vo) {
		Map<String,Object> map = new HashMap<String,Object>();
		vo.setQuestionnum("1");
		map.put("1", pollService.countPoll(vo));
		vo.setQuestionnum("2");
		map.put("2", pollService.countPoll(vo));
		vo.setQuestionnum("3");
		map.put("3", pollService.countPoll(vo));
		return map;
	}
	
}
