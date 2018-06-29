package com.yedam.lms.smp.impl;

import java.util.List;
import java.util.Map;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.lms.smp.ProfessorVO;

@Repository
public class ProfessorDAO {

	@Autowired
	SqlSessionTemplate mybatis; // 쓰레드 처리,커넥션관리 기능 추가

	public List<Map<String, Object>> getProfessorList(ProfessorVO professorVO) {
		return mybatis.selectList("com.yedam.lms.impl.ProfessorDAO.getProfessorList", professorVO);
	}

	public ProfessorVO getProfessor(ProfessorVO professorVO) {
		return (ProfessorVO) mybatis.selectOne("com.yedam.lms.impl.ProfessorDAO.getProfessor", professorVO);
	}

	public void insertProfessor(ProfessorVO professorVO) {
		mybatis.insert("com.yedam.lms.impl.ProfessorDAO.insertProfessor", professorVO);
	}

	public void updateProfessor(ProfessorVO professorVO) {
		mybatis.update("com.yedam.lms.impl.ProfessorDAO.updateProfessor", professorVO);
	}

	public void deleteProfessor(String professornum) {
		mybatis.delete("com.yedam.lms.impl.ProfessorDAO.deleteProfessor", professornum);
	}

}
