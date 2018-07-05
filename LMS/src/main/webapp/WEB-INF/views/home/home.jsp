<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>예담대학교(학생용)</title>

<script type="text/javascript"></script>
<script>
	//getCookie
	function getCookie(name) {
		var nameOfCookie = name + '=';
		var x = 0;
		while (x <= document.cookie.length) {
			var y = (x + nameOfCookie.length);
			if (document.cookie.substring(x, y) == nameOfCookie) {
				if ((endOfCookie = document.cookie.indexOf(';', y)) == -1)
					endOfCookie = document.cookie.length;
				return unescape(document.cookie.substring(y, endOfCookie));
			}
			x = document.cookie.indexOf(' ', x) + 1;
			if (x == 0)
				break;
		}
		return '';
	}
	//setcookie
	function setCookie(name, value, expiredays) {
        var todayDate = new Date();
        todayDate.setDate(todayDate.getDate() + expiredays);
        document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";"
    }
 	
	//하루동안 보지않기
    function fnClose() {
    	
    	if ($('#todayChk').is(":checked")){
            setCookie("popup_main1", "done", 1);
 
            //self.close();
            $("#modifyModal").modal("hide");


        }
    } 

	/* //하루동안 보지않기
	function fnClose() {
		var form = document.dtlForm;

		if (form.todayChk.checked == true) {
			var date = new Date();
			date.setHours(23, 59, 59, 999);
			opener.document.cookie = "injusticePopup=Yes; path=/;domain=.g2b.go.kr; expires="
					+ date.toUTCString();
		}
		;
		self.close();
	} */ 
	//팝업 호출
	$(function() {
		var a = getCookie("popup_main1")
		console.log(location.href.indexOf("login.do"))

		if ("${sessionScope.loginvo}" == ""
				&& location.href.indexOf("login.do") == -1
				&& location.href.indexOf("logout.do") == -1
				&& a != "done")
			$("#modifyModal").modal();
	});

	/* //사이즈 조정
	function modifyModal(){
		.modal-content.modal-fullsize {
			  height: auto;
			  min-height: 100%;
			  border-radius: 0; 
			}
	}; */
</script>
</head>
<body>
	<!-- banner -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">

		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<div class="container">
					<div class="carousel-caption">
						<h3>
							<span>Set goal,</span>
						</h3>
						<h4>reach the goal</h4>
						<p>Yedam LMS</p>

					</div>
				</div>
			</div>

		</div>
	</div>

	<!-- 공지사항 Model -->

	<div class="modal" id="modifyModal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">공지사항</h4>
					<hr>
					<div class="modal-body">
						<div class="form-group" id="title" name="title">${no.TITLE}
						</div>
						<div class="form-group" id="content" name="content">
							${no.CONTENT}</div>
					</div>
					<div class="modal-footer">
						<label><input type="checkbox" id="todayChk" name="todayChk"
							onclick="fnClose()"> <span>오늘 하루 이 창을열지 않음</span></label>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>




