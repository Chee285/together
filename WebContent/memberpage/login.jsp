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
    
    <title>TOGETHER 로그인</title>
    <script type="text/javascript">
	
</script>
    
    <script type="text/javascript">   
    $(function(){
    	//DOM트리에서 아이디 찾기 객체를 찾기        
        //localStorage에 id라는 이름의 아이템이 있으면 그 값을 아이디 입력란에 보여줌       
        let idValue = localStorage.getItem("id");
        if (idValue != null && idValue != '' ){
        	$("input[name=id]").val(idValue);
        }
        
        //DOM트리에서 type속성값이 checkbox인 input객체찾기
        let $chkObj = $("input[type=checkbox]");
        
        //로그인 버튼 클릭시 폼에서 서브밋 이벤트 자동발행
        
        //DOM트리에서 form객체 찾기
        let $formObj = $("form");
        $formObj.submit(function(event){
        	//checkbox 선택 시 localstorage에 id 객체 저장
        	if($chkObj.prop("checked")){
        		let $idObj = $("input[name=id]");
       			localStorage.setItem("id",$idObj.val());
        		
        	}else{
        		localStorage.removeItem("id");
        	}
        	
        	//DOM트리에서 아이디, 비밀번호 객체찾기
        	var idValue = $("input[name=id]").val();
        	var pwdValue = $("input[name=pwd]").val();
        	
        	
        	$.ajax({
        		
        		
                url: "../login",   //요청url
                method: "post",  //요청방식
                //data :"id="+idValue+"&pwd="+pwdValue,  //요청시 전달데이터  // 간단한데이터를 보내는거
                data : {"id" : idValue, "pwd" : pwdValue}, //객체형태 전달 //많은 데이터를 보낼때는....//html에서 자바파일로 데이터를 전달하기 위해서
                
                  success: function(responseObj){  
                     console.log(responseObj.status);
                  if(responseObj.status==1){
                       alert("로그인성공");//로그인성공
                       //location.href="http://localhost:8888/together/main.html";  //웹컴페이지를 요청
                       
                       location.href="../main.jsp";  //test하기위한 location
                       
                  }else if(responseObj.status==0){
                          alert("회원가입해주세요");//아이디값을 찾아오지 못했을때 
                       }
                  else if(responseObj.status==-1){
                	  alert("비밀번호가 틀렸습니다. 다시 확인해주세요");
                  }
                },
                error:function (jQueryXHR) {
                    alert(jQueryXHR.status);//에러뜸(아이디는 찾았지만 비번이 다를경우....)
                }
            });
        	
        	 return false;
        });
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
    background: url(../common_images/bgi.png) no-repeat center/cover;
    
}
   body > section
   {
      font-family: 'BMJUA';
   }

    /* 비밀번호 찾기 제목 */
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
    .card{
      background-color: rgba(0,0,0,0)!important;
    } 
    /* 비밀번호 찾기 제목*/
    body > section > div > article > div
    {
        height: 80px;
        margin-bottom: 20px;
        margin-top: 10px;
        width: 100%;     
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
</head>


<body>
    <header>
<%@include file="./Header.jsp" %>
    </header>
    <section>
        <div class="card">
            <article class="card-body">
            <h1 class="card-title mb-4 mt-1">로그인</h1>
                <form>
                <div class="form-group">
                    <a class="float-right" href="idResult.jsp">아이디 찾기</a>
                   <label>아이디</label>
                    <input name="id" class="form-control" placeholder="아이디를 입력해주세요" type="text">
                </div> <!-- form-group// -->
                <div class="form-group">
                   <a class="float-right" href="pwdResult.jsp">비밀번호 찾기</a>
                   <label>비밀번호</label>
                    <input name ="pwd" class="form-control" placeholder="******" type="password">
                </div> <!-- form-group// --> 
                <div class="form-group"> 
                <div class="checkbox">
                  <label> <input type="checkbox"> 아이디저장 </label>
                </div> <!-- checkbox .// -->
                </div> <!-- form-group// -->  
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block"> 로그인  </button>
                </div> <!-- form-group// -->    
                <a href="signup.html" class="float-right btn btn-outline-primary">회원가입</a>                                                       
            </form>
            </article>
            </div> <!-- card.// -->
    </section>
    <footer>
<%@include file="./Footer.jsp" %>
    </footer>
    
</body>
</html>
