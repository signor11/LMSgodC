package com.yedam.web.board.view;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yedam.web.board.BoardService;

@Controller
public class BoardController {
	
	@Autowired 
	BoardService boardService;
	
	@RequestMapping("/getBoardList")
	public String getBoardList(HttpServletRequest request) {
		request.setAttribute("boardList", boardService.getBoardList());
		return "board/getBoardList";
	}
	
	//등록폼
	@RequestMapping(value="/insertBoard", method=RequestMethod.GET)
	public String insertBoardForm() {
		return "board/insertBoard";
	}
	
	//등록처리
	// / localhost 밑 web 아래
	@RequestMapping(value="/insertBoard", method=RequestMethod.POST)
	public String insertBoard() {
		//서비스 이용하여 등록처리하고 목록페이지로 이동
		return "redirect:/getBoardList";
	}
	
	
}
