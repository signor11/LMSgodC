package com.yedam.lms.test.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.lms.test.TestService;
import com.yedam.lms.test.TestVO;

@Service("TestService")
public class TestServiceImpl implements TestService{
	
	@Autowired
	TestDAO dao;

	@Override
	public List<Map<String, Object>> gettestListPro(String classnum) {
		return dao.gettestListPro(classnum);
	}

	@Override
	public TestVO testCheck(TestVO vo) {
		return dao.testCheck(vo);
	}

	@Override
	public void testInsert(TestVO vo) {
		dao.testInsert(vo);
		
	}

	@Override
	public String gettestn() {
		return dao.gettestn();
	}

}
