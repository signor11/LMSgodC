<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>과목등록</title>

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
<script type="text/javascript"
	src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<script type="text/javascript"></script>

             
 <script>
	$(document).ready(function() {

		$("#btn_insert").click(	function() {

						 	var tel1_pattern = /(^01[016789]$)/;

							//alert("ok");
							if ($("#pwd").val() == "") {
								alert("비밀번호를 꼭 입력하세요!");
								$("#pwd").focus();

							}  else if ($("#name").val() == "") {
								alert("이름을 꼭 입력하세요!");
								$("#name").focus();

							} else if ($("#tel1").val() == "") {
								alert("전화번호를 입력하세요!");
								$("#tel1").focus();

							} else if ($("#tel1").val().length != 11) {

								alert("전화번호를 11개의 숫자로 꼭 입력하세요!");
								$("#tel1").val("");
								$("#tel1").focus();

							}  
							 else if ($("#major").val() == "") {
								alert("과목명을  꼭 선택하세요!");
								$("#major").focus();

							} else if ($("#hiredate").val() == "") {
								alert("등록일을  꼭 입력하세요!");
								$("#hiredate").focus();

							} else {
								alert("등록 완료");
							} 
					});
		
					$("#hiredate").datepicker({
						dateFormat : 'yy-mm-dd'
					});						
	});
	//$("#birth").datepicker();
	//$.datepicker.setDefaults( $.datepicker.regional[ "" ] );
	//$("#birth").datepicker($.datepicker.regional["ko"]);
	 
</script>
   </head>           
    <body>      
              <div class="panel-body">
                <form class="form-horizontal " method="post">
               
                  <div class="form-group">
                    <label class="col-sm-2 control-label">과목번호</label>
                    <div class="col-sm-10">
                      <input type="text" name="classnum" id="classnum" size="18"
						maxlength="12" class="form-control"/>
                     
                    </div>
                  </div>
                 
                 <div class="form-group">
                    <label class="col-sm-2 control-label">과목명</label>
                    <div class="col-sm-10">
                    		<select id="class" name="classnum" style="position:relative; top:8px;">
								<option value="" selected hidden="">선택</option>
									<c:forEach items="${class}" var="m">
								<option value="${c.CLASSNUM}">${c.CLASSNAME}</option>				
									</c:forEach>
							</select>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">학점</label>
                    <div class="col-sm-10" >
                      <input type="text" name="score" id="score" size="18"
						maxlength="11" />
					
                    </div>
                  </div>
                  
                 <div class="form-group" style="top:20px;right:298px;">
                    <label class="col-sm-2 control-label">수강인원</label>
                    <input type="text" name="maxstudent" id="maxstudent" size="18" maxlength="10" />         
                </div>
                 <div class="form-group" style="top:20px;right:298px;">
                    <label class="col-sm-2 control-label">담당교수</label>
                    <input type="text" name="professorname" id="professorname" size="18" maxlength="10" />         
                </div>
                 <div class="form-group" style="top:20px;right:298px;">
                    <label class="col-sm-2 control-label">강의시간</label>
                    <input type="text" name="classtime" id="classtime" size="18" maxlength="10" />         
                </div>
                
                
                
                
                
                
      			<div align="center">
      			  <input type="submit" id="btn_insert"value="등록">
					<input type="reset" id="btn_cancel" value="취소"> 
                </div>
                </form>
                </div>
             
</body>
</html>
