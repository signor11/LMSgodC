package com.yedam.admin.web.etc.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.admin.web.etc.NoticeSearchVO;
import com.yedam.admin.web.etc.NoticeService;
import com.yedam.admin.web.etc.NoticeVO;

@Service("NoticeService")
public class NoticeImpl implements NoticeService{

	@Autowired
	NoticeDAO dao;
	
	@Override
	public NoticeVO getNotice(String seq) {
		return dao.getNotice(seq);
	}

	@Override
	public void insertNotice(NoticeVO vo) {
		dao.insertNotice(vo);
	}
	
	@Override
	public int getCount(NoticeVO vo) {
		return dao.getCount(vo);
	}

	@Override
	public List<Map<String, Object>> getNoticeList(NoticeVO vo) {
		return dao.getNoticeList(vo);
	}

	@Override
	public void updateNotice(NoticeVO vo) {
		dao.updateNotice(vo);
	}

	@Override
	public void deleteNotice(String seq) {
		dao.deleteNotice(seq);
		
		
	}

}
