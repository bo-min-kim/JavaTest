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
                    <h2 class="section-heading text-uppercase">보철 치료</h2>
            </div>
        	<hr>
        </div>
        <div class="wpb_row vc_row-fluid"style="text-align:left;">
        	<div class="container">
        		<div class="row">
					<p>치아의 커다란 실질결손, 또는 치아 결손에 의한 구강기능의 저하, 형태 이상에 대해서 인공물로 보충함으로서 기능을 회복시키는 것을 말한다.</p>
				</div>
			</div>
		</div>
		<br>
		<div class="wpb_row vc_row-fluid has-half-column-txt-with-img"style="text-align:left;">
			<div class="container">
				<div class="row">
					<p><img class="img-fluid" src="${contextPath}/assets/img/portfolio/two-thum.jpg" alt="" width="400" height="327" /></p>
		
					<p class="pstyle">
					일반적으로는 치과영역에서 치아의 커다란 실질결손, 또는 치아 결손에 의한 구강기능<br />
					의 저하, 형태 이상에 대해서 인공물로 보충함으로서 기능을 회복시키는 것을 말한다.<br />
					합니다. 보철치료는 ‘보기 좋기 위해서’만 필요한 것이 아닙니다. 손상되거나 빠진 <br />
					치아로 인해 저작력, 즉 씹는 힘이 저하되어 소화기능이 떨어지거나 앞니의 상실로<br />
					발음이 부정확해지는 것을 막아주는 역할을 하며, 치아의 상실 후 음식물이 치아 사이<br />
					에 끼어 발생할 수 있는 충치를 예방하고자 시행합니다. 또한 시간이 지남에 따라 인접<br />
					치아가 치아의 상실로 인해 비어있는 방향으로 쓰러지는 ‘도미노’현상이 나타날 수 있으<br />
					므로, 치아를상실하였다면 보철 치료를 미루지 않는 것이 좋습니다.</p>
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