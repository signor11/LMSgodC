package com.yedam.lms.test.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.yedam.lms.test.TestVO;

@Repository
public class TestDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	public List<Map<String, Object>> gettestListPro(String classnum){
		return mybatis.selectList("com.yedam.lms.test.impl.TestDAO.gettestListPro", classnum);
	}
	
	public TestVO testCheck(TestVO vo) {
		return mybatis.selectOne("com.yedam.lms.test.impl.TestDAO.testCheck", vo);
	}
	
	public void testInsert(TestVO vo) {
		mybatis.insert("com.yedam.lms.test.impl.TestDAO.testInsert", vo);
	}
	
	public String gettestn() {
		return mybatis.selectOne("com.yedam.lms.test.impl.TestDAO.gettestn");
	}

	
}
