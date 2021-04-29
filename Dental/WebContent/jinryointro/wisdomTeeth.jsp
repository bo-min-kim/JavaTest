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
                    <h2 class="section-heading text-uppercase">사랑니 치료</h2>
            </div>
        	<hr>
        </div>
        <div class="wpb_row vc_row-fluid"style="text-align:left;">
        	<div class="container">
        		<div class="row">
					<p>현대인들은 식생활이 개선이 되고 가공된 식사를 많이 하게 되면서 그만큼 턱의 공간이 작아지고 마지막에 올라오는 사랑니를 허용해줄 공간이 부족해지기때문에 사랑니가 나오는데 문제가 생기는 것입니다.</p>
				</div>
			</div>
		</div>
		<br>
		<div class="wpb_row vc_row-fluid has-half-column-txt-with-img"style="text-align:left;">
			<div class="container">
				<div class="row">
					<p><img class="img-fluid" src="${contextPath}/assets/img/portfolio/machine01-thum.jpg" alt="" width="400" height="327" /></p>

					<p class="pstyle">
					사랑니는 사람에게 마지막으로 나는 영구치이고 최후방에 위치한 어금니입니다. <br />
					사랑니를 반드시 발치해야 하는 것은 아닙니다. 사랑니가 정상적인 위치로 올라와<br />
					서 정상적으로 교합이 되고 식사하는데 문제가 없다면 사랑니를 발치할 필요는<br />
					없습니다. 하지만 사랑니가 비정상적인 위치에 있고 교합에 방해가 되거나 음<br />
					식물이 끼어서 염증을 자주 일으키거나 사랑니가 턱뼈에 매복되어 있어서 다른 질<br />
					환을 일으킨다면 사랑니를 뽑아주어야 합니다.<br />
					사랑니를 발치한 후에는 자극과 염증을 유발할 수 있는 술과 담배를 일주일 이상<br />
					자제해야 합니다. 또한 임신을 계획하고 있는 여성이라면 미리 사랑니 치료에<br />
					대해 상담하는 것이 좋습니다.</p>
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