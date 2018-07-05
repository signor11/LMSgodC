package com.yedam.lms.smp.impl;

import java.util.List;
import java.util.Map;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.lms.smp.ProfessorVO;
import com.yedam.lms.smp.ProfessorsearchVO;

@Repository
public class ProfessorDAO {

	@Autowired
	SqlSessionTemplate mybatis; // 쓰레드 처리,커넥션관리 기능 추가

	public List<Map<String, Object>> getProfessorList(ProfessorVO vo) {
		return mybatis.selectList("com.yedam.lms.impl.ProfessorDAO.getProfessorList", vo);
	}

	public ProfessorVO getProfessor(String professornum) {
		return (ProfessorVO) mybatis.selectOne("com.yedam.lms.impl.ProfessorDAO.getProfessor", professornum);
	}

	public void insertProfessor(ProfessorVO vo) {
		mybatis.insert("com.yedam.lms.impl.ProfessorDAO.insertProfessor", vo);
	}

	public void updateProfessor(ProfessorVO vo) {
		mybatis.update("com.yedam.lms.impl.ProfessorDAO.updateProfessor", vo);
	}

	public void deleteProfessor(ProfessorVO vo) {
		mybatis.delete("com.yedam.lms.impl.ProfessorDAO.deleteProfessor", vo);
	}

	public int professorCount(ProfessorsearchVO vo) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("com.yedam.lms.impl.ProfessorDAO.professorCount", vo);
	}
	public List<Map<String,Object>> classProfessor() {
		return mybatis.selectList("com.yedam.lms.impl.ProfessorDAO.classProfessor");
	}
}
