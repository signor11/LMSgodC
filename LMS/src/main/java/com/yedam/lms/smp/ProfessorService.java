package com.yedam.lms.smp;


import java.util.List;
import java.util.Map;



	public interface ProfessorService{
		//목록조회
		public List<Map<String,Object>> getProfessorList(ProfessorVO vo);
		
		public ProfessorVO getProfessor(ProfessorVO vo);
		
		public void insertProfessor(ProfessorVO vo);
		
		public void updateProfessor(ProfessorVO vo);
		
		public void deleteProfessor(String professornum);
}

