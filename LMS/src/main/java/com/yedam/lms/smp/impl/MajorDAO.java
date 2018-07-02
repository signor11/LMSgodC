package com.yedam.lms.smp.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.lms.smp.MajorVO;

@Repository
public class MajorDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	//학과 단건 조회
		public MajorVO getMajor(String majornum) {
			return mybatis.selectOne("com.yedam.lms.smp.impl.MajorDAO.getMajor", majornum);
		}
		//학과 전체 조회
		public List<Map<String,Object>> getMajorList(MajorVO vo){
			return mybatis.selectList("com.yedam.lms.smp.impl.MajorDAO.getMajorList", vo);
		}
		//학과 수정
		public void updateMajor(MajorVO vo) {
			mybatis.update("com.yedam.lms.smp.impl.MajorDAO.getMajorList", vo);
		}
		//학과 삭제
		public void deleteMajor(MajorVO vo) {
			mybatis.delete("com.yedam.lms.smp.impl.MajorDAO.getMajorList", vo);
		}
		//학과 등록
		public void insertMajor(MajorVO vo) {
			mybatis.insert("com.yedam.lms.smp.impl.MajorDAO.insertMajor", vo);
		}
}
