<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <!-- 파비콘 -->
    <link rel="shortcut icon" href="./common_images/favicon.ico" type="image/x-icon">
    <link rel="icon" href="../common_images/favicon.ico" type="image/x-icon">
    
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <title>TOGETHER 마이페이지</title>

	<script type="text/javaScript">

    $(function(){
    //로그인인포가 있을떄만 실행
<%  		
                if(session.getAttribute("loginInfo") != null){ //로그인
					
%>
					$("#mem_id").html('<%=request.getAttribute("mem_id")%>');
					$("#mem_balance").html('<%=request.getAttribute("mem_balance")%>');
					$("#new_message").html('<%=request.getAttribute("mem_status_message")%>');
					$("#mem_nickname").html('<%=request.getAttribute("mem_nickname")%>'); 
					$("#mem_profile_img").html('<%=request.getAttribute("mem_profile_img")%>');
<%					
                }
%>                
    
    });
    </script>
    <style>
               /* 글씨체 */
     @font-face {
        font-family: 'BMJUA';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMJUA.woff') format('woff');
        font-weight: normal;
        font-style: normal;
    }

      body 
{
    background: url("common_images/bgi.png") ;
    
}
   body > section
   {
      font-family: 'BMJUA';
   }

    /* 나의 정보 */
    #intro
    {
        width: 100%;
        margin: 10px auto;
    }
    .text-center
    {
        width: 100%;
    }
    h2
    {
        margin-top: 40px;
    }

    /*button, .btn-primary 버튼,탭 색 통일
    {
        background-color: rgb(142, 192, 227);
        border-color: rgb(142, 192, 227);
        color:#fff;
    } */
    #intro > article > section > div > div:nth-child(2) > div.col-sm-8 > ul > li:nth-child(n+1) > a{
        /* 탭 스타일 */
        background-color:rgba(253, 253, 253, 0.5);
        border: rgb(142, 192, 227) solid 1px;
        border-radius: 2px;
        color: rgb(142, 192, 227);
        padding: 5px;
        font-size: auto;
    }
    #intro > article > section > div > div:nth-child(2) > div.col-sm-8 > ul > li:nth-child(n+1) > a:hover
    {
        text-decoration: none;
        background-color: rgb(142, 192, 227) ;
        color: #fff;

    }
