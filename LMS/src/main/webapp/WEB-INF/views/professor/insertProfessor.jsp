<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jQuery 회원가입</title>
<style>
     #jointable tr{width: 200px;font-size: 20px;} 
    #jointable th{text-align: right; background-color:orange;}
    #jointable td input {border:1px solid seagreen;}
</style>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<script type="text/javascript" src="jquery.ui.datepicker-ko.js"></script>
<script type="text/javascript">
   
	$(document).ready(function() {
 
    $("#btn_join").click(function() {
       
    	var tel1_pattern = /(^01[016789]$)/; //정규식
    
 
            //alert("ok");
            if ($("#id").val().length != 8) {
                alert("아이디 8자리를 꼭 입력하세요!");
                $("#id").focus();
            } else if ($("#pwd").val() == "") {
                alert("비밀번호를 꼭 입력하세요!");
                $("#pwd").focus();
 
            } else if ($("#pwd2").val() == "") {
                alert("비밀번호확인 을 꼭 입력하세요!");
                $("#pwd2").focus();
 
            } else if ($("#pwd").val() != $("#pwd2").val()) {
                alert("비밀번호와 비밀번호 확인이 일치하지않습니다.");
                $("#pwd").val("");
                $("#pwd2").val("");
                $("#pwd1").focus();
 
            } else if ($("#name").val() == "") {
                alert("이름을 꼭 입력하세요!");
                $("#name").focus();
 
            } else if ($("#tel1").val() == "") {
                alert("전화번호 첫번째자리 입력하세요!");
                $("#tel1").focus();
 
            } else if ($("#tel1").val().length != 3) {
 
                alert("전화1을 3개의 숫자로 꼭 입력하세요!");
                $("#tel1").val("");
                $("#tel1").focus();
 
            } else if (isNaN($("#tel1").val())) {
                alert("전화1을 3개의 숫자로 꼭 입력하세요!");
                $("#tel1").val("");
                $("#tel1").focus();
 
            } else if (!tel1_pattern.test($("#tel1").val())) {
                alert("010, 011, 016, 017, 018, 019 만 가능합니다.")
                $("#tel1").val("")
                $("#tel1").focus();
            }
            /*
            if($("#tel1").val() != "" & $("#tel1").val().length ==3 & !isNaN($("#tel1").val()) ){
            alert("okkkkkkk");
            var pattern = /(^01[016789]$)/; //정규식 슬래쉬(/)로 시작해서, 슬래쉬(/)로 끝났다.
            var tel1=$("#tel1").val();
            if(! pattern.test(tel1)){
            //틀리면
            alert("010, 011, 016, 017, 018, 019,o19만 가능합니다.")  
            $("#tel").val("")
            $("#tel").focus();
                   
                }
            }*/
 
            else if ($("#tel2").val() == "") {
                alert("전화번호 두번째자리를 입력하세요!");
                $("#tel2").focus();
 
            } else if ($("#tel1").val().length != 3) {
 
                alert("전화1을 3개의 숫자로 꼭 입력하세요!");
                $("#tel2").val("");
                $("#tel2").focus();
            } else if (isNaN($("#tel2").val())) {
                alert("전화2을 3~4개의 숫자로 꼭 입력하세요!");
                $("#tel2").val("");
                $("#tel2").focus();
            } else if ($("#tel2").val() != "" & $("#tel2").val().length > 4 & isNaN($("#tel2").val())) {
                alert("okkkkkkk");
                var pattern = /(^01[016789]$)/; //정규식 슬래쉬(/)로 시작해서, 슬래쉬(/)로 끝났다.
                var tel1 = $("#tel2").val();
                if (!pattern.test(tel1)) {
                    //틀리면
                    alert("010, 011, 016, 017, 018, 019 만 가능합니다.")
                    $("#te2").val("")
                    $("#te2").focus();
                }
            } 
            else if ($("#tel3").val() == "") {
                alert("전화번호 세번째자리를 입력하세요!");
                $("#tel3").focus();
 
            }  /* else if ($("#birth").val() == "") {
                alert("생일을  꼭 입력하세요!");
                $("#birth").focus();
 
            } */else if ($("#major").val() == "") {
                alert("담당과목을  꼭 선택하세요!");
                $("#major").focus();
            }
             else {
                alert("ok");
            } 
        });
 
        //$("#birth").datepicker();
        //$.datepicker.setDefaults( $.datepicker.regional[ "" ] );
        //$("#birth").datepicker($.datepicker.regional["ko"]);
       /*  $("#birth").datepicker();  */
 
    });
   
</script>
</head>
<body>
<h1 align="center">교수등록</h1>
<!--  
 
id, pwd, name, tel, addr, birth, job, gender, email, intro
 
 -->
<form action="">
 

<table id="jointable" align="center" >
    <tr>
        <th>아이디</th>
        <td><input type="text" name="id" id="id" size="16" maxlength="12" /></td>
    </tr>
    <tr>
        <th>비밀번호</th>
        <td><input type="password" name="pwd" id="pwd" size="16" maxlength="12" /></td>
    </tr>
    <tr>
        <th>비밀번호확인</th>
        <td><input type="password" name="pwd2" id="pwd2" size="16" maxlength="12" /></td>
    </tr>
    <tr>
        <th>이름</th>
        <td><input type="text" name="name" id="name" size="16" maxlength="12" /></td>
    </tr>
    <tr>
        <th>휴대폰</th>
        <td>
        <input type="text" name="tel1" id="tel1" size="3" maxlength="3" />-
        <input type="text" name="tel2" id="tel2" size="4" maxlength="4" />-
        <input type="text" name="tel3" id="tel3" size="4" maxlength="4"/>
        </td>
    </tr>
    <tr>
        <th>담당과목</th>
        <td>
            <select id = "major" name="CLASSNUM">
                <option value="48000001">자바</option>
                <option value="48000002">데이터베이스</option>
                <option value="48000003">소설</option>
                <option value="48000004">시</option>
                <option value="48000005">캐드</option>
                <option value="48000006">MEMS</option>
                <option value="58000007">영어</option>
                <option value="58000008">수학</option>
            </select>
       
        </td>
    </tr>

    
    <!-- <tr>
        <th>주소</th>
        <td><input type="text" name="addr" id="addr" maxlength="100" /></td>
    </tr>
    <tr>
        <th>생일</th>
        <td>
       
        <input type="text" id="birth" size="8" maxlength="8" />
           
       
        </td>
    </tr>
    <tr>
        <th>직업</th>
        <td>
            <select id = "job">
                <option value="">------
                <option value="pro">학생   
                <option value="std">교수
            </select>
       
        </td>
    </tr>
    <tr>
        <th>성별</th>
        <td>
            <input type="radio" id="man" name="gender" value="M" checked="checked" >남자
            <input type="radio" id="woman" name="gender" value="W">여자
        </td>
    </tr> -->   
    <tr align="right"> 
        <td colspan="2">
            <input type="button" id="btn_join" value="등록">
            <input type="reset" id="btn_cancel" value="취소">
        </td>
    </tr>
</table>
 
 
</form>
 
</body>
</html>
