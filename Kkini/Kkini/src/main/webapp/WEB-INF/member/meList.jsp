<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="./../common/common.jsp"%>
<%
	int myoffset = 2;
	int mywidth = twelve - 2 * myoffset;
	int formleft = 3 ;
	int formright = twelve - formleft ; 
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>BootStrap Sample</title>
	<script type="text/javascript">
		function search(){
			var mode = $('#mode').val();
			var keyword = $('#keyword').val();
			
			if ($('#mode').val() == 'all') {
				alert('검색 모드를 선택해주세요.');
				$('#mode').focus(); /* 해당 영역에 포커스 넣기 */
			}else{
				//alert($('#keyword').val()); // 글자 출력
				//alert($('#keyword').val().length); // 글자의 길이 출력
				var param = '?mode=' + mode + '&keyword=' + keyword;
				var url = '<%=contextPath%>/list.me' + param;
				location.href=url
			}
		}
		
		function searchAll(){
			/* location 객체의 href 속성은 특정 페이지로 이동하기 휘한 자바 스크립트 내장 겍체 */
			location.href='<%=contextPath%>/list.me';
		}
		
	</script>
</head>
<body>
	<div class="container col-sm-offset-<%=myoffset%> col-sm-<%=mywidth%>">
		<div class="panel panel-default panel-warning">
			<div class="panel-heading"><h4><spring:message code="member.list"/></h4></div>
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th><spring:message code="member.me_id"/></th>
						<th><spring:message code="member.me_image"/></th>
						<th><spring:message code="member.me_catagory"/></th>
						<th>삭제</th>
						<th>수정</th>
					</tr>
				</thead>
				
				<tr>
					<td colspan="12" align="center">
						<form class="form-inline" action="<%=contextPath%>/list.me" method="get">
							<div class="form-group">
								<select class="form-control" name="mode" id="mode">
									<option value="all">--- 선택하세요 ---------------
									<option value="name">이름
									<option value="gender">성별
								</select>
							</div>
							<div class="form-group">
								<input type="text" class="form-control"
									name="keyword" id="keyword" placeholder="검색 키워드를 넣어 주세요.">
							</div>
							<button class="btn btn-default" onclick="search();">검색</button>
							<button class="btn btn-default" onclick="searchAll();">전체 검색</button>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<p class="form-control-static">
							${requestScope.pageInfo.pagingStatus}
						</p>
						</form>
					</td>
				</tr>
				
				<c:forEach var="bean" items="${requestScope.lists}">
					<tr>
						<td>${bean.me_id}</td>
						<td>
							<a href="<%=NoForm%>detailview.me&id=${bean.me_id}">                     
								${bean.me_id}
							</a>
						</td>
						<td>${bean.me_image}</td>
						<td>${bean.me_catagory}</td>
						<td>
							<c:if test="${bean.id == 'admin'}">
								삭제
							</c:if>
							<c:if test="${bean.id != 'admin'}">
								<a href="<%=NoForm%>delete.me&id=${bean.me_id}">
									삭제
								</a>
							</c:if>
						</td>
						<td>
							<a href="<%=NoForm%>update.meForm&id=${bean.me_id}">
								수정
							</a>
						</td> 
					</tr>
				</c:forEach>				
			</table>
		</div>
		<div align="center">
			<footer>${requestScope.pageInfo.pagingHtml}</footer>	
		</div>		
	</div>
	<script type="text/javascript">
		/* 방금전 선택했던 콤보 박스의 상태를 그대로 보여 주기 */
		$('#mode option').each(function(index){
			//alert($(this).val());
			if ($(this).val() == '${requestScope.mode}') {
				$(this).attr('selected', 'selected');
			}
		});
		/* 방금 넣었던 검색 키워드를 그대로 보여 줘야 합니다. */
		$('#keyword').val('${requestScope.keyword}');
	</script>
</body>
</html>