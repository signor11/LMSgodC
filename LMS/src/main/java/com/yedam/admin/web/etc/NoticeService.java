package com.yedam.admin.web.etc;

import java.util.List;
import java.util.Map;

public interface NoticeService {

	//목록 조회
	public List<Map<String,Object>> getNoticeList(NoticeVO vo);
	
	//단건조회
	public NoticeVO getNotice(String seq);
	
	//입력
	public void insertNotice(NoticeVO vo);
	
	//수정
	public void updateNotice(NoticeVO vo);
	
	//삭제 
	public void deleteNotice(String seq);	
}
