package com.yedam.admin.web.view;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.yedam.admin.web.etc.NoticeSearchVO;
import com.yedam.admin.web.etc.NoticeService;
import com.yedam.admin.web.etc.NoticeVO;
import com.yedam.lms.classs.ClassSearchVO;
import com.yedam.lms.classs.ClassVO;
import com.yedam.lms.classs.ClassapplyVO;
import com.yedam.lms.web.Paging;

@Controller
public class NoticeController {

	@Autowired
	NoticeService noticeService;
	
	//목록조회
	@RequestMapping("/getNoticeList")
	public ModelAndView getNoticeList(NoticeVO vo,Model model,Paging paging) {
		ModelAndView mv = new ModelAndView();
		
		//페이지 번호 파라미터
		if(paging.getPage() == null)
			paging.setPage(1);
		
		//페이징 하기 위한 start,end 조건 검색
		//page1 ==> 1~5 2 ==> 6~10
		vo.setFirst(paging.getStart());
		vo.setLast(paging.getEnd());
		//전체 건수
		paging.setTotalRecord(noticeService.getCount(vo));
		
		
		//////결과를 모델에 저장
		
		mv.addObject("paging",paging);
		//내역 조회
		mv.addObject("noticeList",noticeService.getNoticeList(vo));
		
		//뷰페이지 지정
		mv.setViewName("admin/notice/getNoticeList");
		return mv;
		
	}
	//단건조회
	@RequestMapping("/getNotice/{seq}")
	public String getNotice(@PathVariable String seq, Model model) {
		System.out.println("seq:" + seq);
		model.addAttribute("vo",noticeService.getNotice(seq));
		return "admin/notice/getNotice";
	}
	
	// 입력폼
	@RequestMapping(value = "/insertNotice", method = RequestMethod.GET)
	public String insertNoticeForm() {
		return "admin/notice/insertNotice";
	}

	// 입력처리
	@RequestMapping(value = "/insertNotice", method = RequestMethod.POST)
	public String insertNotice(@ModelAttribute("vo") NoticeVO vo, HttpServletRequest request, HttpServletResponse response) throws IllegalStateException, IOException {// 속성명 바꾸기위해 ModelAttribute
	PrintWriter out = response.getWriter();
		//파일 업로드 처리
		MultipartFile uploadFile =vo.getTempuploadfile();
		if(!uploadFile.isEmpty()) {
			 String path =request.getSession().getServletContext().getRealPath("/upload");//getRealpath
			 String fileName = uploadFile.getOriginalFilename();
			 uploadFile.transferTo(new File(path+"/"+fileName));
			 vo.setUploadfile(fileName);
		}
		// 서비스 이용하여 등록처리하고 목록페이지로 이동
		noticeService.insertNotice(vo);
		System.out.println(vo);
		//저장하고 난뒤 목록 페이지로 이동
		out.print("<script>alert('save'); location.assign('getNoticeList');</script>");
		return null;
	}

	// 수정폼
	@RequestMapping(value = "/updateNotice", method = RequestMethod.GET)
	public String updateNoticeForm(Model model,NoticeVO vo) {
		model.addAttribute("no",noticeService.getNotice(vo.getSeq()));
		return "admin/notice/updateNotice";
	}

	// 수정처리
	@RequestMapping(value = "/updateNotice", method = RequestMethod.POST)
	public String updateNotice(@ModelAttribute("vo") NoticeVO vo, HttpServletRequest request, HttpSession session, HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();
		//파일 업로드 처리
			MultipartFile uploadFile =vo.getTempuploadfile();
			if(!uploadFile.isEmpty()) {
				 String path =request.getSession().getServletContext().getRealPath("/upload");//getRealpath
				 String fileName = uploadFile.getOriginalFilename();
				 uploadFile.transferTo(new File(path+"/"+fileName));
				 vo.setUploadfile(fileName);
			}
		// 서비스 수정처리
		noticeService.updateNotice(vo);
		//alert창 뜨고난뒤 list 페이지로 이동
		if(vo.getContent() != null) {
			out.print("<script>alert('successs'); location.assign('getNoticeList');</script>");
		}else {
			out.print("<script>alert('fail'); history.go(-1);</script>");
		}
		return null;
	}
	//삭제 처리
	@RequestMapping("/deleteNotice")
	public String deleteNotice(NoticeVO vo) {
		noticeService.deleteNotice(vo.getSeq());
		//ajax json구조
		return "{\"result\":true}";
	}
}
