package com.yedam.admin.web.view;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

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

import com.yedam.admin.web.etc.NoticeService;
import com.yedam.admin.web.etc.NoticeVO;

@Controller
public class NoticeController {

	@Autowired
	NoticeService noticeService;
	
	//목록조회
	@RequestMapping("/getNoticeList")
	public String getNoticeList(NoticeVO vo,Model model) {
		
		System.out.println(vo);
		model.addAttribute("noticeList",noticeService.getNoticeList(vo));
		return "admin/notice/getNoticeList";
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
	public String insertNotice(@ModelAttribute("vo") NoticeVO vo, HttpServletResponse response) throws IllegalStateException, IOException {// 속성명 바꾸기위해 ModelAttribute
	PrintWriter out = response.getWriter();
		//파일 업로드 처리
		MultipartFile uploadFile =vo.getTempuploadfile();
		if(!uploadFile.isEmpty()) {
			 String fileName = uploadFile.getOriginalFilename();
			 uploadFile.transferTo(new File("D:/upload"+fileName));
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
	public String updateNotice(@ModelAttribute("vo") NoticeVO vo, HttpSession session, HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();
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
