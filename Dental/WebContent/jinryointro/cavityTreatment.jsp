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
                    <h2 class="section-heading text-uppercase">충치 치료</h2>
            </div>
        	<hr>
        </div>
        <div class="wpb_row vc_row-fluid"style="text-align:left;">
        	<div class="container">
        		<div class="row">
					<p>치아 우식증(충치)으로 인해 치아 경조직의 손상이 있을 경우 치과용 재료로 치아를 충전하여 기능을 회복하게 하는 치료</p>
				</div>
			</div>
		</div>
		<br>
		<div class="wpb_row vc_row-fluid has-half-column-txt-with-img"style="text-align:left;">
			<div class="container">
				<div class="row">
					<p><img class="img-fluid" src="${contextPath}/assets/img/portfolio/dentist02-thum.jpg" alt="" width="400" height="327" /></p>
					
					<p class="pstyle">
					치아 경조직의 수복을(우식으로 손상된 치아를 회복) 위해서는 적절한 와동 형성이 먼저<br />
					이루어져야 하는데, 이 때문에 충치 치료할 때 치아의 일부를 제거하는 것입니다. 와동<br />
					형성이란 치아의 손상을 형태, 기능, 심미적으로 적절히 수복할 수 있도록 치아를 기계적 <br />
					으로 변형하는 작업을 말하며 이렇게 만들어진 구멍을 와동이라고 합니다. 와동 형성 과정에<br />
					는 손상 받은 치아의 구조나 우식을 일으키는 세균이나 기존 수복물을 삭제하는 행위가 포<br />
					함됩니다. 치아 경조직의 와동 형성은 치과용 핸드피스(dental handpiece)라고 하는 회<br />
					전형 및 수동 절삭 기구를 이용하여 시행합니다.<br />
					손상된 치아를 발치하지 않고 최대한 자연치아를 보존합니다.</p>
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