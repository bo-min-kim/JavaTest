<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<title>진료 과정</title>
</head>
<body>
	<br><br><br>
	<section class="page-section" id="services">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">진료 과정</h2>
                    <h3 class="section-subheading text-muted">최고의 실력, 따뜻한 마음으로 우리 가족 평생의 주치의가 되겠습니다.</h3>
                    <hr><br><br>
                </div>
                <img src="${contextPath}/images/dentalin.jpg" alt="dental1" width="100%"
						height="700"><br><br><br><br>
                <div class="row">
                    <div class="col-lg-4">
                    	<div class="team-member">
                        <img class="mx-auto rounded-circle" src="${contextPath}/assets/img/team/sub1.jpg" alt="">
                        <h4>STEP_1. 환자상담</h4><br>
                        <p class="text-muted">정밀한 초진상담과 진료를 통해 담당 원장님과 상담합니다. 전체적인 문제점, 개선방법 등을 논의합니다.</p>
                   		 </div>
                    </div>
                    <div class="col-lg-4">
                    	<div class="team-member">
                        <img class="mx-auto rounded-circle" src="${contextPath}/assets/img/team/sub2.jpg" alt="">
                        <h4>STEP_2. 정밀치료</h4><br>
                        <p class="text-muted">정밀 진단 결과에 의거하여 비용설명 및 치료에 따른 주의사항을 듣고, 치료 시작이 가능합니다. </p>
                    	</div>
                    </div>
                     <div class="col-lg-4">
                    	<div class="team-member">
                        <img class="mx-auto rounded-circle" src="${contextPath}/assets/img/team/sub3.jpg" alt="">
                        <h4>STEP_3. 사후관리</h4><br>
                        <p class="text-muted">안정적인 치료 상태를 유지하기 위하여 치료한 치아 및 잇몸의 상태등을 확인하기 위해 진료 1주일 이내 내원하여 체크합니다.</p>
                    	</div>
                   </div>
                </div>
            </div>
        </section>
</body>
</html>