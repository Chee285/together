<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>TOGETHER 충전하기</title>

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
	$(document).ready(function() {

		 $("header").load("./Header.jsp");  //nav 인클루드
         $("footer").load("./Footer.jsp");  //nav 인클루드

	});
</script>
<script>
	$(function() {

		let $formObj = $("form");
		$formObj.submit(function(event) {

			var balanceValue = $("input[name=mem_balance]").val();

			$.ajax({

				url : "../charge",
				method : "post",
				data : {
					"balance" : balanceValue
				},
				success : function(responseObj) {
					console.log(responseObj.status);
					if (responseObj.status==1) {
						alert("충전완료");
						location.href="../"; 
					} else if (responseObj.status==-1) {
						alert("로그인되어있지 않습니다.");
					} else if (responseObj.status==0) {
						alert("충전실패");//--------------------------??
					}
				},
				error : function(jQueryXHR) {
					alert(jQueryXHR.status);
				}

			});
			return false;
		});
	});
</script>
<style>
@font-face {
	font-family: 'BMJUA';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMJUA.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

body {
	background: url(../common_images/bgi.png) no-repeat center/cover;
}

body>section {
	font-family: 'BMJUA';
}

/* 무통장입금 제목 */
h1 {
	padding-bottom: 30px;
	margin: 20px auto;
	text-align: center;
}

/* 기본틀 */
body>section>div {
	width: 30%;
	height: 570px;
	margin: 90px 85% 70px 15%;
}
/* 비밀번호 찾기 제목*/
body>section>div>article>div {
	height: 80px;
	margin-bottom: 20px;
	margin-top: 0px;
	width: 100%;
}
/* 배경 투명도 */
.card {
	height: 60%;
	background-color: rgba(0, 0, 0, 0) !important;
}

/*body > section > div > article > form > div:nth-child(4) > button
        {
            background-color: rgb(142, 192, 227);
            border-color: rgb(142, 192, 227);
        }*/
body>section>div>article>form>a {
	color: rgb(142, 192, 227);
	text-decoration: none;
	background-color: transparent;
	-webkit-text-decoration-skip: objects;
}

body>section>div>article>form>a.btn-outline-primary {
	color: rgb(142, 192, 227);
	background-color: transparent;
	background-image: none;
	border-color: rgb(142, 192, 227);
}

/* media query*/
@media screen and (max-width: 768px) {
	body>section>div {
		width: 50%;
		height: 100%;
		margin: 285px 100px;
		background-position-x: left;
		background-size: 30%;
	}
}

@media screen and (max-width: 411px) {
	body>section>div {
		width: 80%;
		height: 100%;
		background-position-x: left;
		margin: 135px auto;
	}
}

@media screen and (max-width: 375px) {
	body>section>div {
		background-origin: padding-box;
		width: 90%;
		height: 100%;
		background-size: 20%;
		margin: 180px auto;
	}
}
</style>
</head>


<body>
	<header> </header>
	<section>
		<div class="card">
			<article class="card-body">
				<h1 class="card-title mb-4 mt-1">무통장 입금</h1>
				<form>
					<div class="form-group">

						<label>계좌번호</label> <input class="form-control"
							placeholder="국민   24790104610227" type="text" readonly>
					</div>
					<!-- form-group// -->
					<div class="form-group">
						<label>충전금액</label> <input name="mem_balance" class="form-control"
							type="number" value="10000" max="990000" min="10000" step="10000">
					</div>
					<!-- form-group// -->

					<div class="form-group">
						<label>이용약관</label><br> 결제 시 금액을 정확히 맞추셔야 합니다.<br>
						인터넷뱅킹, 텔레뱅킹, ATM/CD기계, 은행 창구 등에서 입금할 수 있습니다. ATM 기기는 100원 단위 입금이
						되지 않으므로 통장 및 카드로 계좌이체 해주셔야 합니다. 은행 창구에서도 1원 단위 입금이 가능합니다."
					</div>
					<!-- form-group// -->

					<div class="form-group">
						<button type="submit" class="btn btn-primary btn-block">
							충전하기</button>
					</div>
					<!-- form-group// -->

				</form>
			</article>
		</div>
		<!-- card.// -->
	</section>
	<footer> </footer>

</body>
</html>