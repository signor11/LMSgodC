package com.yedam.lms.view;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yedam.lms.test.TestService;

@Controller
public class TestController {
	
	@Autowired
	TestService testService;
	
	@RequestMapping("/gettestListPro")
	public String gettestListPro(Model model, String classnum){
		model.addAttribute("list", testService.gettestListPro(classnum));
		return "test/gettestListPro";
	}


}
