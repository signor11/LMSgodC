package com.yedam.web.hw.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.web.hw.HWVO;

@Repository
public class HWDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	// 등록
		public void hwInsert(HWVO vo) {
			
		}
		
		// 수정
		public void hwUpdate(HWVO vo) {
			
		}

		// 삭제
		public void hwDelete(HWVO vo) {
			
		}

		// 단건조회
		public HWVO getHW(String hwnum) {
			return mybatis.selectOne("com.yedam.web.hw.impl.HWDAO.getHW", hwnum);
		}

		// 전체조회(학생용)
		public List<HWVO> getHWList(HWVO hw){
			return mybatis.selectList("com.yedam.web.hw.impl.HWDAO.getHWList", hw);
			
		}

		// 전체조회(교수용)
		public List<HWVO> getHWListPro(HWVO hw){
			return mybatis.selectList("com.yedam.web.hw.impl.HWDAO.getHWListPro", hw);
			
		}

}
