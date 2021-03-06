package com.yedam.lms.hw.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.lms.hw.AddFileVO;

@Repository
public class AddFileDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	// 등록
		public void addfileInsert(AddFileVO vo) {
			mybatis.insert("com.yedam.lms.hw.impl.AddFileDAO.addfileInsert",vo);
		}

		// 수정
		public void addfileUpdate(AddFileVO vo) {
			mybatis.insert("com.yedam.lms.hw.impl.AddFileDAO.addfileUpdate",vo);
		}

		// 삭제
		public void addfileDelete(String addfileid) {
			mybatis.insert("com.yedam.lms.hw.impl.AddFileDAO.addfileDelete",addfileid);
		}

		// 단건조회
		public AddFileVO getAddFile(String addfileid) {
			return mybatis.selectOne("com.yedam.lms.hw.impl.AddFileDAO.getAddFile", addfileid);
		}
		
		// 전체조회
		public List<AddFileVO> getAddFileList(AddFileVO vo){
			return mybatis.selectList("com.yedam.lms.hw.impl.AddFileDAO.getAddFileList",vo);
		}

}
