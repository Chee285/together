<%@page import="vo.Together"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%Together t = (Together)request.getAttribute("together_detail"); %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
<!-- 파비콘 -->
    <link rel="shortcut icon" href="../common_images/favicon.ico" type="image/x-icon">
    <link rel="icon" href="../common_images/favicon.ico" type="image/x-icon">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>

    <title>TOGETHER 생성하기</title>
    <script>
    function getQueryString(key) {
    	 
        // 전체 Url을 가져온다.
        var str = location.href;
     
        // QueryString의 값을 가져오기 위해서, ? 이후 첫번째 index값을 가져온다.
        var index = str.indexOf("?") + 1;
     
        // Url에 #이 포함되어 있을 수 있으므로 경우의 수를 나눴다.
        var lastIndex = str.indexOf("#") > -1 ? str.indexOf("#") + 1 : str.length;
     
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
    </script>
    <script type="text/javascript">
    $(function(){
        $("header").load("./common/Header.html");
        $("footer").load("./common/Footer.html");
        
       
       
        $.ajax({
        	url:"./together_version",
        	method : "get",
        	dataType : "json",
        	data:  {info_no : getQueryString("info_no")},
        	success:function(data){
        	
        		console.log(data);
        		console.log(data[0]["tog_version"]);
        		
        		var version = "<ul>";
        		if(data.status == undefined){
	        	
	        	version += "</ul>";
	        	$(data).each(function(index, element){
	        		version += "<li>";
	        		version += element.tog_version + "회차 정보 : " + element.tog_people+" 명  /  "+ element.tog_sum+" 총 금액" ;
	        		version += "</li>";
	        		
	        	});
	        	
	        		$(".li_version").append(version);
        			
        		//});
        		}
        		
        	},error:function(jqXHR){
        		alert(jqXHR.status);
        	}
        	
        	
        	
        });
        $(".version_insert").click(function(){
        	
        	var start_date = $('#start_date').val();
        	var end_date = $('#end_date').val();
        	
        	var certified = $("input[name='how_certify']:checked").val();
        	var info_no = $("#info_number").val();
        	
        	var countDownDate = new Date(end_date).getTime();
        	var start = new Date(start_date);
        	// 디데이
        	var distance = Math.floor((countDownDate -start )/(1000*60*60*24));
        	var sub_certified = distance/7*certified;
        	
        	// 값확인하고 값이 있는지 없는 여부 확인
        	console.log(certified);
        	if(start_date !="" && end_date !="" && certified !=undefined){
        		
				$.ajax({
					url:"./togetherversioncreate",
					method : "get",
					data:{info : info_no,start :start_date, end : end_date, how : certified,sub_how: sub_certified},
					success:function(data){
						alert("투게더 생성되었습니다!!  >> 메인페이지로 이동");
					}
				})
        	}else if(start_date ==""){
        		alert("시작일을 선택해주세요.");
        		
        	}else if(end_date ==""){
        		alert("끝나는일을 선택해주세요.");
        	}else if(certified ==undefined){
        		alert("인증빈도를 선택하여주세요.");
        	}
    	});
        
        
    });
    </script>
    <style>
        .detail_small_img {
            width: 100%
        }

        .content_calendar {
            margin-right: auto;
            margin-left: auto;
        }

        .calender_title {
            font-weight: bold
        }

        .certified_ul {
            list-style: none;
        }




        @media screen and (max-width: 2000px) {
            .detail_certified {
                margin-right: 5%;
                margin-left: 5%;
                width: 60%;
            }

            .detail_img {
                width: 30%;
            }

            .detial_content {
                width: 80%;
                margin-left: auto;
                margin-right: auto;
            }

            .how_certify_content {
                height: 150px;
            }
        }

        @media screen and (max-width:1500px) {
            .detial_content {
                margin-right: 5%;
                margin-left: 5%;
                width: 90%;
                margin-left: auto;
                margin-right: auto;
            }


        }



        @media screen and (max-width: 770px) {
            .detail_certified {
                width: 100%;
                margin-right: 0;
                margin-left: 0;
            }

            .detail_img {
                width: 100%;
            }

            .detial_content {
                width: 100%;
                margin-left: auto;
                margin-right: auto;
            }

            .how_certify_content {
                height: 200px;
            }

        }

        @media screen and (max-width: 450px) {
            .how_certify_content {
                height: 400px;
            }
        }
    </style>

</head>

<body>
    <header>

    </header>
    <div class="container">
        <h3 style="margin-top:8px"> <%=t.getInfo().getInfo_name() %></h3>
        <div class="row">
            <img class="detail_img" src="./image/test.png">
            <div class="detail_certified">
                <span style="background-color: gray;">&nbsp;1주일에 3번&nbsp;</span>
                <br><br>

                <p style="background-color: gray; width:100%">
                    100% 성공 전액 페이백 + 상금<br>
                    100% 미만 전액 손실 ㅠㅠ<br>
                    100%가 아니면 모두 손실되므로 이점 참고 바랍니다 ㅠㅠ<br><br>

                    ※ 참가비는 10000원으로 한정되어있습니다. 이점 참고해주세요. </p>
            </div>

        </div>
    </div>
	<form action="" method="post">
    <div class="row" style="margin-bottom: 50px;">
        
        <div class="col-7">
            <div class="row">
                <div class="col">
                    <span class="calender_title">TOGETHER 시작일</span>
                    <input type="date" class="content_calendar" id="start_date">
                </div>
                <div class="col">
                    <span class="calender_title">TOGETHER 마지막일</span>
                    <input type="date" class="content_calendar" id="end_date">
                </div>
               <div class=col-12><br>
                   <div style="font-weight: bold;">현재까지에 회차에 대한 정보입니다.</div>
                   <ul style="list-style: square;" class="li_version">
                   </ul>
                   <!--  <ul style="list-style: square;" class="li_version">
                       <li>1회차 정보 : 인원 / 금액</li>
                       <li>2회차 정보 : 인원 / 금액</li>
                       <li>3회차 정보 : 인원 / 금액</li>
                       <li>4회차 정보 : 인원 / 금액</li>
                   </ul>-->
               </div>
            </div>
        </div>
        <div class="col-5">
            <div style="font-weight: bold;">인증빈도</div>
            <div>
                <input type="radio" id="6" name="how_certify" value="6"> <label for="6">주 6회 인증하기</label>
            </div>
            <div>
                <input type="radio" id="5" name="how_certify" value="5"> <label for="5">주 5회 인증하기</label>
            </div>
            <div>
                <input type="radio" id="4" name="how_certify" value="4"> <label for="4">주 4회 인증하기</label>
            </div>
            <div>
                <input type="radio" id="3" name="how_certify" value="3"> <label for="3">주 3회 인증하기</label>
            </div>
            <div>
                <input type="radio" id="2" name="how_certify" value="2"> <label for="2">주 2회 인증하기</label>
            </div>
            <div>
                <input type="radio" id="1" name="how_certify" value="1"> <label for="1">주 1회 인증하기</label>
            </div>


        </div>
      
    </div>
    </form>
    
    <div class="row detial_content" style="width:100%; margin:0 0 30px 0;">
        <div class="col-7">
            <h4>TOGETHER 인증방법</h4>
            <div class="how_certify_content">
                <p style="line-height: 30px;">
                    <%=t.getInfo().getInfo_how_confirm() %>
                </p>

            </div>
            <div class="row detail_content_img">
                <div class="col">
                    <h5>이렇게 해주세요!</h5>

                    <img class="detail_small_img" src="../image/test.png">

                </div>
                <div class="col">
                    <h5>이렇게 하면 안돼요!</h5>

                    <img class="detail_small_img" src="../image/test.png">

                </div>
            </div>

        </div>
        <div class="col-5">
            <h5 style="font-weight: bold;">꼭 알아주세요!</h5>
            <div>
                <!-- <p>- 눈금체중계는 1kg 이상이 준 것을 정확히 확인할 수 없어 사용할 수 없습니다.<br><br>

                    - 첫 주 인증샷은 비교할 수 있는 [직전 인증샷]이 없으므로 [몸무게가 보이는 디지털 체중계] 사진을 찍어면 됩니다.<br><br>

                    - 요일에 상관없이 월-일 중 한 번만 찍으면 됩니다.<br><br>

                    - 첫번째 인증샷이 50kg, 두번째인증샷이 49.5kg 이엇다면 두번째 인증샷은 삭제되고 세번째 인증샷은 50kg을 기준으로 1kg 이상 감량하시면 됩니다.</p>
                     -->
                     <p>
                    <%=t.getInfo().getInfo_intro() %>
                    </p> 
            </div>
            <div>

                <table>
                    <tr>
                        <td>인증가능 요일&nbsp;&nbsp;</td>
                        <td>월 화 수 목 금 토 일</td>
                    </tr>
                    <tr>
                        <td>인증빈도&nbsp;&nbsp;</td>
                        <td>주 1일( 바꿔야할 부분 )</td>
                    </tr>
                    <tr>
                        <td>인증 가능 시간&nbsp;&nbsp;</td>
                        <td>24시간</td>
                    </tr>
                    <tr>
                        <td>공휴일 인증&nbsp;&nbsp;</td>
                        <td>인증 필요</td>
                    </tr>
                </table>
                <button type="button" class="btn btn-primary version_insert" style="float:right">투게더 새로운 버전 만들기</button>
            </div>
        </div>

        <!-- <button type="button" class="btn btn-primary">결재하기</button> -->
        <input id="info_number" style="visibility: hidden;" value="<%=t.getInfo().getInfo_no()%>">
    </div>
</body>
<footer></footer>

</html>