#prev_View_area    {
        width: 80%;
        display: block;
        margin: 10px auto;
    }
    .tog_img
    {
        width:60% ;
    }
    .progress
    {
        font-size: 16px;
        width: 85%;
        height: 20px;
        margin: 10px auto;
    }
    .bg-info
    {
        background-color:rgb(142, 192, 227) !important;
    }
    #registrationForm > div > div:nth-child(2)
    {
        width: 50%;
        margin : 5px auto;
    }
    /* 인증하러가기 버튼 */
    button
    {
        margin-top: 20px;
        float: right;
    }
    button:hover
    {
        background-color: rgb(66, 66, 252);
    }
    #intro > article > section > div > div:nth-child(2) > div.col-sm-4 > div.row > div
    {
        margin: 5px auto;
    }
    /* 완료한 투게더 , 내가 개설한 투게더 */

    div.mytoglist{
        width: 100%;
        margin: 0 0 0 70px;
    }
    .tog{
         width : auto;
         border: 1px solid;
         display: inline-block;
         margin: 10px 60px;
         padding: 10px;
         
    }

    .tog>ul{
        padding-inline-start: 0px;
    }
    .l1>img{
        margin: 15px; 
    }
    .l1{
        align-content: center;
    }
    div.mytoglist>div.tog>ul{
        list-style-type: none;
    }
    div.mytoglist>div.tog>ul>li:last-child{
        text-align: center;
        font-size: 30px;
    } 
       /*내갸 참여하고 있는 투게더*/
       .container {
          width:90%;
          margin: 10px auto;
      }
        .MultiCarousel { float: left; overflow: hidden; padding: 15px; width: 90%; position:relative; }
        .MultiCarousel .MultiCarousel-inner { transition: 1s ease all; float: left; }
        .MultiCarousel .MultiCarousel-inner .item { float: left;}
        .MultiCarousel .MultiCarousel-inner .item > div { text-align: center; padding:10px; margin:10px; background:#f1f1f1; color:#666;}
        .MultiCarousel .leftLst, .MultiCarousel .rightLst { position:absolute; border-radius:50%;top:calc(50% - 20px); }
        .MultiCarousel .leftLst { left:0; }
        .MultiCarousel .rightLst { right:0; }
    
        .MultiCarousel .leftLst.over, .MultiCarousel .rightLst.over { pointer-events: none; background:#ccc; }

        
        .MultiCarousel .MultiCarousel-inner .item > div,
        #MultiCarousel1 > div > div:nth-child(n+1) > div
        {
            width:auto;
        }
        .pad15>img{
            width: 70%;
            padding: 10px;
        }
        #mytog{text-align: center; margin: 50px auto; padding :auto;font-size: 50px;}

        /*투게더 소개*/
        #intro{
            width: 80%;
        }

    /* media query*/
    @media screen and (max-width: 768px) {
     
        .banner {position: relative; width: 500px; height: 350px;  margin:70px 0 0 120px; overflow: hidden;}
        .banner ul {position: absolute; margin:25px auto; padding:0; list-style: none; }
        .banner ul li {float: left; width: 500px; height: 350px; margin:0; padding:0;}

   
        #h{
            background-image: none !important;
        }
        #mytog{
            font-size: 30px;
            margin: 90px auto 0 auto;

        }

    }

    @media screen and (max-width: 411px) {
        .banner {position: relative; width: 300px; height: 200px;  margin:30px 0 0 52px; overflow: hidden;}
        .banner ul {position: absolute; margin:0; padding:0; list-style: none; }
        .banner ul li {float: left; width: 300px; height: 200px; margin:0; padding:0;}

     
        #mytog{
            font-size: 20px;
            padding: 0;
        }
    }
    @media screen and (max-width: 375px) {
        .banner {position: relative; width: 300px; height: 200px;  margin:20px 0 0 40px; overflow: hidden;}
        .banner ul {position: absolute; margin:0; padding:0; list-style: none; }
        .banner ul li {float: left; width: 300px; height: 200px; margin:0; padding:0;}

 
    
    }
    </style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script language="JavaScript">

    $(document).ready(function() {
    	
//내가 개설한 투게더 
        var ownTogether;
    	//내가 개설한 투게더 
    	$.ajax({
    		url: "./owntogether",//내가 개설한 투게더로 경로 바꾸기 !!
    		method : "get",
    		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
    		success : function(data){
    			ownTogether = data;
	console.log(data);
    			var $ownObj = $('#MultiCarousel1 > div');
    			$(data).each(function(index,element){
    				
        			var info_img = data[index].info_img;//이미지 이름
            		var info_name = data[index].info_name; //진행중인 투게더에 참여하고있는 인원의 총 수
					var info_no = data[index].info_no;
	
    				var ownStr = "<div class='item' style='width: 310px;'><div class='pad15' onclick=location.href='./togetherdetail?tog_no=0&info_no="+info_no+"'><img src='"+info_img+"' alt=''><p class='lead'>"+info_name+"</p></div></div>";
    				$ownObj.append(ownStr);
    				
    			});
    		}, error:function(error){
    			
    		}
    		
    	});
    	
    	
    	//완료한 투게더 
    	 var finishTogether;

    	    	$.ajax({
    		url: "./finishtogether",
    		method : "get",
    		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
    		success : function(data){

    			finishTogether = data;
    			
    			console.log("완료투게더" +data);
    			var $ownObj = $('#MultiCarousel2 > div');
    			$(data).each(function(index,element){
    				
        			var info_img = data[index].info_img;//이미지 이름
            		var info_name = data[index].info_name; //완료한 투게더에 참여하고있는 인원의 총 수
    				
    				var ownStr = '<div class="item" style="width: 310px;"><div class="pad15"><img src="../common_images/img_ex.png" alt=""><p class="lead">'+info_name+'</p></div></div>';
    				$ownObj.append(ownStr);
    				
    			});
    		}, error:function(error){
    			
    		}
    		
    	});
        
    	
        
    	
    	
    	
    	
    	//진행중인 투게더
    	var resultMyInfo; 
    	$.ajax({
    		url : "./mypageselect",
    		method : "get",
    		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
    		success : function(data){
    			resultMyInfo = data;//json으로 응답받아온 정보
    			var info_name = data[0].info_name;
    			
    			//$('#registrationForm > div > div.col-xs-6 > label > h4').html(info_name);
    			
    			
    			var info_img = data[0].info_img;//이미지 이름
        		var tog_people = data[0].tog_people; //진행중인 투게더에 참여하고있는 인원의 총 수
        		var tog_sum = data[0].tog_sum; //진행중인 투게더의 총 금액
    			
        		
        		var $imgObj = $('#registrationForm > div > div.col-xs-6 > div.img');
        		var imgStr = '<img class="tog_img" src="'+info_img+'" alt="" width="50%">';//사진경로 바꿔야함 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
        		
        		$imgObj.html(imgStr);
        		
        		
        		var $peopleObj = $('#registrationForm > div > div:nth-child(2)');
        		var peopleStr = ' <h6>참여인원 :'+tog_people+' 명 </h6><h6>유저 총 참가비 :'+tog_sum+' 원</h6>';
        		$peopleObj.html(peopleStr);
        		
        		
        		//처음 페이지를 들어가자마자 나오는 진행중인 투게더의 정보 !! 
        		//태그를 클릭했을때 바뀌는 진행중인 투게더는 밑에 있음!! 
    			
    			var length = data.length;
    			//#intro > article > section > div > div > div.col-sm-8 > ul > li.active
    			var $ulObj = $('#intro > article > section > div > div > div.col-sm-8 > ul');
    			
    			$(data).each(function(index, element){
    				
    				var liStr = '<li><a data-toggle="tab" href="'+ index+'">' + element.info_name + '</a></li>';
    				
    				$ulObj.append(liStr);	//배열의 수 만큼 append로 li태그를 이어줌.. 	
    			})
    			
    			var tog_no = data[0].tog_no;
    			var info_name = data[0].info_name;
        		var $buttonObj = $('#registrationForm > div > div.form-group > div');
        		
				var buttonStr = "<button type='button' class='btn btn-primary btn-lg' type='button' onclick=location.href='./togethercertified?tog_no="+tog_no+"' >인증하러가기</button>";
        		$buttonObj.html(buttonStr);
        		
        		// 여기야 
    			var detailLink = "<h4 onclick =location.href='../together/togdetail?tog_no="+tog_no+"&mypage=on'>"+info_name+"</h4>";
        		//$('#registrationForm > div > div.col-xs-6 > label').html(detailLink);
    			$('#together_name').html(detailLink);
        		
        		
    			
    			
    		}, error:function(error){
    			
    		}
    		
    	});
  	
    	
    	//진행중인 투게더의 태그를 클릭했을 경우에 보이는 화면 
    	$('#intro > article > section > div > div > div.col-sm-8 > ul').on('click', 'li>a', function(){//탭메뉴 클릭시 발생하는 이벤트
    		var index = $(event.target).attr("href");
    		var togetherObj = resultMyInfo[index];//json으로 응답받아온 data객체의 index에 해당하는 값
    		var info_name = togetherObj.info_name;//'A가 클릭됨!';// 클릭시 해당 투게더의 이름을 보여줌.
    		var tog_no = togetherObj.tog_no;
    		
    		var info_img = togetherObj.info_img;//이미지 이름
    		var tog_people = togetherObj.tog_people; //진행중인 투게더에 참여하고있는 인원의 총 수
    		var tog_sum = togetherObj.tog_sum; //진행중인 투게더의 총 금액
			
    		
    		var $imgObj = $('#registrationForm > div > div.col-xs-6 > div.img');
    		var imgStr = '<img class="tog_img" src="'+info_img+'" alt="" width="50%">';//사진경로 바꿔야함 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    		
    		$imgObj.html(imgStr);
    		
    		
    		var $peopleObj = $('#registrationForm > div > div:nth-child(2)');
    		var peopleStr = ' <h6>참여인원 :'+tog_people+' 명 </h6><h6>참가금액 :'+tog_sum+' 원</h6>';
    		$peopleObj.html(peopleStr);
    		
    		var tog_no = togetherObj.tog_no;
    		var $buttonObj = $('#registrationForm > div > div.form-group > div');
    		var buttonStr = "<button  class='btn btn-primary btn-lg' type='button' onclick=location.href='./togethercertified?tog_no="+tog_no+"'>인증하러가기</button>";
    		$buttonObj.html(buttonStr);
    		// 여기야 
			var detailLink = "<h4 onclick =location.href='./togdetail?tog_no="+tog_no+"&mypage=on'>"+info_name+"</h4>";
    		//$('#registrationForm > div > div.col-xs-6 > label').html(detailLink);
    		$('#together_name').html(detailLink);
    		
    		return false;
    	})   
    	
  	
    	
    	
    	

    	
    	
    	
    	
        var $banner = $(".banner").find("ul");

        var $bannerWidth = $banner.children().outerWidth();//이미지의 폭
        var $bannerHeight = $banner.children().outerHeight(); // 높이
        var $length = $banner.children().length;//이미지의 갯수
        var rollingId;

        //정해진 초마다 함수 실행
        rollingId = setInterval(function() { rollingStart(); }, 2000);//다음 이미지로 롤링 애니메이션 할 시간차
    
        function rollingStart() {
            $banner.css("width", $bannerWidth * $length + "px");
            $banner.css("height", $bannerHeight + "px");
            //alert(bannerHeight);
            //배너의 좌측 위치를 옮겨 준다.
            $banner.animate({left: - $bannerWidth + "px"}, 3000, function() { //숫자는 롤링 진행되는 시간이다.
                //첫번째 이미지를 마지막 끝에 복사(이동이 아니라 복사)해서 추가한다.
                $(this).append("<li>" + $(this).find("li:first").html() + "</li>");
                //뒤로 복사된 첫번재 이미지는 필요 없으니 삭제한다.
                $(this).find("li:first").remove();
                //다음 움직임을 위해서 배너 좌측의 위치값을 초기화 한다.
                $(this).css("left", 0);
                //이 과정을 반복하면서 계속 롤링하는 배너를 만들 수 있다.
            });
        }
    }); 

    

        /*내가참여하고 있는 투게더*/
    
        $(document).ready(function () {
    var itemsMainDiv = ('.MultiCarousel');
    var itemsDiv = ('.MultiCarousel-inner');
    var itemWidth = "";

    $('.leftLst, .rightLst').click(function () {
        var condition = $(this).hasClass("leftLst");
        if (condition)
            click(0, this);
        else
            click(1, this)
    });

    ResCarouselSize();

    $(window).resize(function () {
        ResCarouselSize();
    });
    
    

    

    //this function define the size of the items
    function ResCarouselSize() {
        var incno = 0;
        var dataItems = ("data-items");
        var itemClass = ('.item');
        var id = 0;
        var btnParentSb = '';
        var itemsSplit = '';
        var sampwidth = $(itemsMainDiv).width();
        var bodyWidth = $('body').width();
        $(itemsDiv).each(function () {
            id = id + 1;
            var itemNumbers = $(this).find(itemClass).length;
            btnParentSb = $(this).parent().attr(dataItems);
            itemsSplit = btnParentSb.split(',');
            $(this).parent().attr("id", "MultiCarousel" + id);


            if (bodyWidth >= 1200) {
                incno = itemsSplit[3];
                itemWidth = sampwidth / incno;
            }
            else if (bodyWidth >= 992) {
                incno = itemsSplit[2];
                itemWidth = sampwidth / incno;
            }
            else if (bodyWidth >= 768) {
                incno = itemsSplit[1];
                itemWidth = sampwidth / incno;
            }
            else {
                incno = itemsSplit[0];
                itemWidth = sampwidth / incno;
            }
            $(this).css({ 'transform': 'translateX(0px)', 'width': itemWidth * itemNumbers });
            $(this).find(itemClass).each(function () {
                $(this).outerWidth(itemWidth);
            });

            $(".leftLst").addClass("over");
            $(".rightLst").removeClass("over");

        });
    }


    //this function used to move the items
    function ResCarousel(e, el, s) {
        var leftBtn = ('.leftLst');
        var rightBtn = ('.rightLst');
        var translateXval = '';
        var divStyle = $(el + ' ' + itemsDiv).css('transform');
        var values = divStyle.match(/-?[\d\.]+/g);
        var xds = Math.abs(values[4]);
        if (e == 0) {
            translateXval = parseInt(xds) - parseInt(itemWidth * s);
            $(el + ' ' + rightBtn).removeClass("over");

            if (translateXval <= itemWidth / 2) {
                translateXval = 0;
                $(el + ' ' + leftBtn).addClass("over");
            }
        }
        else if (e == 1) {
            var itemsCondition = $(el).find(itemsDiv).width() - $(el).width();
            translateXval = parseInt(xds) + parseInt(itemWidth * s);
            $(el + ' ' + leftBtn).removeClass("over");

            if (translateXval >= itemsCondition - itemWidth / 2) {
                translateXval = itemsCondition;
                $(el + ' ' + rightBtn).addClass("over");
            }
        }
        $(el + ' ' + itemsDiv).css('transform', 'translateX(' + -translateXval + 'px)');
    }

    //It is used to get some elements from btn
    function click(ell, ee) {
        var Parent = "#" + $(ee).parent().attr("id");
        var slide = $(Parent).attr("data-slide");
        ResCarousel(ell, Parent, slide);
    }
    
    
    
 
    

});

