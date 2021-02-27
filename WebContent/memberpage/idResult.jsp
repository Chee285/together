<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>  
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- 파비콘 -->
    <link rel="shortcut icon" href="../common_images/favicon.ico" type="image/x-icon">
    <link rel="icon" href="../common_images/favicon.ico" type="image/x-icon">
    
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<title>TOGETHER 아이디 찾기</title>

    <script type="text/javascript">   
        $(document).ready( function() {
            
            $("header").load("../common/Header.html");  //nav 인클루드
            $("footer").load("../common/Footer.html");  //nav 인클루드
    
                        
        });
    </script>
    
    <script>
    $ (function(){
    	//DOM트리에서 이름, 생일, 핸드폰번호 객체찾기
			
		 let $formObj = $("form");
		 $formObj.submit(function(){
	        	
	        	var nameValue = $("input[name=name]").val();
	        	var birthdayValue = $("input[name=birthday]").val();
	    		var phoneNumValue = $("input[name=phone_num]").val();
	    			
	    			$.ajax({	
	    	            url: "../findid",
	    	            method: "get",  //요청방식
	    	            dataType :"json",
	    	            //data :"id="+idValue+"&pwd="+pwdValue,  //요청시 전달데이터  // 간단한데이터를 보내는거
	    	            data : {"name" : nameValue, "birthday" : birthdayValue , "phone_num" : phoneNumValue}, //객체형태 전달 //많은 데이터를 보낼때는....//html에서 자바파일로 데이터를 전달하기 위해서
	    	            
	    	              success: function(responseObj){  
	    	                 console.log(responseObj);
	    	              if(responseObj.mem_id != null){
		                		  alert(responseObj.mem_name+"님의 아이디는 "+responseObj.mem_id+"입니다.");	    
	                	  }else{
	                		  if(responseObj.status==-1){
	                			  console.log(responseObj);
		                      	alert("등록된 회원이 없습니다.");
                	  		}else if(responseObj.status==0) {
	                		 	 alert("정보를 정확히 입력해주세요");
	                	  	}else if(responseObj.status==-2){
	                		 	 alert("입력하신 정보로 찾는 아이디가 없습니다");
	                	  }
	                	  }
	    	            	  },
	    	            error:function (jQueryXHR) {
	    	                alert(jQueryXHR.status);//에러뜸(아이디는 찾았지만 비번이 다를경우....)
	    	            }
	    	        });
	    			return false;

			});
    });
		

    /*$.ajax({
	
    url: "../findid",
    method: "get",  //요청방식
    dataType :"json",
    //data :"id="+idValue+"&pwd="+pwdValue,  //요청시 전달데이터  // 간단한데이터를 보내는거
    data : {"name" : nameValue, "birthday" : birthdayValue , "phone_num" : phoneNumValue}, //객체형태 전달 //많은 데이터를 보낼때는....//html에서 자바파일로 데이터를 전달하기 위해서
    
      success: function(responseObj){  
         console.log(responseObj);
      if(responseObj != null){
		  alert(responseObj.mem_name+"님의 아이디는 "+responseObj.mem_id+"입니다.");	  
	  }else{
		  alert("회원가입을 해주세요")
	  }
    	  },
    error:function (jQueryXHR) {
        alert(jQueryXHR.status);//에러뜸(아이디는 찾았지만 비번이 다를경우....)
    }
});*/
    </script>
<style>
     /* 글씨체 */
         @font-face {
    font-family: 'BMJUA';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMJUA.woff') format('woff');
    font-weight: normal;
    font-style: normal;
    }
     /* 배경화면 설정 */
       body 
{
    background: url(../common_images/bgi.png) no-repeat center/cover;
    
}
   body > section
   {
      font-family: 'BMJUA';
   }
    /* 아이디 찾기 제목 */
    h1{
        padding-bottom: 30px;
        margin: 20px auto;
        text-align: center;
    }
     /* 기본틀 */
     body>section>div{
        width: 30%; 
        height:570px; 
        margin: 90px 85% 70px 15%;

    } 
    /* 아이디 찾기 제목 */
    body > section > div > article > div
    {
        height: 80px;
        margin-bottom: 20px;
        margin-top: 10px;
        width: 100%;
        
    }  
    /* 배경 투명도 */
    .card{
        background-color: rgba(0,0,0,0)!important;
    }

    /* media query*/
    @media screen and (max-width: 768px) {
        body>section>div{

        width: 60%; 
        height: 100%; 
        margin:235px auto;
        background-position-x: left;
        background-size: 30%;

        }
    }
    @media screen and (max-width: 411px) {
        body>section>div{

        width: 80%; 
        height: 100%; 
        background-position-x: left;
        margin: 90px auto;

        }
    }
    @media screen and (max-width: 375px) {
        body>section>div{
        background-origin: padding-box; 
        width: 90%; 
        height: 100%; 
        background-size: 20%;
        margin: 140px auto;

        }
    }


</style>
</head>


<body>
    <header>

    </header>
    <section>
        <div class="card">
            <article class="card-body">
                <div class="logo">
                    <h1>아이디 찾기</h1>
                </div>
                <form>
                <div class="form-group" >
                   <label>이름</label>
                    <input name="name" class="form-control name" placeholder="이름 입력" type="text" id="name">
                </div> <!-- form-group// -->
                <div class="form-group">
                    <label>생년월일</label>
                     <input name="birthday" class="form-control" placeholder="생년월일 입력" type="date" id="birthday">
                 </div> <!-- form-group// -->
                 <div class="form-group">
                    <label>휴대전화</label>
                     <input name="phone_num" class="form-control" placeholder="휴대전화 입력" type="tel" id="phone_num">
                 </div> <!-- form-group// -->
                 <div class="form-group">
                     <input type="submit" class="btn btn-primary btn-block" value="아이디 찾기" style="margin-top: 30px;" >
                 </div> <!-- form-group// -->
                 </form>
            </article>
            </div> <!-- card.// -->
    </section>
    <footer>

    </footer>
    
</body>
</html>s