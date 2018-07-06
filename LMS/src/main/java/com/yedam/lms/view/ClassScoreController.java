package com.yedam.lms.view;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yedam.lms.classs.ClassService;
import com.yedam.lms.classs.ClassapplyService;
import com.yedam.lms.classs.ClassapplyVO;
import com.yedam.lms.classs.impl.ClassapplyDAO;
import com.yedam.lms.result.TestResultService;
import com.yedam.lms.result.TestResultVO;

import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JRExporter;
import net.sf.jasperreports.engine.JRExporterParameter;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.export.JRPdfExporter;

@Controller
public class ClassScoreController {
	
	//작성자:김혜민
	@Autowired
	ClassapplyService classapplyService;
	@Autowired
	TestResultService testResultService;
	@Autowired
	ClassService classService;
	
	// 성적 처리
	@RequestMapping(value = "/updateClassapply")
	@ResponseBody
	public TestResultVO updateTestResult(TestResultVO vo,HttpServletResponse response,ClassapplyVO voc) {
		
		classapplyService.updateClassapply(voc);// ->testResultDAO.classapplyUpdate(classapplyVO);
		return testResultService.getTestresultListstu(vo).get(0);// 1건 가져옴
		
	}
	
	//학생 성적 조회
	@RequestMapping("/getClassScoreListstu")
	public String getTestresultListstu(TestResultVO vo, Model model) {
		// model 정보저장
		vo.setStudentnum("18000001");// 학생 정보
		model.addAttribute("serList", testResultService.getTestresultListstu(vo));
		return "classscore/getClassScoreListstu";// View 이름 리턴

	}	
	
	// 성적표 출력
	@RequestMapping("result")
	public void getresult(HttpServletRequest request, HttpServletResponse response,TestResultVO vo) throws Exception {
		try {
			vo.setStudentnum("18000001");
			HashMap<String, Object> map = new HashMap<String, Object>();
			JasperReport report = JasperCompileManager.compileReport(request.getSession().getServletContext().getRealPath("result/result.jrxml"));
			JRDataSource JRdataSource = new JRBeanCollectionDataSource(testResultService.getresult(vo));
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

	// 교수 성적 조회
	@RequestMapping("/getClassScoreList")
	public String gettestresultList(HttpServletRequest request,HttpSession session,TestResultVO vo, Model model)  {
		vo.setProfessornum((String) session.getAttribute("loginvo"));
		if(vo.getClassnum() != null && !vo.getClassnum().equals("")) {
			request.setAttribute("cnt", classService.stuCnt(vo.getClassnum()));
		}
		model.addAttribute("insList", testResultService.getTestresultList(vo));
		request.setAttribute("classname", classService.pro_classnameList(vo.getProfessornum()));
		return "classscore/getClassScoreList";

	}

}
