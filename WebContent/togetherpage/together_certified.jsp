<%@page import="vo.Together_Info"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
	Together_Info ti = (Together_Info) request.getAttribute("together_info");
	String t_name = ti.getInfo_name();
	String tog_no = request.getParameter("tog_no");
%>
<head>
<meta charset="UTF-8">
<!-- 파비콘 -->
<link rel="shortcut icon" href="../common_images/favicon.ico"
	type="image/x-icon">
<link rel="icon" href="../common_images/favicon.ico" type="image/x-icon">
<title>TOGETHER 인증하기</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>


<script>
	function previewImage(targetObj, View_area) {
		var preview = document.getElementById(View_area); //div id
		var ua = window.navigator.userAgent;

		//ie일때(IE8 이하에서만 작동)
		if (ua.indexOf("MSIE") > -1) {
			targetObj.select();
			try {
				var src = document.selection.createRange().text; // get file full path(IE9, IE10에서 사용 불가)
				var ie_preview_error = document
						.getElementById("ie_preview_error_" + View_area);

				if (ie_preview_error) {
					preview.removeChild(ie_preview_error); //error가 있으면 delete
				}

				var img = document.getElementById(View_area); //이미지가 뿌려질 곳

				//이미지 로딩, sizingMethod는 div에 맞춰서 사이즈를 자동조절 하는 역할
				img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"
						+ src + "', sizingMethod='scale')";
			} catch (e) {
				if (!document.getElementById("ie_preview_error_" + View_area)) {
					var info = document.createElement("<p>");
					info.id = "ie_preview_error_" + View_area;
					info.innerHTML = e.name;
					preview.insertBefore(info, null);
				}
			}
			//ie가 아닐때(크롬, 사파리, FF)
		} else {
			var files = targetObj.files;
			for (var i = 0; i < files.length; i++) {
				var file = files[i];
				var imageType = /image.*/; //이미지 파일일경우만.. 뿌려준다.
				if (!file.type.match(imageType))
					continue;
				var prevImg = document.getElementById("prev_" + View_area); //이전에 미리보기가 있다면 삭제
				
				if (prevImg) {
					preview.removeChild(prevImg);
				}
				$(".obj").remove();
				
				var img = document.createElement("img");
				img.id = "prev_" + View_area;
				img.classList.add("obj");
				img.file = file;
				img.style.width = '100%';
				// img.style.height = '100px';
				preview.appendChild(img);
				if (window.FileReader) { // FireFox, Chrome, Opera 확인.
					var reader = new FileReader();
					reader.onloadend = (function(aImg) {
						return function(e) {
							aImg.src = e.target.result;
						};
					})(img);
					reader.readAsDataURL(file);
				} else { // safari is not supported FileReader
					//alert('not supported FileReader');
					if (!document.getElementById("sfr_preview_error_"
							+ View_area)) {
						var info = document.createElement("p");
						info.id = "sfr_preview_error_" + View_area;
						info.innerHTML = "not supported FileReader";
						preview.insertBefore(info, null);
					}
				}
			}
		}
	}

	// HEADER / FOOTER
	$(document).ready(function() {

		$("header").load("./main_content/Header.jsp");
        $("footer").load("./main_content/Footer.jsp");    

		
		/* 인증하기 버튼 */
		/* var $certified = $("#certified");
	
		$certified.click(function() {

			var form = $("form.form")[0];
			var formData = new FormData(form);
		
			$.ajax({
				url : "./certified_upload"
				method : "post",
				success : function(responseObj) {
					if (responseObj.status == 1) {
						alert("성공 responseObj.pho_good" + responseObj.pho_good);
					
					} else {
						alert("인증 생성 실패");
					}
				},
				error : function(jqXHR) {
					alert(jqXHR.status); //404,403, 500 : 서버문제
				},
				enctype : 'multipart/form-data',
				contentType : false,
				processData : false,
				data : formData

			});
			return false;
		}); */
		/* 인증하기 버튼 끝 */

	});
</script>
<style>
.article {
	margin-left: auto;
	margin-right: auto;
	width: 80%;
}

#text {
	width: 100%;
	height: 400px;
	padding: 0px;
}

.obj {

	width: 100%;
}
</style>
</head>

<body>
	<header></header>
	<div class="article">

		<div class="container">
			<h2><%=t_name%></h2>
			<div class="row">
               <div class="col-md-5">
				<form class="form" enctype="multipart/form-data" method="post" action="./certified_upload">
					<input type="hidden" name="tog_no" value="<%=tog_no%>">
				
						<div class="card mb-5" style="height: 100%; border: 0">

							<div id='View_area'
								style='position: relative; color: black; border: 0px solid black;dispaly: inline;'>
								<img id="prev_View_area certified_img" class="obj"
									 name="certified_img" height: 300px; width: 100%; src="./together_img/img_ex.png">
							</div>
							<!-- <img class="card-img-top" src="./image/test.png" alt="Card image cap" style="height:500px"> -->

						</div>
					</div>
					<div class="col-md-7">
						<textarea id="paste text" placeholder="이번 인증은 어떠셨나요?"name="text" style="width: 100%;height: 400px;padding: 0px;"></textarea>

						<input type="file" name="profile_pt" class="commfloat"
							id="profile_pt" onchange="previewImage(this,'View_area')">
					<button type="submit" class="btn btn-primary"id="certified">인증하기</button>
					</div>
				</form>
				
			
		</div>
	</div>
	</div>
	<footer></footer>
</body>

</html>