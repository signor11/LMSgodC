package com.yedam.lms.view;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yedam.lms.test.ExamContentsService;
import com.yedam.lms.test.ExamContentsVO;
import com.yedam.lms.test.TestService;
import com.yedam.lms.test.TestVO;

@Controller
@SessionAttributes("regi")
public class TestController {
	
	@Autowired
	TestService testService;
	@Autowired
	ExamContentsService examContentsService;
	
	@RequestMapping("/gettestListPro")
	public String gettestListPro(Model model, String classnum){
		model.addAttribute("list", testService.gettestListPro(classnum));
		return "test/gettestListPro";
	}
	
	@RequestMapping("/showTestListPro")
	public String showTestListPro(){
		return "test/showTestListPro";
	}
	
	@RequestMapping("/showTestList")
	public String showTestList(){
		return "test/showTestList";
	}
	
	@RequestMapping("/gettestList")
	public String gettestList(Model model, TestVO vo , HttpSession session){
		vo.setStudentnum((String)session.getAttribute("loginvo"));
		//vo.setStudentnum("18000001");
		model.addAttribute("list", testService.testCheck(vo));
		return "test/gettestList";
	}
	
	@RequestMapping("/insertTestMainPro")
	public String insertTestMainPro(){
		return "test/insertTestMainPro";
	}
	
	@RequestMapping("/insertTestDetailPro1")
	public String insertTestDetailPro1(Model model, TestVO tVO, ExamContentsVO eVO){
		testService.testInsert(tVO);
		eVO = new ExamContentsVO("0","0");
		model.addAttribute("sub",eVO);
		String td = testService.gettestn();
		tVO = new TestVO(tVO.getTestname(),tVO.getTestdate(),tVO.getClassnum(),tVO.getTesttime(),tVO.getTesting(),td);
		model.addAttribute("regi", tVO);
		return "test/insertTestDetailPro";
	}
	
	@RequestMapping("/insertTestDetailPro2")
	public String insertTestDetailPro2(Model model, TestVO tVO, ExamContentsVO eVO){
		examContentsService.examContentsInsert(eVO);
		ExamContentsVO e = examContentsService.getExamSub(eVO.getTestnum());
		model.addAttribute("sub", e);
		return "test/insertTestDetailPro";
	}
	
	@RequestMapping("/insertTestDetailPro4")
	public String insertTestDetailPro4(ExamContentsVO vo ,Model model, TestVO tVO, ExamContentsVO eVO){
		ExamContentsVO ex = examContentsService.getexamContents(vo.getExamconnum());
		ExamContentsVO e = examContentsService.getExamSub(vo.getTestnum());
		model.addAttribute("sub", e);
		model.addAttribute("ex", ex);
		return "test/insertTestDetailPro2";
	}
	
	@RequestMapping("/insertTestDetailPro3")
	public String insertTestDetailPro3(Model model, TestVO tVO, ExamContentsVO eVO){
		examContentsService.examContentsUpdate(eVO);
		ExamContentsVO e = examContentsService.getExamSub(eVO.getTestnum());
		model.addAttribute("sub", e);
		return "test/insertTestDetailPro";
	}
	
	@RequestMapping("/goHome")
	public String goHome(){
		
		return "home/home";
	}


}
