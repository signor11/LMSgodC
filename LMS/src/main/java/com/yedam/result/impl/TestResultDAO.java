package com.yedam.result.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.result.TestResultVO;

@Repository
public class TestResultDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	//교수 성적 입력
	public void testResultInsert(TestResultVO vo) {
		mybatis.insert("testresult.testResultInsert",vo);
	}
	
	//교수 성적 수정
	public void testResultUpdate(TestResultVO vo) {
		mybatis.update("testresult.testResultUpdate",vo);
	}
	//단건 조회
	public TestResultVO gettestresult(String testresultnum) {
		return mybatis.selectOne("testresult.gettestresult",testresultnum);
	}
	
	//교수 성적 조회
	public List<TestResultVO> gettestresultList(TestResultVO ts){
		return mybatis.selectList("testresult.gettestresultList",ts);
	}
	
	//학생 성적 조회
	public List<TestResultVO> gettestresultListstu(TestResultVO vo){
		return mybatis.selectList("testresult.gettestresult",vo);
	}
}
