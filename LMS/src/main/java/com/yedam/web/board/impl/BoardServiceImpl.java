package com.yedam.web.board.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.web.board.BoardService;
import com.yedam.web.board.BoardVO;


@Service("boardService")
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	BoardDAO dao;
	
	
	
	@Override
	public List<Map<String, Object>> getBoardList() {
		return dao.getBoardList();
	}

	@Override
	public List<BoardVO> getBoardList2(BoardVO vo) {
		return null;
	}

	@Override
	public void insertBoard(BoardVO vo) {
		
	}

	@Override
	public void updateBoard(BoardVO vo) {
		
	}

	@Override
	public void deleteBoard(String seq) {
	}
	
}
