package com.yedam.lms.hw.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.lms.hw.HWVO;

@Repository
public class HWDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;
	
		// 등록
		public void hwInsert(HWVO vo) {
			mybatis.insert("com.yedam.lms.hw.impl.HWDAO.hwInsert", vo);
		}
		
		// 수정
		public void hwUpdate(HWVO vo) {
			mybatis.update("com.yedam.lms.hw.impl.HWDAO.hwUpdate", vo);
		}

		// 삭제
		public void hwDelete(HWVO vo) {
			mybatis.delete("com.yedam.lms.hw.impl.HWDAO.hwDelete", vo);
		}

		// 단건조회
		public HWVO getHW(String hwnum) {
			return mybatis.selectOne("com.yedam.lms.hw.impl.HWDAO.getHW", hwnum);
		}

		// 전체조회(학생용)
		public List<HWVO> getHWList(HWVO hw){
			return mybatis.selectList("com.yedam.lms.hw.impl.HWDAO.getHWList", hw);
			
		}

		// 전체조회(교수용)
		public List<HWVO> getHWListPro(HWVO hw){
			return mybatis.selectList("com.yedam.lms.hw.impl.HWDAO.getHWListPro", hw);
			
		}

}
