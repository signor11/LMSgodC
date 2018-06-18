package com.yedam.web.emp.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.web.emp.EmpVO;

@Repository
public class EmpDAO {
	
	@Autowired SqlSessionTemplate mybatis; //thread처리,connection관리 기능 추가
	
	public List<Map<String,Object>> getEmpList(EmpVO empVO){
		return mybatis.selectList("com.yedam.web.emp.EmpDAO.getEmpList",empVO);
	}
	
	public EmpVO getEmp(String id) {
		return (EmpVO)mybatis.selectOne("com.yedam.web.emp.EmpDAO.getEmp",id);
	}
	public void insertEmp(EmpVO empVO) {
		mybatis.insert("com.yedam.web.emp.EmpDAO.insertEmp",empVO);
	}
	public void updateEmp(EmpVO empVO) {
		//update 가 insert 라도 상관은 없다.
		mybatis.update("com.yedam.web.emp.EmpDAO..updateEmp", empVO);
	}
	public void deleteEmp(String id) {
		mybatis.delete("com.yedam.web.emp.EmpDAO.deleteEmp",id);
	}
	
	
	
	
}
