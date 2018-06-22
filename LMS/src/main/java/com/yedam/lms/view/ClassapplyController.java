package com.yedam.lms.view;

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
	@ResponseBody
	public ClassapplyVO insertClassapply(ClassapplyVO vo) {
		
		return vo;
	}
	
	
	
}
