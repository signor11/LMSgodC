package com.yedam.lms.view;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yedam.lms.classs.ClassapplyVO;
import com.yedam.lms.test.ExamContentsService;
import com.yedam.lms.test.ExamContentsVO;

@Controller
public class ExamcontentsController {

	@Autowired
	ExamContentsService examContentsService;
	
}
