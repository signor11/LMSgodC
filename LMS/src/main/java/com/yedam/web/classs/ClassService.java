package com.yedam.web.classs;

import java.util.List;
import java.util.Map;

public interface ClassService {
	
	public ClassVO getClass(String classnum);
	
	public List<Map<String, Object>> getClassList(ClassVO classVO);
	
	public List<Map<String, Object>> stu_classnameList(String studentnum);
	
	public List<Map<String, Object>> pro_classnameList(String professornum);
	
	public int count(ClassSearchVO classSearchVO);

}
