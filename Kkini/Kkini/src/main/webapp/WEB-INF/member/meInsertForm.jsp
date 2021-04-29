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
		
		function checkForm(){ /* 회원 가입 버튼 클릭 */
			var isCheck = document.myform.isCheck.value;
			//alert(isCheck);
			if (isCheck == 'false') {
				alert("아이디 중복 체크를 해주세요")
				return false;
			}
		}
		
		function isCheckFalse(){
			/* 키보드에서 손을 떼면 호출이 되는데, isCheck를 false로 변경해 줍니다. */
			document.myform.isCheck.value = false;
		}
	</script>
</head>
<body>
	<div align="center" class="container col-sm-offset-2 col-sm-8">
		<h2><spring:message code="member.register01"/></h2>
		<div class="panel panel-primary">
			<div class="panel panel-heading" align="left">
				<font color="red">
					<b><spring:message code="member.register01"/></b>
					페이지입니다.
				</font>
			</div>
			<div class="panel panel-body">
				<c:set var="apppath" value="<%=contextPath%>"/>
				<form:form modelAttribute="member" action="${apppath}/insert.me" method="post"
					class="form-horizontal" role="form" name="myform">
					
					<%-- jsp 주석 : isChiec가 false이면 회원 가입이 불가능합니다.(우클릭 소스보기 해도 안보임) --%>
					<input type="hidden" name="isCheck" value="false">
					
					<!-- html 주석 : 마일리지 포인트는 숨겨져 넘김니다.(우클릭 소스보기 해도 보임) -->
					<input type="hidden" name="mpont" value="5">
					
					<div class="form-group">
						<label for="me_id" class="col-xs-3">
							<spring:message code="member.me_id"/>
						</label>
						<div class="col-xs-6">
							<form:input path="me_id" type="text" id="me_id" name="me_id" 
								class="form-control" value="${me_id}"
								onkeyup="isCheckFalse();"/>
							<form:errors path="me_id" cssClass="err"/>
						</div>
						<div class="col-xs-2">
							<input type="button" class="btn btn-info"
								value="<spring:message code="member.duplicatedId"/>"
								onclick="return checkDuplicateId();">
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
							<input type="file" class="form-control" id="multi" name="multi"
								placeholder="이미지를 넣어 주셔용^^">
							<form:errors cssClass="err" path="me_image" />
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
								<spring:message code="member.register02"/>
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
</body>
</html>