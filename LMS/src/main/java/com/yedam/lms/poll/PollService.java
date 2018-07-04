package com.yedam.lms.poll;

import java.util.List;
import java.util.Map;


public interface PollService {

	//설문 결과 등록
	public void insertPoll(Map<String,String> param,String stdnum);

	//설문 결과 수정
	public void updatePoll(PollVO vo);
	
	//설문 결과 단건 조회
	public PollVO getPoll(String pollid);
	
	//설문 중복 확인
	public PollVO checkPoll(PollVO vo);
	
	//설문 문항별 건수 확인
	public List<PollVO> countPoll(PollVO vo);
	

}
