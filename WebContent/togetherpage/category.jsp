
<%@page import="vo.Together"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- 파비콘 -->
<link rel="shortcut icon" href="../common_images/favicon.ico"
	type="image/x-icon">
<link rel="icon" href="../common_images/favicon.ico" type="image/x-icon">

<title>TOGETHER 카테고리</title>

<!-- 제이쿼리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

<!-- 부트스트랩 -->
<link rel="stylesheet"
	  href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	  integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	  crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	    integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	    crossorigin="anonymous"></script>

<!-- header footer 연결 -->
<script type="text/javascript">   
        $(document).ready(function() {
            
        	$("header").load("./main_content/Header.jsp");
            $("footer").load("./main_content/Footer.jsp");    
                      
            
            
            $(".logo img").attr("src","common_images/header_logo.png");
            $(".coin_box img").attr("src","common_images/coin.png");
            
        

//  http://localhost:8888/Together/category?cat_no=1
		// 카테고리 페이지 키는 url
        });
        
        
        
</script>

<style>
	@font-face {
		font-family: 'BMJUA';
		src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMJUA.woff') 	format('woff');
		font-weight: normal;
		font-style: normal;
	}
	
	
	* {
		box-sizing: border-box;
	}
	
	body {
		background-color: #F4F4F4;
	}
	
	.category-detail ul {
		list-style: none;
		padding: 0;
	}
	
	.contents h1 {
		margin: 50px 0;
		font-size: 3em;
		font-weight: 200;
		text-align: center;
		color: rgb(106, 175, 230);
	}
	
	.category-detail a {
		margin-left: 30px;
		display: block;
		width: 200px;
		height: auto;
		text-decoration: none;
		color: black;
	}
	
	.category-detail .pho_view {
		margin-bottom: 3px;
		position: relative;
		width: 200px;
		height: 200px;
	}
	
	.category-detail img {
		width: 200px;
		border-radius: 20px 20px;
	}
	
	.category-detail .icon {
		background-color: rgba(0, 0, 0, 0.5);
		color: white;
		position: absolute;
		right: 10px;
		top: 10px;
		width: 80px;
		height: 25px;
		text-align: center;
		border-radius: 5px 5px 5px 5px;
		display: flex;
		flex-flow: row;
		align-items: center;
		justify-content: space-around;
	}
	
	.category-detail ul li {
		display: flex;
		flex-flow: row;
		align-items: center;
		/* justify-content: space-around; */
		width: 200px;
	}
	
	.select {
		color: grey;
	}
	
	.title {
		font-size: 20px;
		margin: 5px 0;
	}
	
	.category-detail ul {
		margin: 0 0 20px;
	}
	
	.category-detail {
		width: 250px;
		height: 300px;
		float: left;
		margin: 10px;
		display: inline-block;
	}
	
	.contents {
		width: 100%;
		height: auto;
		font-family: 'BMJUA';
	}
	
	.contents .content {
		width: 100%;
		display: flex;
		align-items: center;
		justify-content: center;
	}

	.wrap2 {
		width: 100%;
		display: inline-flex;

		flex-flow: row wrap;
		justify-content: start;
		align-items: center;
		padding: 40px 0px;
	}
	
	.pagination {
		display: block;
	}
	
	.pagination ul {
		display: flex;
		flex-flow: row;
		align-items: center;
		justify-content: center;
	}
	
	.pagination li {
		margin: 0 10px 30px;
	}
	
	.pagination a {
		color: black;
	}
	
	.pagination a:active {
		color: gray;
	}
	
	.nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active {
		color: #ffffff;
		background-color: rgb(106, 175, 255);
		border-color: #dee2e6 #dee2e6 #fff;
		font-size: 1.5em;
	}
	
	.nav-tabs {
		width: 100%;
	}
	
	.nav-link {
		display: block;
		padding: 10px;
		width: 33.3333%;
		text-align: center;
	}
	
	.nav-item {
		color: black;
		text-decoration: none;
		background-color: transparent;
		font-size: 1.5em;
	}
	
	a:hover {
		color: black;
		text-decoration: underline;
	}
	
	.nav {
		display: -ms-flexbox;
		display: flex;
		-ms-flex-wrap: wrap;
		flex-wrap: wrap;
		padding-left: 0;
		margin-bottom: 0;
		list-style: none;
		padding: 0 50px;
	}



	@media screen and (max-width: 691px) {
            
            .wrap {align-items: center; justify-content: center; }

			.category-detail {
    width: 180px;
    height: 300px;
}

			.category-detail a {
		width: 150px;
	}
	
	.category-detail .pho_view {
		width: 150px;
		height: 150px;
	}
	
	.category-detail img {
		width: 150px;
	}


        }
	
	</style>
</head>

<body>
    <script>
    	$(function(){
    		
    		
    		
    		var cat = $(".nav-item");

			var catno = $(".incat").val();


			var health = $("#health");
			var capability = $("#capability");
			var hobby = $("#hobby");

			if(catno == "1"){
				health.addClass("active");
			}else if(catno == "2"){
				capability.addClass("active");
			}else if(catno == "3"){
				hobby.addClass("active");
			}
			
		
    		cat.click(function(){
				var cat_no = $(this).attr('data-tab');
								
				location.href = "./category?cat_no=" + cat_no;

    		});

			
    		
    		
            
    	});


    </script>



	<header></header>

	<!-- 아란이 코드 -->
	<section class="contents">
		<h1>카 테 고 리</h1>
		<nav class="nav">
			<%
			request.setCharacterEncoding("UTF-8");
			String catno = request.getParameter("cat_no");

			%>
			<div class="nav nav-tabs" id="nav-tab" role="tablist">
				<!-- active -->
				<a class="nav-item nav-link health" id="health" data-tab = "1" data-toggle="tab" href="http://localhost:8888/Together/category?cat=1" role="tab" aria-controls="nav-home" aria-selected="true">건강</a> 
				<a class="nav-item nav-link capability" id="capability" data-tab = "2" data-toggle="tab" href="http://localhost:8888/Together/category?cat=2" role="tab" aria-controls="nav-profile" aria-selected="false">역량</a> 
				<a class="nav-item nav-link hobby" id="hobby" data-tab = "3" data-toggle="tab" href="http://localhost:8888/Together/category?cat=3" role="tab" aria-controls="nav-contact" aria-selected="false">취미</a>
			</div>
		</nav>
		

		<article class="content">
			<div class="wrap2">


	<%

	List<Together> list = (List)request.getAttribute("list");
	for(Together t: list){	
		
	%>
					
				<div class="category-detail">
					<input type="text" value="<%=catno%>" class="incat" style="display: none;">
					<a href="./togdetail?tog_no=<%=t.getTog_no()%>&mypage=off">
						<div class="pho_view">
							<img src="<%= t.getInfo().getInfo_img() %>" alt="<%=t.getInfo().getInfo_name() %>" class="tog_img">
							<div class="icon people">
								<img src="common_images/people_icon.png" alt="아이콘" style="width: 16px;"><%=t.getTog_people() %>명
							</div>
						</div>
						
						<ul>
							<li class="title"><%=t.getInfo().getInfo_name() %></li>
							<li class="select confirm">시작 날짜 : <%=t.getTog_start_date()%></li>
							<li class="select sub">주 <%=t.getTog_confirm_cnt()%>회</li>
						</ul>
					</a>
				</div>

				<%
				}
				
				%>  		
				
			</div>
			

		</article>
	</section>

	<footer></footer>



</body>
</html>