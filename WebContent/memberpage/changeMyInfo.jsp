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
    <script type="text/javascript">   
        $(document).ready( function() {
            
        	 $("header").load("./Header.jsp");  //nav 인클루드
             $("footer").load("./Footer.jsp");  //nav 인클루드
    
                        
        });
    </script>

<title>TOGETHER 정보수정</title>
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

</head>
<body>
    <header></header>
    <section>
<hr>
<div class="container bootstrap snippet">
    <div class="row">
  		<div class="col-sm-10"><h1>정보수정</h1></div>
    </div>
    <div class="row">
    	<div class="col-sm-9">   
          <div class="tab-content">
            <div class="tab-pane active" id="home">
                <hr>
                  <form class="form" action="##" method="post" id="registrationForm">
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="first_name"><h4>닉네임</h4></label>
                              <input type="text" class="form-control" name="mem_nickname" id="first_name" placeholder="" title="enter your first name if any.">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="last_name"><h4>이름</h4></label>
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
                              <input type="password" class="form-control" name="password" id="password" placeholder="새로운 비밀번호를 입력하세요" title="enter your password.">
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="password2"><h4>비밀번호 확인</h4></label>
                              <input type="password" class="form-control" name="password2" id="password2" placeholder="비밀번호를 한 번 더 입력하세요" title="enter your password2.">
                          </div>
                      </div>
                      <div class="form-group">
                           <div class="col-xs-12">
                                <br>
                              	<button class="btn btn-primary" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> 저장</button>
                               	<button class="btn btn-primary" type="reset"><i class="glyphicon glyphicon-repeat"></i> 리셋</button>
                            </div>
                      </div>
              	</form>
              
              <hr>
              
             </div><!--/tab-pane-->

          </div><!--/tab-content-->

        </div><!--/col-9-->
    </div><!--/row-->
                                                      
    </section>
    <footer>

    </footer>
</body>
</html>