package com.yedam.lms.hw.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.lms.hw.AddFileVO;
import com.yedam.lms.hw.SubmitHWVO;
import com.yedam.lms.hw.SubmitHWService;

@Service("submitHWService")
public class SubmitHWServiceImpl implements SubmitHWService {
	
	@Autowired
	SubmitHWDAO dao;

	@Override
	public void submitHwInsert(SubmitHWVO vo) {
		
	}

	@Override
	public void addfileInsert(AddFileVO vo) {
	}

	@Override
	public void submitHwUpdate(SubmitHWVO vo) {
		
	}

	@Override
	public void addfileUpdate(AddFileVO vo) {
		
	}

	@Override
	public void submitHwDelete(String submithwnum) {
		
	}

	@Override
	public SubmitHWVO getsubmitHw(String studentnum, String hwnum) {
		return dao.getsubmitHw(studentnum, hwnum);
	}

	@Override
	public List<SubmitHWVO> getsubmitHwList(SubmitHWVO sv) {
		return dao.getsubmitHwList(sv);
	}

}
