package com.yedam.lms.view;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.yedam.lms.poll.PollService;
import com.yedam.lms.poll.PollVO;

@Controller
public class PollController {
	
	@Autowired
	PollService pollService;
	
	
	@RequestMapping("/insertPoll")
	public String insertPoll(@RequestParam Map<String,String> param, HttpSession session) {
		String stdnum = (String)session.getAttribute("loginvo");

		pollService.insertPoll(param,stdnum);
		return "poll/insertPoll";
			
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
	
}
