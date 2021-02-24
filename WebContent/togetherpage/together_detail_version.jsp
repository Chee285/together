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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>

    <title>TOGETHER 생성하기</title>
    <script type="text/javascript">
    $(function(){
        $("header").load("../common/Header.html");
        $("footer").load("../common/Footer.html");
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
        <h3 style="margin-top:8px"> 투게더 이름</h3>
        <div class="row">
            <img class="detail_img" src="../image/test.png">
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
                   
                   <ul style="list-style: square;">
                       <li>1회차 정보 : 인원 / 금액</li>
                       <li>2회차 정보 : 인원 / 금액</li>
                       <li>3회차 정보 : 인원 / 금액</li>
                       <li>4회차 정보 : 인원 / 금액</li>
                   </ul>
               </div>
            </div>
        </div>
        <div class="col-5">
            <div style="font-weight: bold;">인증빈도</div>
            <div>
                <input type="radio" id="6" name="how_certify"> <label for="6">주 6회 인증하기</label>
            </div>
            <div>
                <input type="radio" id="5" name="how_certify"> <label for="5">주 5회 인증하기</label>
            </div>
            <div>
                <input type="radio" id="4" name="how_certify"> <label for="4">주 4회 인증하기</label>
            </div>
            <div>
                <input type="radio" id="3" name="how_certify"> <label for="3">주 3회 인증하기</label>
            </div>
            <div>
                <input type="radio" id="2" name="how_certify"> <label for="2">주 2회 인증하기</label>
            </div>
            <div>
                <input type="radio" id="1" name="how_certify"> <label for="1">주 1회 인증하기</label>
            </div>


        </div>
      
    </div>
    <div class="row detial_content" style="width:100%; margin:0 0 30px 0;">
        <div class="col-7">
            <h4>TOGETHER 인증방법</h4>
            <div class="how_certify_content">
                <p style="line-height: 30px;">
                    인증방법에 대한 설명이 들어갈 예정입니다
                    테스트입니다. 서로 대한 행간 값을 비교하기 위해서
                    아마 잘될지는 모르겠지만 잘됫으면 좋겠네요
                    데이터를 불러와서 여기에닥 값을 넣어둬
                    이뻐으면 좋겠네요 반드시!!!!
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
                <p>- 눈금체중계는 1kg 이상이 준 것을 정확히 확인할 수 없어 사용할 수 없습니다.<br><br>

                    - 첫 주 인증샷은 비교할 수 있는 [직전 인증샷]이 없으므로 [몸무게가 보이는 디지털 체중계] 사진을 찍어면 됩니다.<br><br>

                    - 요일에 상관없이 월-일 중 한 번만 찍으면 됩니다.<br><br>

                    - 첫번째 인증샷이 50kg, 두번째인증샷이 49.5kg 이엇다면 두번째 인증샷은 삭제되고 세번째 인증샷은 50kg을 기준으로 1kg 이상 감량하시면 됩니다.</p>
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
                <button type="button" class="btn btn-primary" style="float:right">인증하기</button>
            </div>
        </div>

        <!-- <button type="button" class="btn btn-primary">결재하기</button> -->
    </div>
</body>
<footer></footer>

</html>