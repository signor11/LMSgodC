package com.yedam.lms.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yedam.lms.hw.AddFileService;
import com.yedam.lms.hw.SubmitHWService;


@Controller
public class SubmitHWController {

	@Autowired
	SubmitHWService submitHWService;
	@Autowired
	AddFileService addfileService;
	
	
	//@RequestMapping("")
	
}
