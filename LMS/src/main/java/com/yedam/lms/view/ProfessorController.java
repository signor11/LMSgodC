package com.yedam.lms.view;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.sql.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;

//github.com/signor11/LMSgodC

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.yedam.admin.web.Paging;
import com.yedam.lms.smp.MajorService;
import com.yedam.lms.smp.MajorVO;
import com.yedam.lms.smp.ProfessorService;
import com.yedam.lms.smp.ProfessorVO;
import com.yedam.lms.smp.ProfessorsearchVO;


@Controller
@SessionAttributes("professor")
public class ProfessorController {

	@Autowired
	ProfessorService professorService;
	@Autowired
	MajorService majorService;
	
	/*@RequestMapping("/getProfessorList")
	public String getProfessorList(HttpServletRequest request, HttpSession session,ProfessorVO vo) {

		request.setAttribute("professorList", professorService.getProfessorList(vo));
		return "professor/getProfessorList";
	}
	@ResponseBody
	public String getProfessorList(HttpServletRequest request) {
		request.setAttribute("professorList", professorService.getProfessorList(vo));
		return "professor/getProfessorList";
	}*/

	@RequestMapping("/getProfessorList")
	public ModelAndView getProfessorList(HttpServletRequest request, ProfessorVO vo, ProfessorsearchVO vo2, HttpSession session, Paging paging) {
		
		ModelAndView mv = new ModelAndView();
				mv.addObject("List",professorService.getProfessorList(vo));
				mv.setViewName("admin/professor/getProfessorList");
				return mv;}
	
	// 등록폼
		@RequestMapping(value = "/insertProfessor", method = RequestMethod.GET)
		String insertProfessorForm(HttpServletRequest request, MajorVO vo) {
			request.setAttribute("major", majorService.getMajorList(vo));
			return "admin/professor/insertProfessor";
		
		}
	// 등록처리
	// / localhost 밑 web 아래
	@RequestMapping(value = "/insertProfessor", method = RequestMethod.POST)	
	public String insertProfessor(@ModelAttribute("vo") ProfessorVO vo, HttpServletRequest request)

			throws IllegalStateException, IOException {
		System.out.println(vo);		
		professorService.insertProfessor(vo);
		return "redirect:/getProfessorList";
	}
	
		//수정폼
		@RequestMapping(value = "/updateProfessor", method = RequestMethod.GET)
		String updateProfessorForm(HttpServletRequest request, ProfessorVO vo,MajorVO vo2) {
			vo2.setMajornum(vo.getMajornum());
			request.setAttribute("get_pro", professorService.getProfessor(vo.getProfessornum()));
			request.setAttribute("m_list", majorService.getMajorList(vo2));
			
			return "admin/professor/updateProfessor";
	
		}
		//수정 처리
		@RequestMapping(value = "/updateProfessor", method = RequestMethod.POST)
		String updateProfessor(@ModelAttribute("vo") ProfessorVO vo) {
			professorService.updateProfessor(vo);
			return "redirect:/getProfessorList";
		}
		
		@RequestMapping("/deleteProfessor")
		
		//삭제
		 String deleteProfessor(@ModelAttribute("vo") ProfessorVO vo) {
			professorService.deleteProfessor(vo);
			//ajax json구조로 리턴해줌
			return "redirect:/getProfessorList";
		}
	
		/*//엑셀출력(viewResolver)
		@RequestMapping("/professorExcelView")
		public ModelAndView professorExcelView(ProfessorVO vo) {
			List<Map<String, Object>> list = professorService.getProfessorList(vo);
			HashMap<String, Object> map = new HashMap<String, Object>();
			
			String[] header = {"professornum","professorpw","professorname","majorname"};
			map.put("filename", "excel_pro");
			map.put("datas", list);
			map.put("headers", header);
			return new ModelAndView("commonExcelView", map);
			}*/
	
		
		
		//엑셀출력
		@RequestMapping("/professorExcelCreate")
		public void excelCreate(ProfessorVO vo, HttpServletResponse response) throws IOException{
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		//엑셀 wookbook 생성
		Workbook wb = new HSSFWorkbook(); // xls 버전
		CellStyle cs = wb.createCellStyle();
		Font f2 = wb.createFont();
		f2.setFontName("맑은 고딕");
		f2.setItalic(true);
		cs.setFont(f2);
		//시트 추가
		wb.createSheet("first sheet");
		wb.createSheet();
		//부서목록 출력
		List<Map<String, Object>> list = professorService.getProfessorList(vo);
		Row row;
		Cell cell;
		Map<String,Object> map;
		Sheet sheet = wb.getSheetAt(0);
		for(int i=0; i<list.size(); i++) {
		row = sheet.createRow(i);
		map = list.get(i);
		Iterator<String> iter = map.keySet().iterator();
		int j=0;
		while(iter.hasNext()) {
		cell = row.createCell(j++);
		Object field = map.get(iter.next());
		System.out.println(field.getClass() );
		if (field instanceof String) {
		cell.setCellValue((String) field);
		} else if (field instanceof BigDecimal) {
			cell.setCellValue(((BigDecimal) field).doubleValue());
			} else if (field instanceof Date) {
			cell.setCellValue((Date) field);
			} else {
			cell.setCellValue(field.toString());
			}
		}
		}// 엑셀 파일 저장
		String filename = "c:/Temp/excel_"+System.currentTimeMillis()+".xls";
		FileOutputStream fos = new FileOutputStream(filename);
		wb.write(fos);
		fos.close();
		//out.print("엑셀 저장 완료");
		
	//다운로드
		String downFileName = "filename.xls";
		File uFile= new File(filename);
		int fSize = (int)uFile.length(); // 파일크기
		BufferedInputStream in = new BufferedInputStream(new FileInputStream(uFile));
		String mimetype = "text/html";
		response.setBufferSize(fSize);
		response.setContentType(mimetype);
		response.setHeader("Content-Disposition", "attachment; filename=\""
				+ downFileName + "\"");
		response.setContentLength(fSize);
		FileCopyUtils.copy(in, response.getOutputStream());
		in.close();
		uFile.delete(); //파일삭제
		response.getOutputStream().flush();
		response.getOutputStream().close();
		}
	}