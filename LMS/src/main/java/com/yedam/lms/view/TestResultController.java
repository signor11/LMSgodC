package com.yedam.lms.view;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yedam.lms.result.TestResultService;
import com.yedam.lms.result.TestResultVO;
import com.yedam.lms.result.impl.TestResultDAO;
import com.yedam.lms.smp.impl.StudentDAO;

@Controller
public class TestResultController {
	
	@Autowired TestResultService testResultService;
	
	//등록폼
	@RequestMapping(value = "/insertTestResult")
	public String insertTestResult(TestResultVO vo) {
		testResultService.insertTestResult(vo);
		return "result/insertTestResult";
	}
	
	//수정폼
	@RequestMapping(value = "/updateTestResult",method = RequestMethod.GET)
	public String updateTestResultForm() {
		return "result/insertTestResult";
	}
	
	//수정처리
	@RequestMapping(value = "/updateTestResult",method = RequestMethod.POST)
	public String updateTestResult(@ModelAttribute("vo") TestResultVO vo) {
		testResultService.updateTestResult(vo);
		return "result/updateTestResult";
	}
	//단건
	@RequestMapping("/getTestResult")
	
		public TestResultVO gettestResult(TestResultVO vo) {
			return testResultService.gettestresult(vo);
	}
	//교수 성적 조회
	@RequestMapping("/getTestResultList")
	
		public String gettestresultList(TestResultVO ts,Model model){
		model.addAttribute("insList",testResultService.gettestresultList(ts));
		return "result/getTestresultList";
	}
	//학생 성적 조회
	@RequestMapping("/gettestresultListstu")
		public String gettestresultListstu(TestResultVO vo,Model model){
		 //model 정보저장
		vo.setStudentnum("18000001");
		model.addAttribute("serList",testResultService.gettestresultListstu(vo));
		return "result/getTestresultListstu";//View 이름 리턴
		
	}
}
