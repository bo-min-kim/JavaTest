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
                    <h2 class="section-heading text-uppercase">임플란트</h2>
            </div>
        	<hr>
        </div>
        <div class="wpb_row vc_row-fluid"style="text-align:left;">
        	<div class="container">
        		<div class="row">
					<p>치과 치료에 있어서 상실된 치아를 대체하는 방법으로 임플란트는 이미 널리 알려지고 시술되어지고 있다.</p>
				</div>
			</div>
		</div>
		<br>
		<div class="wpb_row vc_row-fluid has-half-column-txt-with-img"style="text-align:left;">
			<div class="container">
				<div class="row">
					<p><img class="img-fluid" src="${contextPath}/assets/img/portfolio/implant01-thum.jpg" alt="" width="400" height="327" /></p>
		
		
					<p class="pstyle">
					임플란트는 틀니와 같이 움직이지 않고 고정되어 있기 때문에 자기치아와 같은 느낌<br />
					이 든다. 틀니는 씹을 때마다 잇몸이 아프거나 틀니가 불안정하여 불편함이 있었지만<br />
					임플란트는 통증이나 움직임이 거의 없다고 할 수 있다. 또 자연스러운 <br />
					외관이나 표정을 찾게 되어 사람들 앞에서 자신감이 회복하며 씹는 기능이 회복되<br />
					어 음식물의 종류에 영향을 받지 않기 때문에 균형 있는 식사를 할 수도 있다.<br />
					연령이나 성별에 관련된 임플란트 성공률에 대한 차이는 없다고 보면 된다.<br />
					임플란트는 아주 드문경우를 제외하고는 별다른 후유증은 염려하지 않아도 된다.<br />
					즉시 부하 임플란트라고 불리는 술식으로 모든 경우에 적용되지는 않지만 일반적<br />
					으로 임플란트 수술 후 뼈 세포가 아무는 생물학적 치유기간을 필요로 한다.</p>
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