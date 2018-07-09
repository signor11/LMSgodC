package com.yedam.lms.view;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.yedam.admin.web.Paging;
import com.yedam.lms.smp.MajorService;
import com.yedam.lms.smp.MajorVO;
import com.yedam.lms.smp.StudentSearchVO;
import com.yedam.lms.smp.StudentService;
import com.yedam.lms.smp.StudentVO;

@Controller
@SessionAttributes("student")
public class StudentController {

	@Autowired
	StudentService studentService;
	@Autowired
	MajorService majorService;

	/* 관리자 모드 */

	// 학생조회
	@RequestMapping("/getStudentList")
	public ModelAndView getStudentList(HttpServletRequest request, StudentVO vo, MajorVO vo1, StudentSearchVO vo2,
			HttpSession session, Paging paging) {

		ModelAndView mv = new ModelAndView();

		// 페이지 번호 파라미터
		if (paging.getPage() == null)

			paging.getPageSize();

		String stid = (String) session.getAttribute("loginvo");
		vo.setStudentnum(stid);
		// 페이징 하기 위한 start,end 조건 검색
		// page1 ==> 1~10 2 ==> 11~20
		vo2.setStart(paging.getStart());
		vo2.setEnd(paging.getEnd());

		// 전체 건수
		paging.setTotalRecord(studentService.studentCount(vo2));

		////// 결과를 모델에 저장

		mv.addObject("paging", paging);

		// 학과 조회
		mv.addObject("major", majorService.getMajorList(vo1));
		// 학생 조회

		mv.addObject("List", studentService.getStudentList(vo2));
		// 뷰페이지 지정
		mv.setViewName("admin/student/getStudentList");
		return mv;

	}

	// 등록폼
	@RequestMapping(value = "/insertStudent", method = RequestMethod.GET)
	String insertStudentForm(HttpServletRequest request, MajorVO vo) {
		request.setAttribute("major", majorService.getMajorList(vo));
		return "admin/student/insertStudent";
	}

	// 등록처리

	@RequestMapping(value = "/insertStudent", method = RequestMethod.POST)
	public String insertStudent(@ModelAttribute("vo") StudentVO vo) throws IllegalStateException, IOException {
		studentService.insertStudent(vo);
		return "redirect:/getStudentList";
	}

	// 수정폼
	@RequestMapping(value = "/updateStudent", method = RequestMethod.GET)
	String updateStudentForm(HttpServletRequest request, StudentVO vo, MajorVO vo2) {
		vo2.setMajornum(vo.getMajornum());
		request.setAttribute("get_stu", studentService.getStudent(vo.getStudentnum()));
		request.setAttribute("m_list", majorService.getMajorList(vo2));

		return "admin/student/updateStudent";
	}

	// 수정처리
	@RequestMapping(value = "/updateStudent", method = RequestMethod.POST)
	String updateStudent(@ModelAttribute("vo") StudentVO vo, HttpServletRequest request) {
		studentService.updateStudent(vo);
		return "redirect:/getStudentList?page="+request.getParameter("page");
	}

	// 삭제
	@RequestMapping("/deleteStudent")
	String deleteStudent(@ModelAttribute("vo") StudentVO vo, HttpServletRequest request) {
		studentService.deleteStudent(vo);
		return "redirect:/getStudentList?page="+request.getParameter("page");
	}

	// 엑셀출력
	@RequestMapping("/stuExcelView")
	public ModelAndView excelView(Paging paging, StudentSearchVO vo, HttpServletResponse response) throws IOException {
		vo.setStart(paging.getStart());
		vo.setEnd(1000);
		List<Map<String, Object>> list = studentService.getStudentList(vo);
		HashMap<String, Object> map = new HashMap<String, Object>();
		String[] header = {"STUDENTNUM", 
							"MAJORNUM",
							"MAJORNAME",
							"STUDENTPW",
							"STUDENTNAME",
							"STUDENTPHONE",
							"STUDENTDATE",
							"STARTDATE",
							"USERTYPE",
							"CNT"};
		map.put("headers", header);
		map.put("filename", "excel_stu");
		map.put("datas", list);
		return new ModelAndView("commonExcelView", map);
	}
	
}
