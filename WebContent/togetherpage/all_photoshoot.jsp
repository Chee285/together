`<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">
    <!-- 파비콘 -->
    <link rel="shortcut icon" href="../common_images/favicon.ico" type="image/x-icon">
    <link rel="icon" href="../common_images/favicon.ico" type="image/x-icon">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    
    <script>
        $(function(){
            $("header").load("../common/Header.html");
            $("footer").load("../common/Footer.html");
           
       
            
            // 인증샷 모아보기 로드시 실행하여 모든 인증샷을 가져옵니다.
            $.ajax({
            	url:"../allphoshoot",
            	method:"get",
            	dataType:"json",
            	success:function(data){
            		// 카드 만들어줄 예정입니다.
            		console.log(data);
            		
            		var card ="";
            		$(data).each(function(index, element){
            			
            			card += " <div class='col-md-4'> <div class='card mb-4'>";
            			card += "<div><img src='.."+element.mem_profile_img +"' class='pro_img' alt='회원 프로필사진'>";
            			card +=	element.mem_nickname +"</div>";
            			card += "<img class='card-img-top' src='.."+element.pho_good+"' alt='인증샷이미지'>";
            			card += "<div class='card-body'>";
            			card += "<h5 class ='card-title'>"+element.info_name+"</h5>";
            			card +="<p class='card-text'>"+element.pho_impression+"</p>";
            			card += "<div class='row'>";
            			card += "<div class='col'> 좋아</div>";
            			card += "<div class='col-6'>" + element.pho_like_cnt +"</div>";
            			card += "<div class='col'>"+element.pho_upload_date+"</div></div></div></div></div>";

            		});
            		
            		
            		$("#cardCollection").append(card);
            		
            	},error:function(error){
            		alert(error.status);
            	}
            });
            
            
            // 검색 관련 ajax
            $("#searchButton").click(function(){
            	var $selectOption = $("#exampleFormControlSelect1 option:selected").val(); // option
            	var $searchBar = $("#searchBar").val(); // 내용
            	
            	// 닉네임, 투게더 이름, 카테고리 구분해야한다.
            	$.ajax({
            		url:"../photosearch",
            		method:"get",
            		dataType:"json",
            		data : {option : $selectOption ,content: $searchBar},
            		success:function(data){
            			console.log(data);
            			
            			var card ="";
                		$(data).each(function(index, element){
                			
                			card += " <div class='col-md-4'> <div class='card mb-4'>";
                			card += "<div><img src='.."+element.mem_profile_img +"' class='pro_img' alt='회원 프로필사진'>";
                			card +=	element.mem_nickname +"</div>";
                			card += "<img class='card-img-top' src='.."+element.pho_good+"' alt='인증샷이미지'>";
                			card += "<div class='card-body'>";
                			card += "<h5 class ='card-title'>"+element.info_name+"</h5>";
                			card +="<p class='card-text'>"+element.pho_impression+"</p>";
                			card += "<div class='row'>";
                			card += "<div class='col'> 좋아</div>";
                			card += "<div class='col-6'>" + element.pho_like_cnt +"</div>";
                			card += "<div class='col'>"+element.pho_upload_date+"</div></div></div></div></div>";

                		});
                		
                		
                		$("#cardCollection").append(card);
            		},error: function(error){
            			console.log(error.status);
            		}
            	});
            	// 검색 부분 만들어라
            	$("#cardCollection").empty();
            	
            	
            	return false;
            });
            
           
        });
    </script>
    <title>Hello World!</title>

    <style>
        .cardstyle {
            float: left;
        }

        .card {

            margin: 10px;
            /* display: inline-block; */
            width: "25%";

        }

        .article {
            margin-left: auto;
            margin-right: auto;
            width: 80%;
          
        }

        .pro_img {
            width: 30px;
            height: 30px;
            border-radius: 50%;
        }
        
        
        
         
    </style>
</head>
<header></header>
<body>
    <div class="article">
        <form class="form-inline my-2 my-lg-0">
        	<div class="row" style="width:100%;">
        		<div class="col-6" style="padding-left:0; padding-right:0;" >
            		<input id="searchBar"class="form-control mr-sm-2 search_bar" type="search" placeholder="Search" aria-label="Search" style="width:100%; padding-left:0; padding-right:0;">
            		
            	</div>
            <!-- option select -->
            <div class="col-4" style=" padding-left:0; padding-right:0;">
            <div class="form-group" >

                <select class="form-control" id="exampleFormControlSelect1" style="width:100%;padding-left:0; padding-rigtht:0;">
                    <option>닉네임</option>
                    <option>카테고리</option>
                    <option>TOGETHER이름</option>
                </select>
            </div>
            </div>

            <div  class="col-2" style=" padding-left:0; padding-right:0;">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit" style="width:100%; padding-left:0; padding-right:0;" id="searchButton">검색</button>
            </div>
            </div>
        </form>

        <div class="row" id="cardCollection">

    </div>
    </div>
<footer></footer>

</body>

</html>