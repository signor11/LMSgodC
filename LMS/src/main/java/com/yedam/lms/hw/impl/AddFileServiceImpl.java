package com.yedam.lms.hw.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.lms.hw.AddFileService;
import com.yedam.lms.hw.AddFileVO;

@Service("addFileService")
public class AddFileServiceImpl implements AddFileService {
	
	@Autowired
	AddFileDAO dao;

	@Override
	public void AddFileInsert(AddFileVO vo) {
		
	}

	@Override
	public void addfileUpdate(AddFileVO vo) {
		
	}

	@Override
	public void addfileDelete(String addfileid) {
		
	}

	@Override
	public AddFileVO getAddFile(String addfileid) {
		return dao.getAddFile(addfileid);
	}

	@Override
	public List<AddFileVO> getAddFileList(AddFileVO vo) {
		return dao.getAddFileList(vo);
	}

}
