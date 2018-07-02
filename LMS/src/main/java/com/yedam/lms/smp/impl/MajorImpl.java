package com.yedam.lms.smp.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.lms.smp.MajorService;
import com.yedam.lms.smp.MajorVO;

@Service("majorService")
public class MajorImpl implements MajorService {

	@Autowired
	MajorDAO dao;
	
	@Override
	public MajorVO getMajor(MajorVO vo) {
		return null;
	}

	@Override
	public List<Map<String, Object>> getMajorList(MajorVO vo) {
		return null;
	}

	@Override
	public void updateMajor(MajorVO vo) {
		
	}

	@Override
	public void deleteMajor(MajorVO vo) {
		
	}

}
