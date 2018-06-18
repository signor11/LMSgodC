package com.yedam.web.board;

import java.util.List;
import java.util.Map;

public interface BoardService {
	//목록조회
	public List<Map<String,Object>> getBoardList();
	
	public List<BoardVO> getBoardList2(BoardVO vo);
	
	public void insertBoard(BoardVO vo);
	
	public void updateBoard(BoardVO vo);
	
	public void deleteBoard(String seq);
	
	
	
	
	
}
