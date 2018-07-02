package com.yedam.lms.poll;

import java.util.Map;

import javax.servlet.http.HttpSession;


public interface PollService {

	//설문 결과 등록
	public void insertPoll(Map<String,String> param,String stdnum);

	//설문 결과 수정
	public void updatePoll(PollVO vo);
	
	//설문 결과 단건 조회
	public PollVO getPoll(String pollid);
	

}
