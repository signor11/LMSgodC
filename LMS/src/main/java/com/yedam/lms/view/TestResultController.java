package com.yedam.lms.view;

import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yedam.lms.classs.ClassapplyService;
import com.yedam.lms.classs.ClassapplyVO;
import com.yedam.lms.result.TestResultService;
import com.yedam.lms.result.TestResultVO;
import com.yedam.lms.result.impl.TestResultDAO;
import com.yedam.lms.smp.impl.StudentDAO;

import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JRExporter;
import net.sf.jasperreports.engine.JRExporterParameter;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.export.JRPdfExporter;

//작성자 김혜민
@Controller
public class TestResultController {

	@Autowired
	TestResultService testResultService;
	@Autowired
	ClassapplyService classapplyService;

	// 등록 처리
	@RequestMapping(value = "/insertTestResult")
	public String insertTestResult(TestResultVO vo) {
		testResultService.insertTestResult(vo);
		return "result/getTestresultList";// main 페이지 리턴
	}


	// 단건
	@RequestMapping("/gettestResult")
	public String gettestResult(TestResultVO vo, Model model) {
		model.addAttribute("inList", testResultService.gettestresult(vo));
		return "result/getTestresultList";
	}
       



}
