<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <!-- 파비콘 -->
    <link rel="shortcut icon" href="../common_images/favicon.ico" type="image/x-icon">
    <link rel="icon" href="../common_images/favicon.ico" type="image/x-icon">
    <title>TOGETHER 인증성공</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
	<script type="text/javascript">
	// HEADER / FOOTER
    $(document).ready( function() {
        
        $("header").load("../common/Header.html");  //nav 인클루드
        $("footer").load("../common/Footer.html");  //nav 인클루드

                    
    });
	</script>

 
    <style>
        .article {
            margin-left: auto;
            margin-right: auto;
            width: 80%;
       
        }

        #paste {
            width: 100%;
            height: 400px;
            padding: 0px;
        }

        .obj{
            height:500px;
            width: 100%;
        }
        
         @media screen and (max-width: 770px) {
            .article {
            width: 100%;
       
        }
        
            

        }
    </style>
</head>

<body>
<header>
</header>
    <div class="article">
        
        <div class="container">
            <h2>TOGETHER 제목</h2>
            <div class="row">
                
                <div class="col-md-5">

                    <div class="card mb-5" style="height:100%; border:0px;">

                        <div id='View_area'
                            style='position:relative; color: black; border: 0px solid black; dispaly: inline; '>
                            <img id ="prev_View_area" class="obj" src="../image/test.png">
                        </div>
                        <!-- <img class="card-img-top" src="./image/test.png" alt="Card image cap" style="height:500px"> -->

                    </div>
                </div>
                <div class="col-md-7">

                    <textarea id="paste"  readonly >이번 인증은 어떠셨나요? 나는 인증성공을 작성하고 있는것이다 어떻게 생각하느냐? 너무 귀찮고 생각하는대로 안되는게 너무 짜증나서 하기싫어진다. 차라리 back단을 하면 이것보다는 error만 잡고 패턴만 익히면되는데 하 빨리 back하고 이 프로젝트 털고 싶다.</textarea>
                    <button type="button" class="btn btn-primary" >인증성공하였습니다</button>
                    <img src="../image/new-product.png" style="width:150px; float:right">
                    
                    
                </div>
            </div>
</div>
</div>
<footer></footer>
</body>


</html>
