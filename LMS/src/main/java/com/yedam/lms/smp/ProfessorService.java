package com.yedam.lms.smp;


import java.util.List;
import java.util.Map;



	public interface ProfessorService{
		//목록조회
		public List<Map<String,Object>> getProfessorList(ProfessorVO vo);
		
		public ProfessorVO getProfessor(String string);
		
		public void insertProfessor(ProfessorVO vo);
		
		public void updateProfessor(ProfessorVO vo);
		
		public void deleteProfessor(ProfessorVO vo);
		
		public int professorCount(ProfessorsearchVO vo);

		public List<Map<String, Object>> getProfessor(ProfessorsearchVO vo);

		

	
}

