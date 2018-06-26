package com.yedam.lms.hw.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.lms.hw.HWService;
import com.yedam.lms.hw.HWVO;

@Service("hwService")
public class HWServiceImpl implements HWService {
	
	@Autowired
	HWDAO dao;

	@Override
	public void hwInsert(HWVO vo) {
		dao.hwInsert(vo);
	}

	@Override
	public void hwUpdate(HWVO vo) {
		dao.hwUpdate(vo);
	}

	@Override
	public void hwDelete(HWVO vo) {
		dao.hwDelete(vo);
	}

	@Override
	public HWVO getHW(String hwnum) {
		return dao.getHW(hwnum);
	}

	//학생용 다건조회
	@Override
	public List<HWVO> getHWList(HWVO hw) {
		return dao.getHWList(hw);
	}
	
	//교수용 다건조회
	@Override
	public List<HWVO> getHWListPro(HWVO hw) {
		return dao.getHWListPro(hw);
	}

}
