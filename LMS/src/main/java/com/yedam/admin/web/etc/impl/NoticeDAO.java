package com.yedam.admin.web.etc.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.admin.web.etc.NoticeVO;

@Repository
public class NoticeDAO {
		
		@Autowired
		SqlSessionTemplate mybatis;
		
		//목록 조회
		public List<Map<String,Object>> getNoticeList(NoticeVO vo){
			return mybatis.selectList("noticeDAO.getNoticeList",vo);
		}
		//단건조회
		public NoticeVO getNotice(String seq) {
			return mybatis.selectOne("noticeDAO.getNotice",seq);
		}
		
		//입력
		public void insertNotice(NoticeVO vo) {
			mybatis.insert("noticeDAO.insertNotice",vo);
		}
		
		//수정
		public void updateNotice(NoticeVO vo) {
			mybatis.update("noticeDAO.updateNotice",vo);
		}
			
		//삭제 
		public void deleteNotice(NoticeVO vo) {
			mybatis.delete("noticeDAO.deleteNotice",vo);
		}
}
