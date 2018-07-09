<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
<script type="text/javascript"
	src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<script type="text/javascript"></script>

<head>
             
               
 <script>
 function redo() {
		location.assign("./getClassList2");
	}	
	 $(document).ready(function() {

		$("#btn_insert").click(	function() {

						 	var tel1_pattern = /(^01[016789]$)/;

							//alert("ok");
							if ($("#classname").val() == "") {
								alert("과목명을 꼭 입력하세요!");
								$("#classname").focus();
								
							}	else if ($("#credit").val() == "") {
									alert("학점을 꼭 입력하세요!");
									$("#credit").focus();
							}else if ($("#maxstudent").val() == "") {
								alert("수강인원을  꼭 입력하세요!");
								$("#maxstudent").focus();
							}
							 else if ($("#pnum").val() == "") {
								alert("담당교수을  꼭 선택하세요!");
								$("#pnum").focus();

							}else if ($("#classtime").val() == "") {
								alert("강의시간을  꼭 입력하세요!");
								$("#classtime").focus();
							}  
							 else {
								 pro_Form.submit();
							} 
					});
		
						
		});
 function checkClass(){
	var requestData = {"classname" : $("#classname").val()}
	$.ajax({
		url : '${pageContext.request.contextPath}/checkClass',
		type : 'POST',
		data : requestData,
		dataType : 'json',
		success : function(data){
			
		if(data.result==true){
		$("#checkname").html(' 과목명 사용 가능');
		}
		else if(data.result==false){
			$("#checkname").html(' 중복 사용 불가');
		}
		}
	
	});
} 
	 
</script>
   </head>           
    <body>     
              <div class="panel-body">
                <form action="./insertClass" method="POST" name="pro_Form" class="form-horizontal ">
                  <div class="form-group">
                    <label class="col-sm-2 control-label">과목명</label>
                    <div class="col-sm-10">
                      <input type="text" name="classname" id="classname" size="18"
						maxlength="12" class="form" onkeyup="checkClass();"/>
						<span id="checkname"></span>
                     
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">학점</label>
                    <div class="col-sm-10">
                     <input type="number" name="credit" id="credit" size="18"
						maxlength="12" class="form" />
                    </div>
                  </div>
                  
                  
                  <div class="form-group">
                    <label class="col-sm-2 control-label">수강인원</label>
                    <div class="col-sm-10" >
                      <input type="number" name="maxstudent" id="maxstudent" size="18"
						maxlength="12"  class="form"/>
						
                    </div>
                  </div>
                  <%-- <div class="form-group">
                    <label class="col-sm-2 control-label">학과명</label>
                    <div class="col-sm-10">
                    		<select id="major" name="majornum" style="position:relative; top:8px;">
                    		 <c:forEach items="${m_list}" var="m">
                    		<option value="${m.MAJORNUM}" 
                    			<c:if test="${m.MAJORNUM==param.majornum}">selected</c:if>> 
                    		${m.MAJORNAME}</option>
							</c:forEach>
							
							<option value="${major.majornum}" selected>${major.majorname}</option>
							<!-- <option value="" selected hidden="">선택</option>
							<option value="38000001">컴공</option>
							<option value="38000002">국문</option>
							<option value="38000003">기계</option>
							<option value="38000004">예절</option> -->						
							</select>
				                    </div> --%>
							<div class="form-group">
								<label class="col-sm-2 control-label">담당교수</label>
								<div class="col-sm-10">
									<select id="pnum" name="professornum"
										style="position: relative; top: 8px;">
										<c:forEach items="${c_list}" var="c">
											<option value="${c.PROFESSORNUM}">${c.PROFESSORNAME}&nbsp;&nbsp;(${c.PROFESSORNUM})</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">강의시간</label>
								<div class="col-sm-10">
									<input type="text" name="classtime" id="classtime" size="18"
										maxlength="20"  class="form"/>   입력예시 : 월요일 1교시 ~ 월요일 2교시 -> 월1,월2
				
								</div>
							</div>
			      			<div align="center">
			      			  <input type="button" id="btn_insert" value="등록" class="btn btn-danger">
								<input type="reset" id="btn_cancel" value="취소" onclick="javascript:redo();" class="btn btn-danger">
			                </div>
                
                </form>
              </div>
             
</body>
</html>