package com.yedam.lms.smp.impl;

	import java.util.List;
	import java.util.Map;
	import org.mybatis.spring.SqlSessionTemplate;
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Repository;

import com.yedam.lms.smp.ProfessorVO;


	@Repository
	public class ProfessorDAO {
		
		@Autowired SqlSessionTemplate mybatis;   //쓰레드 처리,커넥션관리 기능 추가
		
		public List<Map<String,Object>> getProfessorList(ProfessorVO professorVO){
			return mybatis.selectList("com.yedam.lms.smp.ProfessorVO.getProfessorList", professorVO);
		}
		
		public ProfessorVO getProfessor(ProfessorVO professorVO) {
			return (ProfessorVO)mybatis.selectOne("com.yedam.lms.smp.ProfessorVO.getProfessor", professorVO);
		}
		public void insertProfessor(ProfessorVO professorVO) {
			mybatis.insert("com.yedam.lms.smp.ProfessorVO.insertProfessor", professorVO);
		}
		public void updateProfessor(ProfessorVO professorVO) {
			mybatis.update("com.yedam.lms.smp.ProfessorVO.updateProfessor", professorVO);
		}
		public void deleteProfessor(ProfessorVO professorVO) {
			mybatis.delete("com.yedam.lms.smp.ProfessorVO.deleteProfessor", professorVO);
		}
		/*//부서다건삭제
		public void deleteProfessorList(List<String> list) {
			mybatis.delete("com.yedam.smp.ProfessorDAO.deleteProfessorList", list);
		}*/
	}