</script>
</head>
<body>
    <header>
<%@include file="/main_content/Header.jsp" %>
    </header>
<section>
    <div id="intro" >
        <article> 
           
            <section>
        <hr>
        <div class="container bootstrap snippet ">
            <div class="row">
                  <div class="col-sm-4"><h1>나의 정보 <span><input type="button" value="정보수정"class="btn btn-primary btn-block" style="font-size: 12px ;padding:0px; height: 25px; float: right; margin-top: 15px;" id="idButton"></span> </h1></div>
                <div class="col-sm-8"><h2>
                    진행중인 TOGETHER
                </h2></div>
            </div>
            <div class="row">
                  <div class="col-sm-4"><!--left col-->
                      
        
              <div class="text-center">
                
                <div id='View_area' style='position:relative; color: black; border: 0px solid black; display: inline; '>
                    <img id ="prev_View_area mem_profile_img" class="obj" src="<%=request.getAttribute("mem_profile_img")%>" style="width : 100%">
                    <p style="display:inline;">닉네임 :&nbsp;</p><p id="mem_nickname" style="display:inline;"><%=request.getAttribute("mem_nickname")%></p>
                </div>
                <input type="file" name="profile_pt" class="commfloat insert" id="profile_pt" onchange="previewImage(this,'View_area')">
              </div></hr><br>
                  <div class="row">
                    <div class="span4 well" style="padding-bottom:0">
                        <form accept-charset="UTF-8" action="" method="POST">
                            <textarea class="span4" id="new_message" name="new_message"
                            placeholder="상태메시지를 적어주세요" rows="5" ><%request.getAttribute("mem_status_message");%></textarea>
                            <h6 class="pull-right">최대 30자</h6>
                            <button class="btn btn-primary btn-block" type="submit">저 장 </button>
                        </form>
                    </div>
                </div>
        
                  
                </div><!--/col-3-->
                
                <div class="col-sm-8">
                    <ul class="nav nav-tabs">
                        <!-- 진행중일 챌린지의 탭메뉴 추가됨 ajax로 요청됨 -->
                      </ul>
        
                     
                  <div class="tab-content">
                    <div class="tab-pane active" id="home">
                        <hr>
                          <form class="form"  method="post" id="registrationForm">
                              <div class="form-group">
                                  
                                  <div class="col-xs-6" >
                                      <label for="togetherimg" id="together_name"><h4>진행중인 together가 없습니다</h4></label><br>
                                      
                                      <div class = img>
                                      <img class="tog_img" src="./common_images/img_ex.png" alt="" width="50%">
        								</div>
                                     <!-- <div class="progress">
                                        <div class="progress-bar bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">50%</div>
                                      </div>-->
                                  </div>
        
                                  <div >
                                    <h4><p>together에</p> <p>참여해주세요</p></h4>
                                    </div>
                
                                    <div class="form-group">
                                        <div class="col-xs-6">
                                                <button onclick = "category.jsp" class="btn btn-primary btn-lg">together</button>
                                         </div>
                                   </div>  
                              </div>
                          </form>
                      
                     </div><!--/tab-pane-->
    <!--  <div class="tab-pane" id="messages">
                       
                       <h2></h2>
                       
                       <hr>
                          <form class="form"  method="post" id="registrationForm">
                            <div class="form-group">
                                  
                                <div class="col-xs-6">
                                
                                    <label for="togetherimg"><h4>투게더 이름</h4></label>
                                    <img class="tog_img" src="./common_images/img_ex.png" alt="" width="50%">
        
                                    <div class="progress">
                                      <div class="progress-bar bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">50%</div>
                                    </div>
                                </div>
        
                                <div >
                                  <h6>참여인원 : 100 명</h6>       
                                  <h6>참가금액 : 1000000 원</h6>
                                  </div>

                                  <div class="form-group">
                                      <div class="col-xs-6">
                                              <button class="btn btn-lg">인증하러가기</button>
                                       </div>
                                 </div>  
                            </div>
                          </form>
                       
                     </div><!--/tab-pane-->
 <!--  <div class="tab-pane" id="settings">           
                          <hr>
                          <form class="form"method="post" id="registrationForm">
                            <div class="form-group">
                                  
                                <div class="col-xs-6">
                                    <label for="togetherimg"><h4>투게더 이름</h4></label>
                                    <img class="tog_img" src="./common_images/img_ex.png" alt="" width="50%">
        
                                    <div class="progress">
                                      <div class="progress-bar bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">50%</div>
                                    </div>
                                </div>
        
                                <div >
                                  <h6>참여인원 : 100 명</h6>       
                                  <h6>참가금액 : 1000000 원</h6>
                                  </div>
        
                                  <div class="form-group">
                                      <div class="col-xs-6">
                                              <button class="btn btn-lg">인증하러가기</button>
                                       </div>
                                 </div>  
                            </div>
                          </form>
                      </div>
                       
                      </div><!--/tab-pane-->
                  </div><!--/tab-content-->
        
                </div><!--/col-9-->
            </div><!--/row-->
        
    
        </article>
    </div>

    
    <article class="mytogopen">
        <div  id="mytog">
        <p>내가 개설한 TOGETHER</p>
         </div>
        <div class="container">
            <div class="row">
                <div class="MultiCarousel " data-items="1,2,3,3" data-slide="1" id="MultiCarousel"  data-interval="1000">
                    <div class="MultiCarousel-inner">
                        <!--<div class="item">
                            <div class="pad15">
                                <img src="../common_images/img_ex.png" alt="">
                                <p class="lead">투게더 이름</p>   
                            </div>
                        </div>
                        <div class="item">
                            <div class="pad15">
                                <img src="./common_images/img_ex.png" alt="">
                                <p class="lead">투게더 이름</p>   
                            </div>
                        </div>
                        <div class="item">
                            <div class="pad15">
                                <img src="./common_images/img_ex.png" alt="">
                                <p class="lead">투게더 이름</p>   
                            </div>
                        </div>
                        <div class="item">
                            <div class="pad15">
                                <img src="./common_images/img_ex.png" alt="">
                                <p class="lead">투게더 이름</p>   
                            </div>
                        </div>
                        <div class="item">
                            <div class="pad15">
                                <img src="./common_images/img_ex.png" alt="">
                                <p class="lead">투게더 이름</p>   
                            </div>
                        </div>
                        <div class="item">
                            <div class="pad15">
                                <img src="./common_images/img_ex.png" alt="">
                                <p class="lead">투게더 이름</p>   
                            </div>
                        </div>  -->
                       
                    </div>
                    <button class="btn btn-primary leftLst"><</button>
                    <button class="btn btn-primary rightLst">></button>
                </div>
            </div>
        </div>
    


    </article>
