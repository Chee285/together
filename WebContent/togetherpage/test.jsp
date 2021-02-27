<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function(){
		$('.test').click(function(){
		
			$.ajax({
				url:"../togetherdetail",
				method:"get",
				data:"tog_no="+ "200-1",
				success:function(data){
					alert(1);
				},
				error:function(jqXHR){
					alert(jqXHR.status);
				}
			});
			
			
		});
	
	$("a[name='test']").click(function(){
		location.href="../togetherdetail?tog_no=200-1"
	});
	});
</script>
</head>
<body>
<!-- ajax로 뿌려준다고 가정을 하면  -->
<a href="../togetherdetail?tog_no=200-1&info_no=0" >디테일 페이지 이동</a>

<a href="../togetherdetail?tog_no=0&info_no=200">마이페이지에서 together를 생성하기</a>
<input type="button" value="test" class="test">
</body>
</html>