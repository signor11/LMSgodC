package com.yedam.lms.poll.impl;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yedam.lms.poll.PollService;
import com.yedam.lms.poll.PollVO;

@Service("pollService")
public class PollServiceImpl implements PollService {
	
	@Autowired
	PollDAO dao;

	@Override
	public void insertPoll(Map<String,String> param,String stdnum) {
		PollVO vo = new PollVO();
		
		Set<String> keys = param.keySet();
	
		for(String key : keys) {
			System.out.println(key + " : " + param.get(key));
			vo.setQuestionnum(key.substring(6));
			vo.setAnswer(param.get(key));
			vo.setStudentnum(stdnum);
			System.out.println(vo);
			dao.insertPoll(vo);
		}
	}

	@Override
	public void updatePoll(PollVO vo) {
		dao.updatePoll(vo);
	}

	@Override
	public PollVO getPoll(String pollid) {
		return dao.getPoll(pollid);
	}

	@Override
	public int checkPoll(PollVO vo) {
		return dao.checkPoll(vo);
	}

	@Override
	public List<PollVO> countPoll(PollVO vo) {
		return dao.countPoll(vo);
	}
	
	

}
