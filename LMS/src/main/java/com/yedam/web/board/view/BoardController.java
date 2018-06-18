package com.yedam.web.board.view;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	
	
	
}
