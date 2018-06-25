<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html><html><head><title>insertBoard.jsp</title></head>
<body>

<form:form action="./insertProfessor" method="post">           
    <div class="control-group">
        <label class="control-label" for="studentnum">교수번호</label>
        <div class="controls">
            <form:input path="studentNum" />                                                
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="studentpw">교수비밀번호</label>
        <div class="controls">
            <form:password path="studentPw" />                                        
        </div>
    </div>
    <div class="control-group">
        <label class="control-label" for="professorname">이름</label>
        <div class="controls">
            <form:input path="professorname" />                                                    
    </div>
 
    <div class="control-group">
        <label class="control-label" for="professorphone">핸드폰</label>
        <div class="controls">
            <form:input path="professorphone" />                                                    
        </div>
   </div>
   <div class="control-group">
        <label class="control-label" for="hiredate">입사일</label>
        <div class="controls">
            <form:input path="hiredate" />                                                    
        </div>
   </div>
   <div class="control-group">
        <label class="control-label" for="majornum">과목번호</label>
        <div class="controls">
            <form:input path="majornum" />                                                    
        </div>
   </div>
   
   
  
    <div class="control-group">
        <div class="controls">
            <button type="submit" class="btn btn-primary">교수등록</button>
        </div>
    </div>
    </div>
</form:form>



</body>
</html>