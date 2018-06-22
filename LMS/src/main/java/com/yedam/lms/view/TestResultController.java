package com.yedam.lms.view;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yedam.lms.result.TestResultService;
import com.yedam.lms.result.TestResultVO;

@Controller
public class TestResultController {
	
	@Autowired TestResultService testResultService;
	
	//등록폼
	@RequestMapping(value = "/insertTestResult",method = RequestMethod.GET)
	public String insertTestResultForm() {
		return "result/insertTestResult";
	}
	
	//등록처리
	@RequestMapping(value = "/insertTestResult",method = RequestMethod.POST)
	public String insertTestResult(@ModelAttribute("vo") TestResultVO vo) {
		testResultService.insertTestResult(vo.getTestScore(), vo.getTestNum(), vo.getClassapplyNum());
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
	@ResponseBody
		public TestResultVO gettestResult(TestResultVO vo) {
			return testResultService.gettestresult(vo);
	}
	//교수 성적 조회
	@RequestMapping("/getTestResultList")
	@ResponseBody
		public List<TestResultVO> gettestresultList(TestResultVO ts){
		return testResultService.gettestresultList(ts);
	}
	//학생 성적 조회
	@RequestMapping("/gettestresultListstu")
	@ResponseBody
		public List<TestResultVO> gettestresultListstu(TestResultVO vo){
		return testResultService.gettestresultListstu(vo);
	}
}
