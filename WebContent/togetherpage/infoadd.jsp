<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>

    <html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
        <!-- 파비콘 -->
        <link rel="shortcut icon" href="../common_images/favicon.ico" type="image/x-icon">
        <link rel="icon" href="../common_images/favicon.ico" type="image/x-icon">
    
        <!-- 제이쿼리 -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <title>TOGETHER 개설</title>
    </head>
    <style>
        @font-face {
            font-family: 'BMJUA';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/BMJUA.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }
    
        .contents{width: 100%; height: auto; padding: 10px; font-weight: 500; display: flex; align-items: center; font-family: 'BMJUA';}
        .contents h2 {margin: 20px 0; font-size: 26px;}
        .contents h4 {margin: 10px 0; color: rgb(204, 204, 204); font-size: 16px;}
        .contents input {font-family: 'BMJUA'; display: block; outline: none;}
    
        .contents .content{width: 33.3333%; height: 720px; overflow: hidden;}
        .content .content_wrap{max-width: 450px; height: 720px; display: flex; flex-flow: column; justify-content: space-between; margin: 0 auto; }
    
        .content1 , .content2{border-right: 2px solid rgb(56, 56, 56);}
        .content .content_wrap > div{max-width: 100%; height: 300px; padding: 0 10px; }
    
    
        /* img */
        .content .sub_img{margin: 0 auto; width: 200px;}
        .content .sub_img img{width: 200px;}
    
        
    
        /* content1 */
    
        /* 어떤 주제와 관련이 있나요? */
        .content1 .content1_sub1 .sub_item{display: flex; flex-flow: wrap; align-items: center;}
        .content1 .content1_sub1 label{width: 50%; height: 50px;}
        .content1 .content1_sub1 label input{display: inline;}
        .content1 .content1_sub1 label span{margin-left: 30px;}
        
        /* 제목은 무엇인가 */
        .content1 .content1_sub2 input ,.content3 .content3_sub2 input {width: 280px; padding-left: 6px; font-size: 16px; height: 30px;}
    
        /* 어떻게 인증을 진행할까요? */
    
        /* textarea */
        .content textarea{font-family: 'BMJUA'; display: block; width: 85%; height: 150px; outline: none; font-size: 16px;}
    
    
    
        /* content3 */
    
        .ex {display: flex; flex-flow: wrap; justify-content: space-around; align-self: center;}
        .content3 .content_wrap .content3_sub1{height: 600px; }
    
        .content3 .content3_sub2 {display: flex; flex-flow: column; justify-content: center;}
        .content3 .content3_sub2 h2{margin: 0; margin-bottom: 10px;}
    
    
    
        .commfloat{width: 200px;}
    
        /* btn */
    
        .submit_btn {text-align: right; padding: 10px 90px; }
        .submit_btn input{font-family: 'BMJUA'; font-weight: 500; display: inline-block; font-size: 16px; width: 100px; cursor: pointer; padding: 10px 0; border-radius: 10px; border: none; color: #fff; background-color: rgb(56, 98, 189);}
    
    
        /* number */
        input[type="number"]::-webkit-outer-spin-button,
        input[type="number"]::-webkit-inner-spin-button {
        -webkit-appearance: none;
        margin: 0;
    }
    
        
          /* 반응형 */
          @media screen and (max-width: 991px) {
            
            .contents{flex-flow: column; height: auto; width: 95%;  margin: 0 auto; }
            .contents .content {width: 100%; height: 900px; display: flex; align-items: center; justify-content: center;}
            .content1 , .content2{border-right: none; border-bottom: 2px solid rgb(56, 56, 56);}
    
            .content .content_wrap{width: 100%; height: 700px; }
    
            .contents .content3{height: 1200px;}
            .content3 .content_wrap{ height: 1000px; }
            .ex{height: 700px; flex-flow: column; align-items: center; justify-content: space-around;}
    
            .content3 .content_wrap > div {height: auto;}
    
            .content .sub_img{margin: 0 auto; width: 250px;}
            .content .sub_img img{width: 250px;}
    
    
            /* 폰트 */
            .contents h2 {font-size: 30px;}
            .contents h4 {font-size: 18px;}
            .content1 .content1_sub1 label span{font-size: 22px;}
        }
    
    
    
    
    </style>



        <%    
        request.setCharacterEncoding("UTF-8");
        String info_no = request.getParameter("info_no");
        String act = null;
		
        System.out.println(info_no==null);
        if(info_no == null){
        		
             act = "../infoadd" ; 
        }else{
             act = "../infoupdate" ; 
        }


        %>




    <body>
        
        
   
        
        
        <header></header>
    
        
        
        <section>
            <!-- <form> -->
                <form method = "post" action="<%= act %>" enctype="multipart/form-data" >
                <div class="contents">
                    <input type="text" style="display: none;" class="info_no" name="info_no" value="<%=info_no%>">
                    <article class="content1 content">
                        <div class="content_wrap">
                            <div class="content1_sub1">
                                <h2>어떤 주제와 관련이 있나요?</h2>
    
                                <div class="sub_item cat">
                                    <label><input type="radio" name="cat_no" value="1"><span>건강</span></label>
                                    <label><input type="radio" name="cat_no" value="2"><span>역량</span></label>
                                    <label><input type="radio" name="cat_no" value="3"><span>취미</span></label>
                                </div>
                            </div>
                
                            <div class="content1_sub2">
                                <h2>TOGETHER 제목은 무엇인가</h2>
                                <div class="sub_item">
                                    <h4>타인에게 불쾌감을 주는 단어를 사용할 경우, 계정이 영구 정지될 수 있습니다.</h4>
                                    <input type="text"  class="name" name="info_name" placeholder="제목을 입력하세요." maxlength="15">
                                </div>
                            </div>
                            
                            <div class="content1_sub3">
                                <h2>어떻게 인증을 진행할까요?</h2>
            
                                <div class="sub_item">
                                    <h4>실천 여부를 알 수 있도록 구체적인 인증방법을 적어주세요.</h4>
                                    <textarea name="info_how_confirm"  class="tt1" cols="30" rows="10" placeholder="내용을 입력해주세요"></textarea>
                                </div> 
                            </div>
                        </div>
                    </article>
    
    
    
                
                    <article class="content2 content">
                        <div class="content_wrap">
    
                            <div class="content2_sub1 content_img">
                                <h2>TOGETHER 대표 이미지 등록</h2>
                                <div class="sub_item sub_img">
                                    <div id='View_area' style='position:relative; color: black; border: 0px solid black; dispaly: inline; max-width: 200px;'>
                                        <img id ="prev_View_area" class="obj img" src="../common_images/img_ex.png">
                                    </div>  
                                    <input type="file" class="file1" name="info_img" class="commfloat" id="info_img" onchange="previewImage(this,'View_area')">
                                </div>
                            </div>
                
                            <div class="content2_sub2">
                                <h2>TOGETHER를 소개해보세요.</h2>
                                <div class="sub_item">
                                    <textarea name="info_intro" class="tt2" cols="30" rows="10" placeholder="내용을 입력해주세요"></textarea>
                                </div>
                            </div>
    
                        </div>
                    </article>
    
            
                    <article class="content3 content">
                        <div class="content_wrap">
    
                            <div class="content3_sub1 content_img">
                                <h2>인증샷 예시를 등록해 보세요.</h2>
                                <h4>다른 사람들과 함께하게 된다면, 정확히 기준일수록 향후 분쟁 소지가 적습니다.</h4>
    
                                <div class="ex">
                                    <div class="sub_item sub_img">
                                        <div id='View_area2' style='position:relative; color: black; border: 0px solid black; dispaly: inline; max-width: 200px;'>
                                            <span>좋은 인증샷 예시</span>
                                            <img id ="prev_View_area2" class="obj good" src="../common_images/img_ex.png">
                                        </div>
                                        <input type="file" class="file2" name="pho_good" class="commfloat" id="pho_good" onchange="previewImage(this,'View_area2')">
                                    </div>
                                    <div class="sub_item sub_img">
                                        <div id='View_area3' style='position:relative; color: black; border: 0px solid black; dispaly: inline; max-width: 200px;'>
                                            <span>나쁜 인증샷 예시</span>
                                            <img id ="prev_View_area3" class="obj bad" src="../common_images/img_ex.png">
                                        </div>
                                        <input type="file" class="file3" name="pho_bad" class="commfloat" id="pho_bad" onchange="previewImage(this,'View_area3')">
        
                                    </div>
                                </div>
                               
                                
                            </div>
                
                            <div class="content3_sub2">
                                <h2>참가비는 얼마인가요?</h2>
                                <h4>100,000원 이상은 안됩니다.</h4>
                                <div class="sub_item">
                                    <input type="number" class="fee" name="info_application_fee" placeholder="금액을 입력해주세요." max="99999">
                                </div>
                            </div>
                        </div>
                    
                    </article>
    
    
                </div>
    
                <div class="submit_btn">
                    <input type="submit" value="다음">
                </div>
            </form>
            
    
            
        </section>
    
    
        <footer></footer>
    
    

        <script type="text/javascript">   
            $(document).ready( function() {
            	
                
            	$("header").load("./Header.jsp");
                $("footer").load("./Footer.jsp");    


                $('input:radio[name=cat_no]').is(':checked');


                var name = $(".name");
                var fee = $("input[type=number]");
                var tt1 = $(".tt1");
                var tt2 = $(".tt2");
                var file1 = $(".file1");
                var file2 = $(".file2");
                var file3 = $(".file3");
    
                var file_img = $(".img");
                var file_good = $(".good");
                var file_bad = $(".bad");


                
            	var check = $(".info_no").val();

                
                    //파라미터값 받아오기
                    function getParameter(name) {
                    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
                    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
                        results = regex.exec(location.search);
                    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
                }
                
            	
            	
    			
    			
    			//인포 no
                var info_no = getParameter("info_no");

                
                var num = info_no;

                //해당페이지가 켜졌을때 info_no 값이 넘어오면 수정하는 페이즈 실행
                if(num != 0){

                    $.ajax({
                        url: "../infono",   //요청url
                        method: "get",  //요청방식
                        data : {"info_no" : info_no},
                        dataType:"json",
                        contentType: "application/x-www-form-urlencoded; charset=UTF-8",

    
                        success: function(responseObj){   
                            
                            //카테고리
                            if(responseObj.category.cat_no == 1){
                                $("input:radio[name='cat_no']:radio[value='1']").prop('checked', true);
                            }else if(responseObj.category.cat_no == 2){
                                $("input:radio[name='cat_no']:radio[value='2']").prop('checked', true);
                            }else if(responseObj.category.cat_no == 3){
                                $("input:radio[name='cat_no']:radio[value='3']").prop('checked', true);
                            }else{
                                console.log("체크 실패...");
                            }

                            //투게더 이름
                            name.val(responseObj.info_name);

                            
                            //참가비
                            fee.val(responseObj.info_application_fee);

                            //방법
                            tt1.val(responseObj.info_how_confirm);

                            //소개
                            tt2.val(responseObj.info_intro);
                            

                            // 이미지 파일 미리보기
							file_img.attr('src',"../" + responseObj.info_img);
							file_good.attr('src',"../" + responseObj.pho_good);
							file_bad.attr('src',"../" + responseObj.pho_bad);

                        },
                        error:function (jQueryXHR) {
                        	alert(jQueryXHR.status);
                        }
                    });

                    
                	
                }
      
                var $infoName = $(".name");

    
                //투게더 네임 중복검사
                $infoName.focusout(function(event){
                                
                        var nameVal = $infoName.val();
    
                        if( nameVal == ''){
                            alert("공백은 안됩니다.");
                    }else{
                        $.ajax({
                        url: "../infoname",   //요청url
                        method: "post",  //요청방식
                        data : {"name" : nameVal},
    
                        success: function(responseObj){  
                        if(responseObj.status==1){
                                alert("사용가능한 투게더 이름입니다.");       
                                }else{
                                
                                alert("이미 존재하는 투게더 이름입니다.");   
                                $(".name").val("");
                                }      
                        },
                        error:function (jQueryXHR) {
                            alert(jqXHR.status);
                        }
                    });
                    }
                    
                    return false; 
                });
    
    
    
                $(tt1).on('keyup', function() {
                    if($(this).val().length > 100) {
    
                        alert("글자수는 1000자로 이내로 제한됩니다.");
    
                        $(this).val($(this).val().substring(0, 1000));
                    }
    
                });
                $(tt2).on('keyup', function() {
                    if($(this).val().length > 100) {
    
                        alert("글자수는 666자로 이내로 제한됩니다.");
    
                        $(this).val($(this).val().substring(0, 666));
                    }
    
                });
                
                $("form").bind('submit',function(){
    
                    if($('input:radio[name=cat_no]').is(':checked')){
                        }else{
                            alert("주제를 체크해주세요.");
                            return false;
                    }
    
    
                    if( name.val() == ''){
                        alert("제목 빈칸을 채워주세요.");
                        return false;
                    }
    
                    if( tt1.val() == ''){
                        alert("인증 빈칸을 채워주세요.");
                        return false;
                    }
                    
                    
                    if(!file1.val()){
                        alert("대표 이미지를 등록해주세요.");
                        return false;
                    }
                    if(!file2.val()){
                        alert("좋은 인증샷 예시를 등록해주세요.");
                        return false;
                    }
                    if(!file3.val()){
                        alert("나쁜 인증샷 예시를 등록해주세요.");
                        return false;
                    }
                    
                    
                    
                    
                    if( tt2.val() == ''){
                        alert("소개 빈칸을 채워주세요.");
                        return false;
                    }
                  
                    if( num.val() == ''){
                        alert("참가비 빈칸을 채워주세요.");
                        return false;
                    }else{
                        alert("성공");
                    }
                    
                });
    
                
    
    
               
            });
    
    
            function previewImage(targetObj, View_area) {   
                var preview = document.getElementById(View_area); //div id
                var ua = window.navigator.userAgent;
    
                //ie일때(IE8 이하에서만 작동)
                if (ua.indexOf("MSIE") > -1) {
                    targetObj.select();
                    try {
                        var src = document.selection.createRange().text; // get file full path(IE9, IE10에서 사용 불가)
                        var ie_preview_error = document.getElementById("ie_preview_error_" + View_area);
                        
    
                        if (ie_preview_error) {
                            preview.removeChild(ie_preview_error); //error가 있으면 delete
                        }
    
                        var img = document.getElementById(View_area); //이미지가 뿌려질 곳
    
                        //이미지 로딩, sizingMethod는 div에 맞춰서 사이즈를 자동조절 하는 역할
                        img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='" + src + "', sizingMethod='scale')";
                    } catch (e) {
                        if (!document.getElementById("ie_preview_error_" + View_area)) {
                            var info = document.createElement("<p>");
                            info.id = "ie_preview_error_" + View_area;
                            info.innerHTML = e.name;
                            preview.insertBefore(info, null);
                        }
                    }
                    //ie가 아닐때(크롬, 사파리, FF)
                } else {
                    var files = targetObj.files;
                    for (var i = 0; i < files.length; i++) {
                        var file = files[i];
                        var imageType = /image.*/; //이미지 파일일경우만.. 뿌려준다.
                        if (!file.type.match(imageType))
                            continue;
                        var prevImg = document.getElementById("prev_" + View_area); //이전에 미리보기가 있다면 삭제
                        if (prevImg) {
                            preview.removeChild(prevImg);
                        }
                        var img = document.createElement("img");
                        img.id = "prev_" + View_area;
                        img.classList.add("obj");
                        img.file = file;
                        img.style.width = '100%';
                        // img.style.height = '100px';
                        preview.appendChild(img);
                        if (window.FileReader) { // FireFox, Chrome, Opera 확인.
                            var reader = new FileReader();
                            reader.onloadend = (function (aImg) {
                                return function (e) {
                                    aImg.src = e.target.result;
                                };
                            })(img);
                            reader.readAsDataURL(file);
                        } else { // safari is not supported FileReader
                            //alert('not supported FileReader');
                            if (!document.getElementById("sfr_preview_error_"
                                + View_area)) {
                                var info = document.createElement("p");
                                info.id = "sfr_preview_error_" + View_area;
                                info.innerHTML = "not supported FileReader";
                                preview.insertBefore(info, null);
                            }
                        }               
                    }
                }
            }
        </script>


    

    </body>
    </html>