<!--  참여 완료 주석 추후에 완료할 예정 -->
<!-- 
    <article class="mytogcomplete">
        <div  id="mytog">
        <p>참여 완료 TOGETHER</p>
         </div>
        <div class="container">
            <div class="row">
                <div class="MultiCarousel " data-items="1,2,3,3" data-slide="1" id="MultiCarousel"  data-interval="1000">
                    <div class="MultiCarousel-inner">
                    
                    // 내용 앞으로 넣어야할 사진과 투게더 이름
                        <!-- <div class="item">
                            <div class="pad15">
                                <img src="./common_images/img_ex.png" alt="">
                                <p class="lead">투게더 이름</p>   
                            </div>
                        </div>
                        <div class="item">
                            <div class="pad15">
                                <img src="./common_images/img_ex.png" alt="">
                                <p class="lead">투게더 이름</p>   
                            </div>
                        </div>
                        <div class="item">
                            <div class="pad15">
                                <img src="./common_images/img_ex.png" alt="">
                                <p class="lead">투게더 이름</p>   
                            </div>
                        </div>
                        <div class="item">
                            <div class="pad15">
                                <img src="./common_images/img_ex.png" alt="">
                                <p class="lead">투게더 이름</p>   
                            </div>
                        </div>
                        <div class="item">
                            <div class="pad15">
                                <img src="./common_images/img_ex.png" alt="">
                                <p class="lead">투게더 이름</p>   
                            </div>
                        </div>
                        <div class="item">
                            <div class="pad15">
                                <img src="./common_images/img_ex.png" alt="">
                                <p class="lead">투게더 이름</p>   
                            </div>
                        </div> 
                       
                    </div>
                    <button class="btn btn-primary leftLst"><</button>
                    <button class="btn btn-primary rightLst">></button>
                </div>
            </div>
        </div>
    
    	
    </article>
 -->
 
