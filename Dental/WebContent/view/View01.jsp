<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common/header.jsp"%>
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
<style>
#pre{
	margin-top: 150px;]
}
</style>
</head>
<body>
	<div id="pre" class="container col-sm-offset-<%=myoffset%> col-sm-<%=mywidth%>">
		<div class="panel panel-default panel-warning">
			<div class="panel-heading"><h4>회원과 게시물 조인</h4></div><br>
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>이름</th>
						<th>글 제목</th>
						<th>글 내용</th>
						<th>작성 일자</th>
					</tr>
				</thead>
				<c:forEach var="bean" items="${requestScope.lists}">
					<tr>
						<td>${bean.name}</td>
						<td>${bean.title}</td>
						<td>${bean.content}</td>
						<td>${bean.regdate}</td>
					</tr>
				</c:forEach>				
			</table>
		</div>
		<div align="center">
			<footer>${requestScope.pagingHtml}</footer>	
		</div>		
	</div>
</body>
</html>