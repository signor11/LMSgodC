package com.yedam.web.board.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.web.board.BoardVO;

@Repository
public class BoardDAO {
	
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	
	//목록조회
	public List<Map<String,Object>> getBoardList(){
		return mybatis.selectList("com.yedam.web.board.BoardDAO.getBoardList");
	}
	public List<Map<String,Object>> getBoardList2(BoardVO vo){
		System.out.println(vo);
		return mybatis.selectList("com.yedam.web.board.BoardDAO.getBoardList2");
	}
	//단건조회
	public BoardVO getBoard(String seqs){
		return mybatis.selectOne("com.yedam.web.board.BoardDAO.getBoard",seqs);
	}
	
	
	
	
	
	
	
	
	
}
