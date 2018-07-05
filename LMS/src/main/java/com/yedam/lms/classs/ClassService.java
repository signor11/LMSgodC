package com.yedam.lms.classs;

import java.util.List;
import java.util.Map;

public interface ClassService {
	
	public ClassVO getClass(String classnum);
	
	public List<Map<String, Object>> getClassList2(String classnum);
	
	public List<Map<String, Object>> stu_classnameList(String studentnum);
	
	public List<Map<String, Object>> pro_classnameList(String professornum);
	
	public int count(ClassSearchVO classSearchVO);
	
	public void insertClass(ClassVO classVO);
	
	public void updateClass(ClassVO classVO);
	
	public void deleteClass(String classnum);

}