<!-- 내정보 수정 시작-->
    
<article class='myinfo' style="display: none;">
        
<script>
$(function(){
    /*내정보수정 버튼클릭*/
    $("#idButton").click(function(){
       // alert("내정보수정 버튼 클릭");
        $.ajax({
            url: './changemyinfo'
            ,method : 'get'
            ,success:function(responseObj){
                $("div#intro").hide();
                $("article.mytogopen").hide();
                
                $("article.mytogcomplete").hide();
                $("article")
                $('#first_name').val(responseObj.mem_nickname);
                $('#last_name').val(responseObj.mem_name);
                $('#phone').val(responseObj.mem_phone_num);

                $("#idButton").hide();
                $("article.myinfo").show();
            }
        });
        return false;
    });
     /*내정보수정 버튼클릭 끝*/

     /*닉네임 focus되면 저장버튼 사라짐*/
     var $nickObj = $("#first_name");
			$nickObj.focus(function(){
					var $btSignup = $("#save");
					//input객체를 화면에 없앤다
                    //css값을 이용해서 visibility값을 hidden으로 설정해준다. 닉네임창에 포커스 되면 회원가입버튼이 사라진다
					$btSignup.css("visibility","hidden"); 
				}); 


        /*닉네임 중복체크*/
        var $btnObj1 = $("#nick_idchk");	
    $btnObj1.click(function(event){
        var $nickObj = $("#first_name");
        var nickValue = $nickObj.val();
        if(nickValue.trim() == ''){
            alert("닉네임을 입력하세요");
            $idObj.focus();
            
    }
    // 비밀번호 확인
    // 이벤트 오류로 사용이 안됨 해당 이유는 잘 모르겠음
  /*  var $btnObj2 = $("#pwd_pwdchk");
                $btnObj2.click(function(event){
                	console.log("비밀번호 확인");
                    //비밀번호값이 같은가 유효성검사
                    var pwdValue = $("#password").val();
            		var pwd1Value = $("#password2").val();
 					if(pwdValue!=pwd1Value){
 						alert("비밀번호가 일치하지 않습니다")
 						$("input.pwd").focus();
 						
 					}
                });
			return false;
    */    

    $.ajax({
        url : './nickchk' , //요청URL
        method: "post" ,   //요청방식
        //data : "id="+idValue+"&pwd="+pwdValue, //요청시 전달데이터 
        data :{"nickname": nickValue},
        success: function(responseObj){ //data는 응답내용, 자료형은 string
            
            //alert(data);  
            //alert(responseObj.status);
            if(responseObj.status == 1){
                alert("이미 존재하는 닉네임입니다");
            }else{
                alert("사용가능한 닉네임입니다");
                var $btSignup = $("#save");
				$btSignup.css("visibility","visible");


            }
        },
        error: function(jqXHR){
            alert(jqXHR.status);
        }
    });		
    return false;
    //event.preventDefault();
    //return false;	
    });
    /*닉네임 중복체크 끝*/


    /*정보수정 저장버튼 클릭*/
    $("#save").click(function(){
	
    	 //var pwdValue = $("#password").val();
    	 
    	 if($("#password").val() == ""){
    		 alert("다시 기재해주세요.");
    		 
    	 }else{
        $.ajax({
            url: './changemyinfo'
            ,method : 'post'
            ,data :  $('.savemove').serialize()
            ,success : function(responseObj){ 
				
                if(responseObj.status ==1){
									alert("저장성공");
                                    $("article.myinfo").hide();
                                    
                                    $("div#intro").show();
                                    $("article.mytogopen").show();                                
                                    $("article.mytogcomplete").show();
                                    $("#idButton").show();
                                  
                                    
								}else{
                                    alert("다시 기입해 주세요");
								}
							},error: function(jqXHR){
								alert(jqXHR.status);
                            }

    });}
return false;
});
/*정보수정 저장버튼 클릭 끝*/
});
</script>
<style>
    @font-face {
   font-family: 'BMJUA';
   src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMJUA.woff') format('woff');
   font-weight: normal;
   font-style: normal;
}
   body 
{
   background: url(common_images/bgi.png) no-repeat center/cover;
   
}
  body > section
  {
     font-family: 'BMJUA';
  }
