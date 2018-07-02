package com.yedam.admin.web.view;

import java.io.File;
import java.io.IOException;

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
		model.addAttribute("noticeList",noticeService.getNoticeList(vo));
		return "notice/getNoticeList";
	}
	
	//단건조회
	@RequestMapping("/getNotice/{seq}")
	public String getNotice(@PathVariable String seq, Model model) {
		model.addAttribute("vo",noticeService.getNotice(seq));
		return "notice/getNotice";
	}
	
	// 입력폼
	@RequestMapping(value = "/insertNotice", method = RequestMethod.GET)
	public String insertNoticeForm() {
		return "notice/insertNotice";
	}

	// 입력처리
	@RequestMapping(value = "/insertBoard", method = RequestMethod.POST)
	public String insertNotice(@ModelAttribute("vo") NoticeVO vo) throws IllegalStateException, IOException {// 속성명 바꾸기위해 ModelAttribute
		
		// 서비스 이용하여 등록처리하고 목록페이지로 이동
		noticeService.insertNotice(vo);
		// return "redirect:/getBoardList";
		return "board/getBoard";
	}

	/*// 수정폼
	@RequestMapping(value = "/updateNotice", method = RequestMethod.GET)
	public String updateNoticeForm() {
		return "notice/updateNotice";
	}

	// 수정처리
	@RequestMapping(value = "/updateNotice", method = RequestMethod.POST)
	public String updateNotice(@ModelAttribute("board") NoticeVO vo) {
		// 서비스 수정처리
		noticeService.updateNotice(vo);
		return "notice/updateNotice";
	}*/
}
