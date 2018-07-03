package com.yedam.lms.poll.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yedam.lms.poll.PollVO;

@Repository
public class PollDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;
	
		// 설문 결과 등록
		public void insertPoll(PollVO vo) {
			mybatis.insert("com.yedam.lms.poll.impl.PollDAO.insertPoll",vo);
		}
		// 설문 결과 수정
		public void updatePoll(PollVO vo) {
			mybatis.update("com.yedam.lms.poll.impl.PollDAO.updatePoll",vo);
		}
		// 설문 결과 단건 조회
		public PollVO getPoll(String pollid) {
			return mybatis.selectOne("com.yedam.lms.poll.impl.PollDAO.getPoll",pollid);
		}
		//설문 중복 확인
		public PollVO checkPoll(PollVO vo) {
			return mybatis.selectOne("com.yedam.lms.poll.impl.PollDAO.checkPoll",vo);
		}
		//설문 문항별 건수 확인
		public List<PollVO> countPoll(PollVO vo) {
			return mybatis.selectList("com.yedam.lms.poll.impl.PollDAO.countPoll",vo);
		}

}
