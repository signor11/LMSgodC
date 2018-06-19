package com.yedam.web.classs.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.web.classs.LectureVO;

@Repository
public class LectureDAO {

	@Autowired
	SqlSessionTemplate mybatis;

	// 강의 신청
	public boolean insertClassapply(LectureVO vo) {
		return false;
	}

	// 강의 수정
	public void updateClassapply(LectureVO vo) {

	}

	// 강의 삭제

	public void deleteClassapply(String classapplynum) {

	}
	// 단건 강의 조회

	public LectureVO getClassapply(String classapplynum) {
		return mybatis.selectOne("com.yedam.web.classs.impl.LectureDAO.getClassapply", classapplynum);
	}

	// (Classnum 기준) 학생 강의 조회

	public LectureVO cnClassapply(String classnum) {
		return mybatis.selectOne("com.yedam.web.classs.impl.LectureDAO.cnClassapply", classnum);
	}

	// 전체 강의 조회

	public List<LectureVO> getClassapplyList(LectureVO vo) {
		return mybatis.selectList("com.yedam.web.classs.impl.LectureDAO.getClassapplyList", vo);
		
	}

	// 학생 강의 체크

	public boolean getClassapplyListcheck(LectureVO vo) {
		return false;
	}

	/*// 교수 시간표 조회

	public LectureVO getschedulePro(LectureVO vo) {
		
	}

	// 수강 신청 번호 조회

	public LectureVO getcanum(LectureVO vo) {

	}*/
}
