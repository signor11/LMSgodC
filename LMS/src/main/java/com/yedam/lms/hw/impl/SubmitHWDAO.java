package com.yedam.lms.hw.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.lms.hw.AddFileVO;
import com.yedam.lms.hw.SubmitHWVO;

@Repository
public class SubmitHWDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	//과제등록
		public void submitHwInsert(SubmitHWVO vo) {
			mybatis.insert("com.yedam.lms.hw.impl.SubmitHWDAO.submitHwInsert", vo);
		}
		
		//과제파일등록(제출)
		public void addfileInsert(AddFileVO vo) {
			mybatis.insert("com.yedam.lms.hw.impl.SubmitHWDAO.addfileInsert", vo);
		}
		
		//과제수정
		public void submitHwUpdate(SubmitHWVO vo) {
			mybatis.update("com.yedam.lms.hw.impl.SubmitHWDAO.submitHwUpdate", vo);
		}
		
		//파일수정
		public void addfileUpdate(AddFileVO vo) {
			mybatis.update("com.yedam.lms.hw.impl.SubmitHWDAO.addfileUpdate", vo);
		}
		
		//과제삭제
		public void submitHwDelete(String submithwnum) {
			mybatis.delete("com.yedam.lms.hw.impl.SubmitHWDAO.submitHwDelete", submithwnum);
		}
		
		//과제확인
		public SubmitHWVO getsubmitHw(SubmitHWVO vo) {
			return mybatis.selectOne("com.yedam.lms.hw.impl.SubmitHWDAO.getsubmitHw", vo);
		}
		
		public List<SubmitHWVO> getsubmitHwList(SubmitHWVO vo){
			return mybatis.selectList("com.yedam.lms.hw.impl.SubmitHWDAO.getsubmitHwList", vo);
			
		}
}