#registrationForm > div:nth-child(n+1) > div > input
{
   width: 70%;
}
/* 입금은행 drop-down */
#registrationForm > div:nth-child(4) > div > select
{
   margin-left: 20px;
   height: 30px;
}
/* 저장버튼 */
button.btn.btn-lg.btn-success,
button.btn.btn-lg.btn-success:active 
{
   background-color: rgb(142, 192, 227);
   border-color:  rgb(142, 192, 227);
}

/* media query*/
@media screen and (max-width: 768px) {
       body>section>div{

       width: 50%; 
       height: 100%; 
       margin:285px 100px;
       background-position-x: left;
       background-size: 30%;

       }
   }
   @media screen and (max-width: 411px) {

       body>section>div{
       width: 80%; 
       height: 100%; 
       background-position-x: left;
       margin: 135px auto;

       }
   }
   @media screen and (max-width: 375px) {

       body>section>div{
       background-origin: padding-box; 
       width: 90%; 
       height: 100%; 
       background-size: 20%;
       margin: 180px auto;

       }
   }
</style>
 <div class="container bootstrap snippet" style="margin-top: 100px; margin-bottom: 100px;" >
    <div class="row">
          <div class="col-sm-10"><h1>정보수정</h1></div>
    </div>
    <div class="row">
        <div class="col-sm-9">   
          <div class="tab-content">
            <div class="tab-pane active" id="home">
                <hr>
                  <form class="form savemove" method="post" id="registrationForm">
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="first_name"><h4 style="display: inline-block;">닉네임</h4></label>
                              <span><input type="button" value="중복확인"class="btn btn-primary btn-block" style="width: 70px;padding: 0;display: inline-block;" id="nick_idchk"></span>
                              <input type="text" class="form-control" name="mem_nickname" id="first_name" placeholder="" title="enter your first name if any.">
                             
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="last_name"><h4 >이름</h4></label>
                              <input type="text" class="form-control" name="mem_name" id="last_name" placeholder="" title="enter your last name if any.">
                          </div>
                      </div>
          
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="phone"><h4>핸드폰번호</h4></label>
                              <input type="text" class="form-control" name="mem_phone_num" id="phone" placeholder="휴대폰 번호를 '-' 없이 입력하세요" title="enter your phone number if any.">
                          </div>
                      </div>
                      <div class="form-group">
                          <div class="col-xs-6">
                              <label for="password"><h4>비밀번호</h4></label>
                              <input type="password" class="form-control" name="mem_pwd" id="password" placeholder="새로운 비밀번호를 입력하세요" title="enter your password.">
                          </div>
                      </div>
                      <!-- 
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="password2"><h4 style="display: inline-block;">비밀번호 확인</h4></label>
                            <span><input type="button" value="비밀번호 확인"class="btn btn-primary btn-block" style="width: 70px;padding: 0;display: inline-block;" id="pwd_pwdchk"></span>
                              <input type="password" class="form-control" name="mem_chkpwd" id="password2" placeholder="비밀번호를 한 번 더 입력하세요" title="enter your password2.">
                          </div>
                      </div>
                       -->
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                                  <button class="btn btn-primary" type="submit" id="save"><i class="glyphicon glyphicon-ok-sign"></i> 저장</button>
                                   <button class="btn btn-primary" type="reset"><i class="glyphicon glyphicon-repeat"></i> 리셋</button>
                            </div>
                      </div>
                  </form>
              
              <hr>
              
             </div><!--/tab-pane-->
 
          </div><!--/tab-content-->
 
        </div><!--/col-9-->
    </div><!--/row-->
        
    </article>
     <!-- 내정보 수정 끝 -->

     <!-- 인증하기 페이지 시작 -->
     <article article class='certified' style="display: none;">
        
     </article>
     <!-- 인증하기 페이지 끝 -->
</section>
<footer>
<%@include file="/memberpage/Footer.jsp" %>
</footer>

</body>
</html>