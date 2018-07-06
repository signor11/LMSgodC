package com.yedam.lms.test;

import java.util.List;
import java.util.Map;

import com.yedam.lms.classs.ClassapplyVO;


public interface TestService {
	
	public List<Map<String, Object>> gettestListPro(String classnum);
	
	public TestVO testCheck(TestVO vo);
	
	public void testInsert(TestVO vo);
	
	public String gettestn();
	
}
