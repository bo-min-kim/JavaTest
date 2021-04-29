<%@page import="mypkg.dao.BoardDao"%>
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
	<title>고객의소리 현황</title>
	<style type="text/css">
		.xxx {
			margin-left: 0px;
		}
		.re{font-size: 11px;}
		.dark{color: #343a40;}
		.gray{color: #6c757d;}
		thead{
			background-color: #6c757d;
			color: #fff;
		}
		.table1{
			width: 70%;
		}
		.cusMargin{
			margin-left: 18%;
		}
	</style>
	<script type="text/javascript">
		function search(){
			if( $('#mode').val() == 'all' ){ // val() : value속성 읽기
				alert('검색 목록을 선택해주세요') ;
				//$('#mode').focus();
			}else{
				//alert('하하') ;
			}
			//alert( $('#mode').val() );
		}
	</script>	
</head>
<body>
	<br><br><br>
	<br><br><br>
	<div class="container col-sm-offset-<%=myoffset%> col-sm-<%=mywidth%>">
		<div class="panel panel-default panel-primary cusMargin">
			<div class="panel-heading">
				<h2 class="section-heading text-uppercase">고객의소리 현황</h2>
			</div>
			<table class="table table-hover table1">
				<thead>
					<tr>
						<th width="20%">전화번호</th>
						<th width="10%">작성자</th>
						<th width="12%">작성 이유</th>
					</tr>
				</thead>
				<tr>
					<td colspan="8" align="center">
						<form class="form-inline" role="form" name="myform" action="<%=YesForm%>" method="get">
							<input type="hidden" name="command" value="cuCustormerCheck">
							<div class="form-group">
								<select class="form-control" name="mode" id="mode">
									<option value="all" selected="selected">-- 선택하세요---------
									<option value="name" >작성자
									<option value="phone" >전화번호									
									<option value="content" >글 내용									
									<option value="reason" >이유
								</select>
							</div>
							<div class="form-group">
								<input type="text" class="form-control btn-xs" name="keyword"
									id="keyword" placeholder="검색 키워드">
							</div>
							<button class="btn btn-default btn-warning" type="submit" onclick="search();">검색</button>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</form>
					</td>
				</tr>				
			<c:forEach var="bean" items="${requestScope.lists}">
				<tr>
					<td>
						<a class="dark" href="<%=NoForm%>cuDetailView&no=${bean.no}&${requestScope.parameters}">
						${bean.phone}
						</a>
					</td>
					<td>
						<p class="dark">${bean.name}</p>
					</td>
					<td>
						<p class="dark">${bean.reason}</p>
					</td>

				</tr>				
			</c:forEach>
		</table>
		</div>
			<footer class="cusMargin">${requestScope.pagingHtml}</footer>			
	</div>
	<br><br><br><br>
	<script type="text/javascript">
	   /* 방금 전 선택한 콤보 박스를 그대로 보여 주기 */ 
		$('#mode option').each(function (index){
			if( $(this).val() == '${requestScope.mode}' ){
				$(this).attr('selected', 'selected') ;
			}
		});	
		/* 이전에 넣었던 값 그대로 보존 */
		$('#keyword').val( '${requestScope.keyword}' ) ;		
	</script>
</body>
</html>