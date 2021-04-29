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
                    <h2 class="section-heading text-uppercase">치아 미백</h2>
            </div>
        	<hr>
        </div>
        <div class="wpb_row vc_row-fluid"style="text-align:left;">
        	<div class="container">
        		<div class="row">
					<p>변색된 치아를 고농도의 과산화수소나 과산화요소 겔을 이용하여 하얗게 하는 시술</p>
				</div>
			</div>
		</div>
		<br>
		<div class="wpb_row vc_row-fluid has-half-column-txt-with-img"style="text-align:left;">
			<div class="container">
				<div class="row">
					<p><img class="img-fluid" src="${contextPath}/assets/img/portfolio/meback01-thum.jpg" alt="" width="400" height="327" /></p>
					
					<p class="pstyle">
					치아미백은 변색된 치아나 선천적으로 색이 누런 치아의 색을 밝게 하는 것으로 칫<br />
					솔질 및 스케일링으로는 해결되지 않는 치아의 색을 원래의 색조로 회복시키거나 더<br />
					하얗게 하는 치료입니다. 치아 변색은 담배나 커피, 차 등의 색소에 의해 생기는 현<br />
					상입니다. 치아미백에 원리는 변색된 치아에 H2O2, Carbamide peroxide가 주<br />
					성분인 미백제를 도포하여 색소물질을 산화시키는 것입니다. 치아미백은 미백제가 치<br />
					아 속으로 스며들어 치아 속까지 하얗게 만드는 것으로 치아미백을 받은 후에 하얗<br />
					게 느껴지는 상태는 3-5년간 지속됩니다. 그러나 치아미백을 받은 후엔 담배나 커피,<br />
					차 등 색소가 진한 기호식품은 피하는 것이 좋습니다.</p>
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
</html>>