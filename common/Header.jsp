<%@page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- 제이쿼리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   
    <title>투게더</title>
    <style>
        @font-face {
            font-family: 'BMJUA';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMJUA.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }
        html,body,*{padding: 0;margin: 0; box-sizing: border-box; font-weight: 500;}
        a{display: block; text-decoration: none!important;}
        ul{list-style: none;}


        header{width: 100%; height: 140px; transition:all 1s; font-family: 'BMJUA';}
        .header {width: 100%; height: 80px; padding: 20px 0 10px;}
        .header > .logo_login { height: 60px; display: flex; justify-content: space-between; align-items: center;  padding: 0 60px 0 }
        .header > .logo_login > .logout_munu {display: none; width:200px; justify-content: space-between; align-items: center;}
        .header > .logo_login > .login_menu {width: 400px; display: flex; justify-content: space-around; align-items: center;}

        .login_menu > .coin_box {width: auto; padding: 10px; height: 30px; border-radius: 10px; background-color: #ddd; display: flex; align-items: center; justify-content: space-around;}
        .login_menu > .coin_box > img {width: 20px;height: 20px; vertical-align: top;} 
        .login_menu > .coin_box > .coin_num {margin: 0 5px;}

        /* nav */
        .pc_nav{width: 95%; height: 60px; border-radius: 10px; overflow: hidden; background-color:  rgb(52, 152, 219); margin: 0 auto;}
        .pc_nav ul{display: flex; align-items: center;}
        .pc_nav ul li{width: 150px; height: auto; } 
        .pc_nav ul li a{width: 100%; height: auto; text-align: center; line-height: 60px; color: #fff; font-size: 20px;}
        .pc_nav ul li a:hover{background-color: rgb(213, 224, 230); color: rgb(15, 82, 87); }



        /* 햄버거 바 버튼 */
        .ham_btn {display: block; width: 50px;height: 50px; background-color: #fff; position: relative; overflow: hidden; box-shadow: 4px 0px 13px 0px rgba(0,0,0,0.08);  cursor: pointer; transition:all 1s; border-radius: 8px;}
        .line {transition: all 1s; width: 16px; height: 2px; background-color: #005ad5; position: absolute; top: 25px; left: 17px;}
        .line1 {top: 18px;}
        .line4 {top: 32px;}

        .ham_btn.on {background-color:#E3E41A; transition: all 1s;}
        .line2.on {top: -10; transform: rotate(405deg); width: 20px; left: 15px; background-color: #005ad5;}
        .line3.on {top: -10; transform: rotate(135deg); width: 20px; left: 15px; background-color: #005ad5;}
        .line1.on {top: -50px; transform: rotate(360deg); background-color: #fff;}
        .line4.on {top: 50px; transform: rotate(-360deg); background-color: #fff;}



        /* 모바일 nav */
        .m_nav {background-color: rgb(233, 233, 212); color: #fff; display: none;}

        .m_nav .nav_head{display: flex; justify-content: space-between; align-items: center; padding: 10px; background-color: rgb(52, 152, 219);}

        .m_nav .nav_bar {width: 100%; height: 0; opacity: 0; transition:all 1s; overflow: hidden; z-index: 1000; }
        .m_nav .nav_bar ul{display: flex; flex-flow: column; align-items: flex-start; width: 100%; }

        .m_nav .nav_item {width: 100%; }
        .m_nav .nav_item a.nav_link{width: 100%; text-align: left; height: 60px; line-height: 60px; padding-left: 50px;  opacity: 1; color: rgb(0, 0, 0); border-bottom: 1px solid rgba(145, 145, 145, 0.514);}
        .m_nav .nav_item a.nav_link:hover{background-color: rgb(106, 175, 230); color: rgb(255, 255, 255); }
        
        
        


        /* nav_toggle */
        
        .m_nav .nav_bar.active{height: 300px; opacity: 1; transition:all 1s;}
        header.active{height: 420px; transition:all 1s;}


        /* btn click */
        .pc_nav ul li a.on{background-color: rgb(213, 224, 230); color: rgb(15, 82, 87); }





        /* 반응형 */
        @media screen and (max-width: 991px) {

           
            /* 모바일 nav */
            .header{display: none;}
            .m_nav{display: block;}
            .pc_nav{display: none;}


            
        }


        
    </style>
     
    
    <script>

        
        $(function(){
    

            //햄버거 메뉴
            $(".ham_btn").on("click",function(){
                $(".box_ham").toggleClass("on");
                $(this).toggleClass("on");

                $(".nav_bar").toggleClass("active");
                $("header").toggleClass("active");
                
                
            });
            


        });
    </script>
    
</head>
<body>
<header>
    <div class="header">
        <div class="logo_login">
            <a href="#" class="logo"><img src="../common_images/header_logo.png" alt="로고"></a>

            <%
                if(session.getAttribute("loginInfo") == null){ //비로그인
            %>
            <ul class="login_menu">
                <li><a href="#">로그인</a></li>
                <li><a href="#">회원가입</a></li>
            </ul>
            <%
            }else{ //로그인
            %>
            <div class="logout_menu">
                <div class="coin_box">
                    <img src="../common_images/coin.png" alt="코인">
                    <span>보유코인</span>
                    <span class="mem_balance"><%= m.mem_balance%>10,000</span>
                </div> <!-- coin_box -->

                <div>반가워요, <span class="mem_name"><%= m.mem_name%>가득님!</span></div>
            
            </div> <!-- logout_menu -->
            <%
            }
            %>

            

        </div> <!-- logo_login -->

        </div> <!-- logo_login -->
    </div>


    <!-- pc nav -->
    <nav class="pc_nav">      
        <ul>
            <!-- 홈 -->
            <li class="nav_item">
                <a class="nav_link home" href="#">홈</a>
            </li>
            <!-- 개설 -->
            <li class="nav_item">
                <a class="nav_link tog_setup" href="#">개설</a>
            </li>
            <!-- TOGETHER -->
            <li class="nav_item">
                <a class="nav_link cat" href="#">TOGETHER</a>
            </li>
            <!-- 인증모아보기 -->
            <li class="nav_item">
                <a class="nav_link pho_view" href="#">인증모아보기</a>
            </li>
            
            <%
                if(session.getAttribute("loginInfo") == !null){ //로그인
            %>
            <!-- 마이페이지 -->
            <li class="nav_item">
                <a class="nav_link mypage" href="#">마이페이지</a>
            </li>
            <%
            } 
            %>
        </ul>

  
    </nav>
        
    
    <!-- 모바일 nav -->
    <nav class="m_nav">
        <div class="nav_head">
            <a href="#" class="logo"><img src="../common_images/header_logo.png" alt="로고"></a>

                <!-- 햄버거 바 버튼-->
            <div class="ham_btn">
                <div class="line line1"></div>
                <div class="line line2"></div>
                <div class="line line3"></div>
                <div class="line line4"></div>
            </div>   
        </div>
        

        

        <div class="nav_bar">
            <ul>
                <!-- 홈 -->
                <li class="nav_item">
                    <a class="nav_link home" href="#">홈</a>
                </li>
                <!-- 개설 -->
                <li class="nav_item">
                    <a class="nav_link tog_setup" href="#">개설</a>
                </li>
                <!-- TOGETHER -->
                <li class="nav_item">
                    <a class="nav_link cat" href="#">TOGETHER</a>
                </li>
                <!-- 인증모아보기 -->
                <li class="nav_item">
                    <a class="nav_link pho_view" href="#">인증모아보기</a>
                </li>
                <%
                if(session.getAttribute("loginInfo") == !null){ //로그인
                %>
                <!-- 마이페이지 -->
                <li class="nav_item">
                    <a class="nav_link mypage" href="#">마이페이지</a>
                </li>
                <%
                } 
                %>
            </ul>

        </div>
    </nav>
</header>
    

</body>
</html>