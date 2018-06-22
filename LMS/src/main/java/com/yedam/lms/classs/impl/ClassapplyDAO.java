package com.yedam.lms.classs.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.lms.classs.ClassapplyVO;

@Repository
public class ClassapplyDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	
	//중복 확인
	public ClassapplyVO checkclassapply(ClassapplyVO vo) {
		return mybatis.selectOne("com.yedam.lms.classs.impl.ClassapplyDAO.checkclassapply",vo);
	}
	

	// 강의 신청
	public int insertClassapply(ClassapplyVO vo) {
		return mybatis.insert("com.yedam.lms.classs.impl.ClassapplyDAO.insertClassapply",vo);
	}

	// 강의 수정
	public void updateClassapply(ClassapplyVO vo) {

	}

	// 강의 삭제

	public void deleteClassapply(String classapplynum) {

	}
	// 단건 강의 조회

	public ClassapplyVO getClassapply(String classapplynum) {
		return mybatis.selectOne("com.yedam.lms.classs.impl.ClassapplyDAO.getClassapply", classapplynum);
	}

	// (Classnum 기준) 학생 강의 조회

	public ClassapplyVO cnClassapply(String classnum) {
		return mybatis.selectOne("com.yedam.lms.classs.impl.ClassapplyDAO.cnClassapply", classnum);
	}

	// 전체 강의 조회

	public List<ClassapplyVO> getClassapplyList(ClassapplyVO vo) {
		return mybatis.selectList("com.yedam.lms.classs.impl.ClassapplyDAO.getClassapplyList", vo);
		
	}

	// 학생 강의 체크

	public boolean getClassapplyListcheck(ClassapplyVO vo) {
		return true;
	}

	// 교수 시간표 조회

	public ClassapplyVO getschedulePro(ClassapplyVO vo) {
		return mybatis.selectOne("com.yedam.lms.classs.impl.LectureDAO.getschedulePro", vo);
	}

	// 수강 신청 번호 조회

	public ClassapplyVO getcanum(ClassapplyVO vo) {
		return mybatis.selectOne("com.yedam.lms.classs.impl.LectureDAO.getcanum", vo);
	}
}
