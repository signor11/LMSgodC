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
	public MajorVO getMajor(String majornum) {
		return dao.getMajor(majornum);
	}

	@Override
	public List<Map<String, Object>> getMajorList(MajorVO vo) {
		return dao.getMajorList(vo);
	}

	@Override
	public void updateMajor(MajorVO vo) {
		dao.updateMajor(vo);
	}

	@Override
	public void deleteMajor(MajorVO vo) {
		dao.deleteMajor(vo);
	}

	@Override
	public void insertMajor(MajorVO vo) {
		dao.insertMajor(vo);
	}

	@Override
	public int majorCount(MajorVO vo) {
		return dao.majorCount(vo);
	}

	

}
