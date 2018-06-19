package com.yedam.web;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yedam.web.emp.EmpVO;
import com.yedam.web.emp.impl.EmpDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:config/applicationContext.xml",
		"classpath:config/transactionContext.xml" })

public class EmpClientSpring {

	@Autowired
	EmpDAO empDAO;

	@Test
	public void getEmpTest() {
		//단건조회
		//EmpVO empVO = empDAO.getEmp("100");
		//System.out.println(empVO);
		
		//다건 조회
		EmpVO empvo = new EmpVO();
		empvo.setDepartmentId("20");
		empvo.setFirstName("m");
		List<Map<String,Object>> list = empDAO.getEmpList(empvo);
		//Map의 키 값은 컬럼명으로 들어간다(대문자)
		System.out.println("조회건수 : "+list.size());
		System.out.println(list);
		
		
		
		
	}
	/*
	 * @Test public void insertEmpTest() { EmpVO vo = new EmpVO();
	 * vo.setFirstName("홍"); vo.setLastName("길동"); vo.setEmail("naver");
	 * vo.setHireDate("sysdate"); vo.setJobId("ST_MAN"); empDAO.insertEmp(vo);
	 * 
	 * }
	 */
	
	//부서 다건 삭제용 테스트
	   @Test
	   public void deptDeleteTest()  {
	         List<String> list = new ArrayList<String>();
	         list.add("460");
	         list.add("330");
	         list.add("320");
	         empDAO.deleteDeptList(list);
	         
	   }

}
