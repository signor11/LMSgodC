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

	// 성적 처리
	@RequestMapping(value = "/updateClassapply")
	@ResponseBody
	public ClassapplyVO updateTestResult(TestResultVO vo) {
		classapplyService.updateClassapply(vo);// ->testResultDAO.classapplyUpdate(classapplyVO);
		return classapplyService.getClassapply(vo.getClassapplynum());// spring 서비스 활용
	}

	// 단건
	@RequestMapping("/gettestResult")
	public String gettestResult(TestResultVO vo, Model model) {
		model.addAttribute("inList", testResultService.gettestresult(vo));
		return "result/getTestresultList";
	}

	// 교수 성적 조회
	@RequestMapping("/getTestresultList")
	public String gettestresultList(TestResultVO vo, Model model) {
		vo.setClassnum("48000001");
		model.addAttribute("insList", testResultService.getTestresultList(vo));
		return "result/getTestresultList";

	}
	//학생 성적 조회
	@RequestMapping("/gettestresultListstu")
	public String gettestresultListstu(TestResultVO vo, Model model) {
		// model 정보저장
		vo.setStudentnum("18000001");// 학생 정보
		model.addAttribute("serList", testResultService.gettestresultListstu(vo));
		return "result/getTestresultListstu";// View 이름 리턴

	}

	// 성적표 출력
	@RequestMapping("result.do")
	public void report(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			HashMap<String, Object> map = new HashMap<String, Object>();
			JasperReport report = JasperCompileManager.compileReport(request.getSession().getServletContext().getRealPath("result/result.jrxml"));
			JRDataSource JRdataSource = new JRBeanCollectionDataSource(testResultService.gettransList(null));
			JasperPrint print = JasperFillManager.fillReport(report, map, JRdataSource);
			JRExporter exporter = new JRPdfExporter();
			OutputStream out;
			response.reset();
			out = response.getOutputStream();
			exporter.setParameter(JRExporterParameter.OUTPUT_FILE_NAME, "report3.pdf");
			exporter.setParameter(JRExporterParameter.JASPER_PRINT, print);
			exporter.setParameter(JRExporterParameter.OUTPUT_STREAM, out);
			exporter.exportReport();
			out.flush();
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
