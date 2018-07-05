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
	$(document).ready(function() {

		$("#btn_insert").click(	function() {

						 	var tel1_pattern = /(^01[016789]$)/;

							//alert("ok");
							if ($("#id").val().length != 8) {
								alert("아이디 8자리를 꼭 입력하세요!");
								$("#id").focus();
							} else if ($("#pwd").val() == "") {
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
							 else if ($("#majornum").val() == "") {
								alert("담당과목을  꼭 선택하세요!");
								$("#majornum").focus();

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
                <form action="./updateProfessor" method="post" name="pro_Form" class="form-horizontal " method="post">
                  <div class="form-group">
                    <label class="col-sm-2 control-label" >아이디</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="professornum" id="id" size="18"
						maxlength="12" value="${get_pro.professornum}">
                    <span class="help-block">8자리</span>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">비밀번호</label>
                    <div class="col-sm-10">
                      <input type="text" name="professorpw" id="pwd" size="18"
						maxlength="12" class="form-control" value="${get_pro.professorpw}"/>
                     
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">이 름</label>
                    <div class="col-sm-10">
                     <input type="text" name="professorname" id="name" size="18"
						maxlength="12" class="form-control" value="${get_pro.professorname}"/>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">연락처</label>
                    <div class="col-sm-10" >
                      <input type="text" name="professorphone" id="tel1" size="18"
						maxlength="11"  value="${get_pro.professorphone}"/>
						 <span class="help-block">숫자만 11자리</span>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label">학과명</label>
                    <div class="col-sm-10">
                    		<select id="major" name="majornum" style="position:relative; top:8px;">
                    		 <c:forEach items="${m_list}" var="m">
                    		<option value="${m.MAJORNUM}" 
                    			<c:if test="${m.MAJORNUM==param.majornum}">selected</c:if>> 
                    		${m.MAJORNAME}</option>
							</c:forEach>
							</select>
					</div>
							<%-- <option value="${major.majornum}" selected>${major.majorname}</option> --%>
							<!-- <option value="" selected hidden="">선택</option>
							<option value="38000001">컴공</option>
							<option value="38000002">국문</option>
							<option value="38000003">기계</option>
							<option value="38000004">예절</option> -->						
							
                   
                 <div class="form-group" style="position:relative; top:20px;right:280px;">
                    <label class="col-sm-2 control-label">등록일</label>
                    <input type="text" name="hiredate" id="hiredate" size="18" maxlength="10" style="position:relative; left:20px;"  value="${get_pro.hiredate}"/>         
                </div>
      			
      			<div align="center">
      			  <input type="submit" id="btn_insert" value="수정">
					<input type="reset" id="btn_cancel" value="취소">
                </div>
                </div>
                </form>
              </div>
</body>
</html>