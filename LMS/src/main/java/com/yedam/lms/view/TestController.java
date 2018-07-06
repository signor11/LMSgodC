package com.yedam.lms.view;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yedam.lms.classs.ClassapplyService;
import com.yedam.lms.classs.ClassapplyVO;
import com.yedam.lms.result.TestResultService;
import com.yedam.lms.result.TestResultVO;
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
	@Autowired
	ClassapplyService classapplyService; 
	@Autowired
	TestResultService testResultService;
	
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
	
	@RequestMapping("/testExam")
	public String testExam(Model model, TestVO tVO, ExamContentsVO eVO, HttpSession session){
		List<ExamContentsVO> elist = new ArrayList<ExamContentsVO>(examContentsService.getExamList(tVO.getTestnum()));
		ExamContentsVO e = examContentsService.getExamSub(tVO.getTestnum());
		model.addAttribute("sub",e);
		model.addAttribute("elist",elist);
		session.setAttribute("tename", tVO.getTestname());
		session.setAttribute("clnum", tVO.getClassnum());
		session.setAttribute("timer", tVO.getTimer());
		session.setAttribute("tnum", tVO.getTestnum());
		return "test/testExam";
	}
	
	@RequestMapping("/testResult")
	public String testResult(Model model, TestVO tVO, TestResultVO trVO, HttpSession session){
		//tVO.setStudentnum((String)session.getAttribute("loginvo"));
		//cVO = new ClassapplyVO((String)session.getAttribute("loginvo"),tVO.getClassnum());
		//ClassapplyVO cac = classapplyService.getcanum(cVO);
		//String cccn = cac.getClassapplynum();
		List<ExamContentsVO> elist = new ArrayList<ExamContentsVO>(examContentsService.getExamList(tVO.getTestnum()));
		String myanswer = tVO.getMyanswer();
		String tp;
		String as;
		String xnum="";
		int c=0;
		int sco=0;
		for(ExamContentsVO temp : elist) {
			tp = temp.getTestpoint();
			as = temp.getAnswer();
			if(as.equals(myanswer.substring(c,c+1))){
				sco = sco + Integer.parseInt(tp);
				xnum = xnum + (c+1) + "번 ";
			}
			c++;
		}
		model.addAttribute("testscore",sco);
		model.addAttribute("d",xnum);
		//testResultService.testResultInsert(Integer.toString(sco), tVO.getTestnum(), cccn);
		testResultService.testResultInsert(trVO);
		return "test/testResult";
	}
	
	@RequestMapping("/goHome")
	public String goHome(){
		
		return "home/home";
	}


}
