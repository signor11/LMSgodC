package com.yedam.lms.view;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yedam.lms.result.TestResultService;

@Controller
public class TestResultController {
	
	@Autowired TestResultService testResultService;
	
	@RequestMapping("/gettestresult")
	@ResponseBody
		public String gettestresult(HttpServletRequest request) {
		request.setAttribute("", arg1);
		return ;
}
