<%@ page language="java" contentType="text/html; charset=UTF-8"
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
            		<input class="form-control mr-sm-2 search_bar" type="search" placeholder="Search" aria-label="Search" style="width:100%; padding-left:0; padding-right:0;">
            		
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
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit" style="width:100%; padding-left:0; padding-right:0;">검색</button>
            </div>
            </div>
        </form>

        <div class="row">
            
            <div class="col-md-4">
                <div class="card mb-4">
                    <div><img src="../image/test.png" class="pro_img"> 닉네임</div>

                    <img class="card-img-top" src="../image/test.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">TOGETER 인증모아보기</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the card's content.</p>
                        <div class="row">
                            <div class="col">좋아요</div>
                            <div class="col-6">좋아요 수</div>
                            <div class="col">날짜</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card mb-4">
                    <div><img src="../image/test.png" class="pro_img"> 닉네임</div>

                    <img class="card-img-top" src="../image/test.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the card's content.</p>
                        <div class="row">
                            <div class="col">좋아요</div>
                            <div class="col-6">좋아요 수</div>
                            <div class="col">날짜</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card mb-4">
                    <div><img src="../image/test.png" class="pro_img"> 닉네임</div>

                    <img class="card-img-top" src="../image/test.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the card's content.</p>
                        <div class="row">
                            <div class="col">좋아요</div>
                            <div class="col-6">좋아요 수</div>
                            <div class="col">날짜</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card mb-4">
                    <div><img src="../image/test.png" class="pro_img"> 닉네임</div>

                    <img class="card-img-top" src="../image/test.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the card's content.</p>
                        <div class="row">
                            <div class="col">좋아요</div>
                            <div class="col-6">좋아요 수</div>
                            <div class="col">날짜</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card mb-4">
                    <div><img src="../image/test.png" class="pro_img"> 닉네임</div>

                    <img class="card-img-top" src="../image/test.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the card's content.</p>
                        <div class="row">
                            <div class="col"><img src="../image/like.png" style="width:30px"></div>
                            <div class="col-6">좋아요 수</div>
                            <div class="col">날짜</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card mb-4">
                    <div><img src="../image/test.png" class="pro_img"> 닉네임</div>

                    <img class="card-img-top" src="../image/test.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the card's content.</p>
                        <div class="row">
                            <div class="col">좋아요</div>
                            <div class="col-6">좋아요 수</div>
                            <div class="col">날짜</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card mb-4">
                    <div><img src="../image/test.png" class="pro_img"> 닉네임</div>

                    <img class="card-img-top" src="../image/test.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the card's content.</p>
                        <div class="row">
                            <div class="col">좋아요</div>
                            <div class="col-6">좋아요 수</div>
                            <div class="col">날짜</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card mb-4">
                    <div><img src="../image/test.png" class="pro_img"> 닉네임</div>

                    <img class="card-img-top" src="../image/test.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the card's content.</p>
                        <div class="row">
                            <div class="col">좋아요</div>
                            <div class="col-6">좋아요 수</div>
                            <div class="col">날짜</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card mb-4">
                    <div><img src="../image/test.png" class="pro_img"> 닉네임</div>

                    <img class="card-img-top" src="../image/test.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of
                            the card's content.</p>
                        <div class="row">
                            <div class="col">좋아요</div>
                            <div class="col-6">좋아요 수</div>
                            <div class="col">날짜</div>
                        </div>
                    </div>
                </div>
            </div>

           




    </div>
    </div>
<footer></footer>

</body>

</html>