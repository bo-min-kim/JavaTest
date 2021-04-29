<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>
<%
	int myoffset = 2;
	int mywidth = twelve - 2 * myoffset;
	int formleft = 3;
	int formright = twelve - formleft;
	int mysearch = 2;
	//int label = 3 ; //양식의 왼쪽에 보여지는 라벨의 너비 
	//int content = twelve - label ; //우측의 내용 입력(input, select, textarea)의 너비
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
		button {
		  background-color: #fed136;
		  color: white;
		  padding: 14px 20px;
		  margin: 8px 0;
		  border: none;
		  cursor: pointer;
		  width: 15%;
		}
		button:hover {
		  opacity: 0.8;
		}
		thead{
			background-color: #6c757d;
			color: #fff;
		}
		.contentspace{
			padding: 20px 20px 50px 20px;
		}
	</style>
</head>
<body>
	<br><br><br>
	<br><br><br>
	<div class="container col-sm-offset-<%=myoffset%> col-sm-<%=mywidth%>">
		<div class="panel panel-default panel-primary">
			<table class="table">
				<thead>
					<tr>
						<th width="60%">전화번호</th>
						<th width="10%">작성자</th>
						<th width="12%">작성 이유</th>
					</tr>
				</thead>
					<tr>
						<td>
							${bean.phone}
						</td>
						<td>
							${bean.name}
						</td>
						<td>
							${bean.reason}
						</td>
					</tr>
					<tr>
						<td colspan="4">
							<p class="contentspace">${bean.content}</p>
						</td>
				 	</tr>
				 	<tr>
				 		<td>이전글</td>
				 		<td colspan="3"><a></a></td>
				 	</tr>
				 	<tr>
				 		<td>다음글</td>
				 		<td colspan="3"><a></a></td>
				 	</tr>
				 	<tr>
				 		<td>
					 		<button class="btn btn-default btn-warning" onclick="gotoBack();">목록</button>
				 		</td>
				 	</tr>
			</table>
		</div>
	</div>
<script>
function gotoBack(){
	location.href='<%=NoForm%>cuCustormerCheck&${requestScope.parameters}';
}
</script>
</body>
</html>