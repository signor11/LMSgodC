package com.yedam.lms.view;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
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
	
	
	/*관리자 모드*/
	
	//학생조회
	@RequestMapping("/getStudentList")
	public ModelAndView getStudentList(HttpServletRequest request, StudentVO vo, StudentSearchVO vo2, HttpSession session, Paging paging) {
		
		ModelAndView mv = new ModelAndView();
		
		//페이지 번호 파라미터
				if(paging.getPage() == null)
					
				paging.setPageSize(12);
				
				String stid=(String)session.getAttribute("loginvo");
				vo.setStudentnum(stid);
				//페이징 하기 위한 start,end 조건 검색
				//page1 ==> 1~10 2 ==> 11~20
				vo2.setStart(paging.getStart());
				vo2.setEnd(paging.getEnd());
				
				//전체 건수
				paging.setTotalRecord(studentService.studentCount(vo2));
		
		//////결과를 모델에 저장
				
				mv.addObject("paging",paging);
				//학생 조회
				mv.addObject("List",studentService.getStudentList(vo2));

				
				//뷰페이지 지정
				mv.setViewName("student/getStudentList");
				return mv;
	
	}
	//등록폼
	@RequestMapping(value="/insertStudent",method=RequestMethod.GET)
	String insertStudentForm(HttpServletRequest request, MajorVO vo) {
		request.setAttribute("major", majorService.getMajorList(vo));
		return "student/insertStudent";
	}
	
	//등록처리
	
	@RequestMapping(value = "/insertStudent", method = RequestMethod.POST)	
	public String insertStudent(@ModelAttribute("vo") StudentVO vo)
			throws IllegalStateException, IOException {
		studentService.insertStudent(vo);
		return "redirect:/getStudentList";
	}
	
	//수정폼
	@RequestMapping(value="/updateStudent", method = RequestMethod.GET)
	String updateStudentForm(HttpServletRequest request, StudentVO vo,MajorVO vo2) {
		vo2.setMajornum(vo.getMajornum());
		request.setAttribute("get_stu", studentService.getStudent(vo.getStudentnum()));
		request.setAttribute("m_list", majorService.getMajorList(vo2));
		
		return "student/updateStudent";
	}
	
	//수정처리
		@RequestMapping(value="/updateStudent", method = RequestMethod.POST)
		String updateStudent(@ModelAttribute("vo") StudentVO vo) {
			studentService.updateStudent(vo);
			return "redirect:/getStudentList";
		}
	
	//삭제
		@RequestMapping("/deleteStudent")
		String deleteStudent(@ModelAttribute("vo") StudentVO vo) {
			studentService.deleteStudent(vo);
			return "redirect:/getStudentList";
		}
		
	
}

