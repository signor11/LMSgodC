package com.yedam.lms.result.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.lms.result.TestResultVO;

@Repository
public class TestResultDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	//교수 성적 입력
	public void insertTestResult(TestResultVO vo) {
		mybatis.insert("testresult.testResultInsert",vo);
	}
	
	//교수 성적 수정
	public void updateTestResult(TestResultVO vo) {
		mybatis.update("testresult.testResultUpdate",vo);
	}
	//단건 조회
	public TestResultVO gettestresult(TestResultVO vo) {
		return mybatis.selectOne("testresult.gettestresult",vo);
	}
	
	//교수 성적 조회
	public List<TestResultVO> gettestresultList(TestResultVO ts){
		return mybatis.selectList("testresult.gettestresultList",ts);
	}
	
	//학생 성적 조회
	public List<Map<String,Object>> gettestresultListstu(TestResultVO vo){
		return mybatis.selectList("testresult.gettestresult",vo);
	}
}
