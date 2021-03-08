<%@page import="vo.Photo_Shoot"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Photo_Shoot p = (Photo_Shoot)request.getAttribute("photo");%>
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
        
    	$("header").load("./main_content/Header.jsp");
        $("footer").load("./main_content/Footer.jsp");    

                    
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
            <h2>TOGETHER 인증성공 하셨습니다!!</h2>
            <div class="row">
                
                <div class="col-md-5">

                    <div class="card mb-5" style="height:100%; border:0px;">

                        <div id='View_area'
                            style='position:relative; color: black; border: 0px solid black; dispaly: inline; '>
                            <img id ="prev_View_area" class="obj" src="<%=p.getPho_good()%>">
                        </div>
                        <!-- <img class="card-img-top" src="./image/test.png" alt="Card image cap" style="height:500px"> -->

                    </div>
                </div>
                <div class="col-md-7">

                    <textarea id="paste"  readonly ><%=p.getPho_impression() %></textarea>
                    <button type="button" class="btn btn-primary" onclick ="location.href='./'" >인증성공하였습니다</button>
                    <img src="http://localhost:8889/together/common_images/new-product.png" style="width:150px; float:right">
                    
                    
                </div>
            </div>
</div>
</div>
<footer></footer>
</body>


</html>
