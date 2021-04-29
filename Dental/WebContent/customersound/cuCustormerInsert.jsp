<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common/header.jsp"%>
<%
	int myoffset = 2;
	int mywidth = twelve - 2 * myoffset;
	int formleft = 3;
	int formright = twelve - formleft;
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>BootStrap Sample</title>
	<style type="text/css">
	hr{
		background-color: #495057;
		color: #495057;
		display: block;
		margin-top: 0.5em;
		margin-bottom: 0.5em;
	 	margin-left: 0px;
		margin-right: auto;
		border-style: inset;
		border-width: 1.5px;
		width: 80%;
	}
	.err{
		color: #dc3545;
	}
	</style>
</head>
<body>
	<br><br><br>
	<br><br><br>
	<div class="container col-sm-offset-<%=myoffset%> col-sm-<%=mywidth%>">
		<div class="panel panel-default panel-primary">
			<div class="panel-heading">
				<h4>고객의 소리</h4>
			<hr>
			</div>
			<br>
				
			<div class="panel-body">
				<form class="form-horizontal" role="form" action="<%=YesForm%>"
					method="post">
					<input type="hidden" name="command" value="cuCustormerInsert">
					<div class="form-group">
						<label class="control-label col-sm-<%=formleft%>" for="name">이름</label>
						<div class="col-sm-<%=formright%>">
							<input type="text" class="form-control" name="name"
								id="name" placeholder="성함이나 아이디를 작성해주세요." value="${bean.name}"> 
							<span class="err">${errname}</span>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-<%=formleft%>" for="phone">전화번호
							</label>
						<div class="col-sm-<%=formright%>">
							<input type="text" class="form-control" name="phone"
								id="phone" placeholder="-를 빼고 작성해주세요." value="${bean.phone}">
								<span class="err">${errphone}</span>
						</div>
					</div>
					<div class="form-group">
						<div class="col-xs-<%=formright%> col-lg-<%=formright%>"
							align="left">
							<label class="radio-inline"> <input type="radio"
								name="reason" id="reason1" value="칭찬합니다">칭찬합니다
							</label> &nbsp;&nbsp;<label class="radio-inline"> <input
								type="radio" name="reason" id="reason2" value="보통이에요">보통이에요								
							</label>&nbsp;&nbsp;<label class="radio-inline"> <input
								type="radio" name="reason" id="reason3" value="불편합니다">불편합니다
							</label> <span class="form-control-static err">${errreason}</span>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-<%=formleft%>" for="content">내용</label>
						<div class="col-sm-<%=formright%>">
							<textarea name="content" id="content" rows="5" cols=""
								placeholder="개선해야할 점이나 불편했던 점을 작성해주세요." class="form-control">${bean.content}</textarea>
							<span class="err">${errcontent}</span>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-3 col-sm-6">
							<button class="btn btn-primary" type="submit">작성 완료</button>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<button class="btn btn-primary" type="button" onclick="gotoBack();">취소</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
<script>
	function gotoBack(){
		location.href='<%=NoForm%>main&${requestScope.parameters}';
	}
</script>
</body>
</html>