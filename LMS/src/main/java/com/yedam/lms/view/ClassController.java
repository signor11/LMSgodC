package com.yedam.lms.view;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.yedam.lms.classs.ClassSearchVO;
import com.yedam.lms.classs.ClassService;
import com.yedam.lms.classs.ClassVO;
import com.yedam.lms.classs.ClassapplyVO;
import com.yedam.lms.smp.ProfessorVO;
import com.yedam.lms.smp.ProfessorsearchVO;
import com.yedam.lms.web.Paging;

@Controller
public class ClassController {
	
	@Autowired
	ClassService classService;

	
	@RequestMapping("/getClassList2")
	public ModelAndView getClassList2(HttpServletRequest request, ClassVO vo, ClassapplyVO vo2, HttpSession session, Paging paging) {
		
		ModelAndView mv = new ModelAndView();
				mv.addObject("List",classService.getClassList2());
				mv.setViewName("admin/adminclass/getClassList2");
				return mv;}
	
	//등록폼
	@RequestMapping(value="/insertClass", method = RequestMethod.GET)
	String insertClassForm(HttpServletRequest request, ClassVO vo)
	{
		request.setAttribute("class", classService.getClassList2(vo));
		
		return "admin/adminclass/getClassList2";
		
	}
	// 등록처리
		// / localhost 밑 web 아래
		@RequestMapping(value = "/insertClass", method = RequestMethod.POST)	
		public String insertClass(@ModelAttribute("vo") ClassVO vo, HttpServletRequest request)

				throws IllegalStateException, IOException {
			System.out.println(vo);		
			classService.insertClass(vo);
			return "redirect:/getClassList";
		}
	
		//수정폼
		@RequestMapping(value = "/updateClass", method = RequestMethod.GET)
		 String updateClass(ClassVO vo, HttpServletRequest request)
			{
	
			vo.setClassapplynum(vo.getClassapplynum());
		request.setAttribute("get_class", classService.getClassList2(vo));
		return "admin/adminclass/getClassList";
		
	}
		//수정 처리
				@RequestMapping(value = "/updateClass", method = RequestMethod.POST)
				String updateClass(@ModelAttribute("vo") ClassVO vo) {
					classService.updateClass(vo);
					return "redirect:/getProfessorList";
				}
	
	
	
	
	@RequestMapping("/deleteClass")

	public String deleteClass(ClassVO vo) {
		classService.deleteClass(vo);
		//ajax json구조로 리턴해줌
		return "redirect:/getClassList2";
	}
	
	
	/*@RequestMapping("/getClassapplyList")
	public ModelAndView getClassapplyList(HttpServletRequest request,ClassapplyVO vo,ClassSearchVO vo2, HttpSession session, Paging paging,ClassVO vo3	) {

		ModelAndView mv = new ModelAndView();
		
		//페이지 번호 파라미터
		if(paging.getPage() == null)
			paging.setPage(1);
		
		String stid=(String)session.getAttribute("loginvo");
		vo.setStudentnum(stid);
		//페이징 하기 위한 start,end 조건 검색
		//page1 ==> 1~5 2 ==> 6~10
		vo2.setStart(paging.getStart());
		vo2.setEnd(paging.getEnd());
		//전체 건수
		paging.setTotalRecord(classService.getCountclass(vo2));
		
		
		//////결과를 모델에 저장
		
		mv.addObject("paging",paging);
		//수강신청내역 조회
		mv.addObject("classapplyList",classService.getClassapplyList(vo));
		//수강신청목록 조회
		mv.addObject("classlist", classService.getClassList(vo2));
		
		//뷰페이지 지정
		mv.setViewName("classapply/applylecture");
		return mv;
	}
	@RequestMapping("/getClassList")
	public ModelAndView getClassList(HttpServletRequest request,ClassapplyVO vo,ClassSearchVO vo2, HttpSession session, Paging paging) {
		
ModelAndView mv = new ModelAndView();
		
		//페이지 번호 파라미터
		if(paging.getPage() == null)
			paging.setPage(1);
		
		String stid=(String)session.getAttribute("loginvo");
		vo.setStudentnum(stid);
		//페이징 하기 위한 start,end 조건 검색
		//page1 ==> 1~5 2 ==> 6~10
		vo2.setStart(paging.getStart());
		vo2.setEnd(paging.getEnd());
		//전체 건수
		paging.setTotalRecord(classService.getCountclass(vo2));
		
		
		//////결과를 모델에 저장
		
		mv.addObject("paging",paging);
		
		//수강신청목록 조회
		mv.addObject("classlist", classService.getClassList(vo2));
		
		//뷰페이지 지정
		mv.setViewName("classs/searchlecture");
		return mv;
		
	}*/
	
	
}
