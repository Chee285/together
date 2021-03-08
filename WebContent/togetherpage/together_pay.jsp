<%@page import="vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>TOGETHER 결제하기</title>
<!-- 파비콘 -->
<link rel="shortcut icon" href="../common_images/favicon.ico"
	type="image/x-icon">
<link rel="icon" href="../common_images/favicon.ico" type="image/x-icon">

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

<script type="text/javascript">
	$(document)
			.ready(
					function() {

						//$("header").load("./main_content/Header.jsp");
						//$("footer").load("./main_content/Footer.jsp");    
						$("header").load("./Header.jsp");
						$("footer").load("./Footer.jsp");

						var id = $("#id").text();
						console.log(id);
						$.ajax({
							url : "../payinfo",
							method : "get",
							data : {
								tog_no : getQueryString("tog_no")
							},
							success : function(data) {

								var payhead = "<img src='../"+data.info.info_img+ "' alt ='투게더 이미지' width='20%'> <br>"
										+ data.info.info_name + "<br>";
								payhead += "주 "+data.tog_confirm_cnt + "회 인증이 필요합니다.<br>";
								payhead += data.tog_start_date + " ~ "
										+ data.tog_end_date;

								$("#pay_head").append(payhead);

							},
							error : function(error) {
								console.log(error.status);
							}
						});

						$("#together_pay").click(function() {
							//금액 확인 
							var balance = $("#balance").text();
							var money = $("#charge").val() + '0000';
							if (balance >= money) {
								$.ajax({
									url : "../paymenttogether",
									method : "get",
									data : {
										tog_no : getQueryString("tog_no"),
										id : id,
										balance : balance
									},
									success : function(data) {
										location.href = "../";
									},
									error : function(error) {
										console.log(error.status);
									}

								});
							} else {
								alert("금액 적습니다. 충전후에 이용해주세요.");
							}

						});

						function getQueryString(key) {

							// 전체 Url을 가져온다.
							var str = location.href;

							// QueryString의 값을 가져오기 위해서, ? 이후 첫번째 index값을 가져온다.
							var index = str.indexOf("?") + 1;

							// Url에 #이 포함되어 있을 수 있으므로 경우의 수를 나눴다.
							var lastIndex = str.indexOf("#") > -1 ? str
									.indexOf("#") + 1 : str.length;

							// index 값이 0이라는 것은 QueryString이 없다는 것을 의미하기에 종료
							if (index == 0) {
								return "";
							}

							// str의 값은 a=1&b=first&c=true
							str = str.substring(index, lastIndex);

							// key/value로 이뤄진 쌍을 배열로 나눠서 넣는다.
							str = str.split("&");

							// 결과값
							var rst = "";

							for (var i = 0; i < str.length; i++) {

								// key/value로 나눈다.
								// arr[0] = key
								// arr[1] = value
								var arr = str[i].split("=");

								// arr의 length가 2가 아니면 종료
								if (arr.length != 2) {
									break;
								}

								// 매개변수 key과 일치하면 결과값에 셋팅
								if (arr[0] == key) {
									rst = arr[1];
									break;
								}
							}
							return rst;
						}
					});
</script>

<style>
/* 글씨체 */
@font-face {
	font-family: 'BMJUA';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMJUA.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}
/* 배경화면 설정 */
body {
	background: url(../common_images/bgi.png) no-repeat center/cover;
}

body>section {
	font-family: 'BMJUA';
}

body>section>article>div:nth-child(1) {
	margin-top: 50px;
}

body>section>article>div:nth-child(3) {
	margin-bottom: 50px;
}

.line1 {
	margin-top: 20px;
	border: solid 1px;
	width: 50%;
	border-radius: 10px;
	margin-right: auto;
	margin-left: auto;
	background-color: rgba(202, 220, 234, 0.5);
	border-style: none;
}

.in1 {
	margin: 25px;
	padding: 15px;
}

.success {
	display: inline;
	font-size: 15px;
	background-color: yellow;
}

#charge {
	border-style: none;
	background-color: rgba(255, 255, 255, 0.6);
	width: 10%;
	text-align: right;
}

.bt {
	text-align: right;
}

/* media query*/
@media screen and (max-width: 768px) {
	.line1 {
		width: 70%;
	}
	body {
		margin: 225px auto;
		font-size: 15px;
	}
	.success {
		font-size: 10spx;
	}
}

@media screen and (max-width: 411px) {
	.line1 {
		width: 85%;
	}
	body {
		margin: 70px auto;
	}
}

@media screen and (max-width: 375px) {
	body {
		margin: 90px auto;
	}
}
</style>
</head>
<body>
	<header> </header>
	<section>
		<article>
			<div class="line1">
				<div class="in1" id="pay_head"></div>
			</div>




			<div class="line1">
				<div class="in1">
					목표에 돈을 걸고 의지를 유지하세요!<br> <br>
					<div>
						참가비<br> <input type="number" value="1" id="charge" readonly>&nbsp;만원
					</div>
					<br>
					<div class="success">
						100% 성공 전액 페이백 + 상금<br> 100% 미만 전액 손실<br> 100%가 아니면 모두
						손실되므로 이점 참고 바랍니다<br> ※ 참가비는 10000원으로 한정되어있습니다. 이점 참고해주세요.
					</div>
				</div>
			</div>
			</div>


			<div class="line1">
				<div class="in1">
					<div>최종 결제금액</div>
					<br>
					<%
						Member m = (Member) session.getAttribute("memInfo");
					%>
					<span> 현재 보유 코인 <span id="balance"><%=m.getMem_balance()%></span></span><br>
					총 참가비 : <input type="number" value="1" id="charge" readonly>&nbsp;만원
					<br>
					<div class="bt">
						<input type="button" value="결재하기" name="mem_balance"
							class="btn-primary"
							style="border-style: none; border-radius: 5px;" id="together_pay">
						<div style="display: none;" id="id"><%=m.getMem_id()%></div>
					</div>
				</div>
			</div>
		</article>
	</section>
	<footer> </footer>

</body>
</html>