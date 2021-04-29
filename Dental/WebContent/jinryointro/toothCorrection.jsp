<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
	h1{
	margin-left: 20px;
	}
	.pstyle{
	margin-left: 20px;
	line-height: 35px;
	}
	button{
	margin-bottom: 10%;
	}
	</style>
</head>
<body>
	<br><br><br>
	<br><br><br>
	<div class="page_content_area ">
        <div class="page_content_title">
        	<div class="text-center">
                    <h2 class="section-heading text-uppercase">치아 교정</h2>
            </div>
        	<hr>
        </div>
        <div class="wpb_row vc_row-fluid"style="text-align:left;">
        	<div class="container">
        		<div class="row">
					<p>치아의 배열 및 안모(얼굴 생김새)의 이상에 대해 진단하여 부정교합을 예방하거나 처치하는 일련의 치료시술</p>
				</div>
			</div>
		</div>
		<br>
		<div class="wpb_row vc_row-fluid has-half-column-txt-with-img"style="text-align:left;">
			<div class="container">
				<div class="row">
					<p><img class="img-fluid" src="${contextPath}/assets/img/portfolio/two-thum.jpg" alt="" width="400" height="327" /></p>
		
					<p class="pstyle">
					교정치료란 단순히 비뚤어진 치아를 가지런히 하는 것뿐만 아니라 성장과정에서<br />
					발생할 수 있는 여러 가지 골격적 부조화를 바로잡아 정상적인 기능을 발휘할 수<br />
					있도록 해주는 일련의 치료술식을 의미한다. 치료 결과 건강한 구강 조직과 보다  <br />
					아름다운 얼굴 모습을 기대할 수 있다.<br />
					교정 장치 장착 후 약 일주일 정도의 적응 기간이 필요하다.교정 치료 중에는<br />
					복잡한 교정 장치로 인해 충치 및 잇몸 질환 발생 위험성이 크므로 세심하게<br />
					칫솔질을 해야 한다.<br />
					치료가 끝나면 교정 장치를 모두 떼어내고 유지 장치(보정 장치)를 끼게 된다.<br />
					치아 내 와이어를 부착한 유지 장치는 평생 장착하게 된다.</p>
				</div> 
					<button class="btn btn-primary" type="button" onclick="goBack();">돌아가기</button>
			</div> 
		</div> 
	</div>
<script>
function goBack(){
	window.history.back();
}
</script> 
</body>
</html>