package com.yedam.lms.smp.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.yedam.lms.smp.ProfessorService;
import com.yedam.lms.smp.ProfessorVO;
import com.yedam.lms.smp.ProfessorsearchVO;



@Service("professorService")
public class ProfessorImpl implements ProfessorService {

	@Autowired
	
	ProfessorDAO dao;
	
	@Override
	public List<Map<String, Object>> getProfessorList(ProfessorVO vo) {
		
		return dao.getProfessorList(vo);
	}


	@Override
	public void insertProfessor(ProfessorVO vo) {
		dao.insertProfessor(vo);
		
	}

	@Override
	public void updateProfessor(ProfessorVO vo) {
		dao.updateProfessor(vo);
		
	}

	@Override
	public int professorCount(ProfessorsearchVO vo) {
		return dao.professorCount(vo);
	
	}

	@Override
	public void deleteProfessor(ProfessorVO vo) {
		dao.deleteProfessor(vo);
		
	}

	

	@Override
	public ProfessorVO getProfessor(String Professornum) {
		// TODO Auto-generated method stub
		return dao.getProfessor(Professornum);
	}

}
