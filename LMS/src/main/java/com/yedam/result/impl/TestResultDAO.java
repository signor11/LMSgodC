package com.yedam.result.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TestResultDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	
}
