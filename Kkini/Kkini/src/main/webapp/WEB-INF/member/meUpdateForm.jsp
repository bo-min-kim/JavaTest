<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- common.jsp에 부트 스트랩 관련 코딩들이 들어 있으므로 -->
<!--  -->
<%@include file="../common/common.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title><spring:message code="member.register01"/></title>
	<style type="text/css">
		/* err 스타일은 common.jsp에 이미 정의되어 있습니다. */
	</style>
	<script type="text/javascript">
		function checkDuplicateId(){ /* 아이디 중복 체크 */
			//alert('아이디 중복 체크');
			var id = document.myform.id.value;
			if (id.length < 4) {
				alert('아이디는 최소 4자리 이상이어야 합니다.');
				document.myform.id.focus();
				return false;
			}
			var url = '<%=contextPath%>/idcheck.me?id=' + id;
			window.open(url, 'mywin', 'height=150,width=300');
		}
		
		function findZipcode(){ /* 우편 번호 찾기 */
			//alert('우편 번호 찾기')
			var url = '<%=contextPath%>/zipcheck.me';
			window.open(url, 'mywin', 'height=600,width=720,statusbar=yes,scrollbars=yes,resizable=no');
		}
		
		/* 회원 가입 버튼 클릭 */
		/* function checkForm(){ 
			var isCheck = document.myform.isCheck.value;
			//alert(isCheck);
			if (isCheck == 'false') {
				alert("아이디 중복 체크를 해주세요")
				return false;
			}
		} */
		
			/* 키보드에서 손을 떼면 호출이 되는데, isCheck를 false로 변경해 줍니다. */
		/* function isCheckFalse(){
			document.myform.isCheck.value = false;
		} */
	</script>
</head>
<body>
	<div align="center" class="container col-sm-offset-2 col-sm-8">
		<h2><spring:message code="member.update01"/></h2>
		<div class="panel panel-primary">
			<div class="panel panel-heading" align="left">
				<font color="red">
					<b><spring:message code="member.register01"/></b>
					페이지입니다.
				</font>
			</div>
			<div class="panel panel-body">
				<c:set var="apppath" value="<%=contextPath%>"/>
				<form:form modelAttribute="member" action="${apppath}/update.me" method="post"
					class="form-horizontal" role="form" name="myform">
					
					<%-- jsp 주석 : isChiec가 false이면 회원 가입이 불가능합니다.(우클릭 소스보기 해도 안보임) --%>
					<%-- <input type="hidden" name="isCheck" value="false"> --%>
					
					<!-- html 주석 : 마일리지 포인트는 숨겨져 넘김니다.(우클릭 소스보기 해도 보임) -->
					<input type="hidden" name="mpont" value="5">
					
					<!-- 아이디 중복 체크 기능이 필요 없습니다. -->
					<!-- 아이디는 읽기 전용으로 설정하고, 숨겨서 넘기도록 합니다. -->
					<div class="form-group">
						<label for="me_id" class="col-xs-3">
							<spring:message code="member.me_id"/>
						</label>
						<div class="col-xs-8">
							<input type="text" id="fakeid" name="fakeid" 
								class="form-control" value="${member.me_id}"
								disabled="disabled"/>
							<input type="text" name="me_id" id="me_id" value="${member.me_id}">
						</div>
					</div>
					<div class="form-group">
						<label for="me_password" class="col-sm-3">
							<spring:message code="member.me_password"/>
						</label>
						<div class="col-sm-8">
							<form:input path="me_password" type="me_password" id="me_password" name="me_password" 
								class="form-control" value="${me_password}"/>
							<form:errors path="me_password" cssClass="err"/>
						</div>
					</div>
					<div class="form-group">
						<label for="me_image" class="col-sm-3">
							<spring:message code="member.me_image"/>
						</label>
						<div class="col-sm-8">
							<form:input path="me_image" type="text" id="me_image" name="me_image" 
								class="form-control" value="${me_image}"/>
							<form:errors path="me_image" cssClass="err"/>
						</div>
					</div>
					<div class="form-group">
						<label for="me_catagory" class="col-xs-3">
							<spring:message code="member.me_catagory"/>
						</label>
						<div class="col-xs-8" align="left">
							<form:select path="me_catagory">
								<form:options
									items="${selectlist}" itemLabel="mykey" itemValue="mykey"/>
							</form:select>
							<form:errors path="me_catagory" cssClass="err"/>
						</div>
					</div>
							
					<div class="form-group">
						<div class="col-sm-12">
							<button type="submit" class="btn btn-default"
							onclick="return checkForm();">
								<spring:message code="member.update02"/>
							</button>
							&nbsp;&nbsp;&nbsp;
							<button type="reset" class="btn btn-default">
								초기화
							</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<!-- meUpdateFrom.jsp -->
	<!-- 이전에 체크했던 내용을 체크 박스에 on 상태로 만들어 주기 -->
	<script type="text/javascript">
		$(document).ready(function(){
			var checkboxes = $("input[name='hobby']");
			//alert(checkboxes.length); // 체크 박스 개수
			
			checkboxes.each(function(){
				var typename = $(this).val();
				if('${member.hobby}'.indexOf(typename) >= 0){
					// on 상태로 설정하기
					$(this).attr('checked', true);
				}
			});
		});
	</script>
</body>
</html>