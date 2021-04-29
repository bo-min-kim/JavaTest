<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp" %>
<!DOCTYPE>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<title>Insert title here</title>
	 <style>
	 #test_btn1{ 
      border-top-left-radius: 5px; 
      border-bottom-left-radius: 5px;
       border-bottom-right-radius: 5px; 
      border-top-right-radius: 5px;
      float:left;
        }
        #btn_group button:hover{ color:white; background-color: purple; }

      #btn_group button{ border: 1px solid black; background-color: rgba(0,0,0,0); color: black; padding: 5px; }
      
      btn_group{
      margin-top:30px;
      }
     .err{
     	color: red;
     }
     .rw-left{
     	float: left;
     	padding-top: 10px;
     }
     .rw-right{
     	float: right;
     }
     .rw-radio{
     	margin-left: 60px;
     }
     .form-group{
     	margin-bottom: 40px;
     }
     img{
     	position: relative;
     	bottom: 4px;
     }
     .rw-radioGroup{
     	position: relative;
     	right: 80px;
     }
     .top-blank{
     	margin-top: 80px;
     }
    </style>
  </head>
<body>
<div class="container col-sm-offset-2 col-sm-8">
		<div class="panel panel-default panel-secondary">
			<div class="panel-heading">
            	<h2 class="text-center top-blank">리뷰 작성하기</h2><br><br>
			</div>
			<div class="panel-body">
				<c:set var="apppath" value="<%=request.getContextPath()%>" />
                     
                    <form:form modelAttribute="review" class="form-horizontal" role="form" action="${apppath}/insert.rw" 
                    	method="post" enctype="multipart/form-data">
                    	<input type="hidden" name="rw_writer" id="rw_writer"
						value="${sessionScope.loginfo.me_id}" />
                    <div class="form-group">
						<div class="col-sm-2 rw-left">
							<label class="control-label" for="rw_name">
								식당 이름
							</label>
						</div>
	                   	<div class="col-sm-9 rw-right">
		                   	<form:input path="rw_name" type="text" class="form-control" name="rw_name"
							id="rw_name" placeholder="식당 이름" value="${rw_name}"/> 
							<form:errors cssClass="err" path="rw_name"/> 
	                   	</div>
                 	</div>
                    
                    <br><br><br>
                    
                    <div class="form-group">
						<div class="col-sm-2 rw-left">
							<label class="control-label" for="rw_menu">
								먹은 메뉴
							</label>
						</div>
	                   	<div class="col-sm-9 rw-right">
		                   	<form:input path="rw_menu" type="text" class="form-control" name="rw_menu"
							id="rw_name" placeholder="먹은 메뉴" value="${rw_menu}"/> 
							<form:errors cssClass="err" path="rw_menu"/> 
	                   	</div>
                 	</div>
                 	
                 	<br><br><br>
                 	
                 	<div class="form-group">
						<div class="col-sm-2 rw-left">
							<label class="control-label" for="multi">
								먹은 메뉴
							</label>
						</div>
						<div class="col-sm-9 rw-right">
							<input type="file" class="form-control" id="multi" name="multi"
								placeholder="이미지를 넣어 주셔용^^">
							<form:errors cssClass="err" path="rw_image" />							
						</div>
					</div>
                 	
                 	<c:set var="radioName" value="rw_taste" />
                 	<br><br><br>
                 	
                    <div class="form-group">
						<div class="col-sm-2 rw-left">
							<label class="control-label" for="${radioName}">
								맛
							</label>
						</div>
	                   	<div class="col-sm-9 rw-right rw-radioGroup">
		                   	<input class="rw-radio" type="radio" id="${radioName}" name="${radioName}" value="1">
		                   	<img class="item-grade" alt="" src="<%=contextPath%>/resources/images/colorrice.png" style="width:17px;">
			                <input class="rw-radio" type="radio" id="${radioName}" name="${radioName}" value="2">
		                   	<c:forEach begin="1" end="2">
			                   	<img class="item-grade" alt="" src="<%=contextPath%>/resources/images/colorrice.png" style="width:17px;">
			                </c:forEach>
			                <input class="rw-radio" type="radio" id="${radioName}" name="${radioName}" value="3">
		                   	<c:forEach begin="1" end="3">
			                   	<img class="item-grade" alt="" src="<%=contextPath%>/resources/images/colorrice.png" style="width:17px;">
			                </c:forEach>
			                <input class="rw-radio" type="radio" id="${radioName}" name="${radioName}" value="4">
		                   	<c:forEach begin="1" end="4">
			                   	<img class="item-grade" alt="" src="<%=contextPath%>/resources/images/colorrice.png" style="width:17px;">
			                </c:forEach>
			                <input class="rw-radio" type="radio" id="${radioName}" name="${radioName}" value="5">
		                   	<c:forEach begin="1" end="5">
			                   	<img class="item-grade" alt="" src="<%=contextPath%>/resources/images/colorrice.png" style="width:17px;">
			                </c:forEach>
							<form:errors path="${radioName}" cssClass="err"/>
	                   	</div>
                 	</div>
	                
                 	<c:set var="radioName" value="rw_price" />
                 	<br><br>
                 	
                    <div class="form-group">
						<div class="col-sm-2 rw-left">
							<label class="control-label" for="${radioName}">
								가격
							</label>
						</div>
	                   	<div class="col-sm-9 rw-right rw-radioGroup">
		                   	<input class="rw-radio" type="radio" id="${radioName}" name="${radioName}" value="1">
		                   	<img class="item-grade" alt="" src="<%=contextPath%>/resources/images/colorrice.png" style="width:17px;">
			                <input class="rw-radio" type="radio" id="${radioName}" name="${radioName}" value="2">
		                   	<c:forEach begin="1" end="2">
			                   	<img class="item-grade" alt="" src="<%=contextPath%>/resources/images/colorrice.png" style="width:17px;">
			                </c:forEach>
			                <input class="rw-radio" type="radio" id="${radioName}" name="${radioName}" value="3">
		                   	<c:forEach begin="1" end="3">
			                   	<img class="item-grade" alt="" src="<%=contextPath%>/resources/images/colorrice.png" style="width:17px;">
			                </c:forEach>
			                <input class="rw-radio" type="radio" id="${radioName}" name="${radioName}" value="4">
		                   	<c:forEach begin="1" end="4">
			                   	<img class="item-grade" alt="" src="<%=contextPath%>/resources/images/colorrice.png" style="width:17px;">
			                </c:forEach>
			                <input class="rw-radio" type="radio" id="${radioName}" name="${radioName}" value="5">
		                   	<c:forEach begin="1" end="5">
			                   	<img class="item-grade" alt="" src="<%=contextPath%>/resources/images/colorrice.png" style="width:17px;">
			                </c:forEach>
							<form:errors path="${radioName}" cssClass="err"/>
	                   	</div>
                 	</div>
	                
                 	<c:set var="radioName" value="rw_service" />
                 	<br><br>
                 	
                    <div class="form-group">
						<div class="col-sm-2 rw-left">
							<label class="control-label" for="${radioName}">
								서비스
							</label>
						</div>
	                   	<div class="col-sm-9 rw-right rw-radioGroup">
		                   	<input class="rw-radio" type="radio" id="${radioName}" name="${radioName}" value="1">
		                   	<img class="item-grade" alt="" src="<%=contextPath%>/resources/images/colorrice.png" style="width:17px;">
			                <input class="rw-radio" type="radio" id="${radioName}" name="${radioName}" value="2">
		                   	<c:forEach begin="1" end="2">
			                   	<img class="item-grade" alt="" src="<%=contextPath%>/resources/images/colorrice.png" style="width:17px;">
			                </c:forEach>
			                <input class="rw-radio" type="radio" id="${radioName}" name="${radioName}" value="3">
		                   	<c:forEach begin="1" end="3">
			                   	<img class="item-grade" alt="" src="<%=contextPath%>/resources/images/colorrice.png" style="width:17px;">
			                </c:forEach>
			                <input class="rw-radio" type="radio" id="${radioName}" name="${radioName}" value="4">
		                   	<c:forEach begin="1" end="4">
			                   	<img class="item-grade" alt="" src="<%=contextPath%>/resources/images/colorrice.png" style="width:17px;">
			                </c:forEach>
			                <input class="rw-radio" type="radio" id="${radioName}" name="${radioName}" value="5">
		                   	<c:forEach begin="1" end="5">
			                   	<img class="item-grade" alt="" src="<%=contextPath%>/resources/images/colorrice.png" style="width:17px;">
			                </c:forEach>
							<form:errors path="${radioName}" cssClass="err"/>
	                   	</div>
                 	</div>
                 	
                 	
                 	<c:set var="radioName" value="rw_revisit" />
                 	<br><br>
                 	
                    <div class="form-group">
						<div class="col-sm-2 rw-left">
							<label class="control-label" for="${radioName}">
								재방문 의사
							</label>
						</div>
	                   	<div class="col-sm-9 rw-right rw-radioGroup">
		                   	<input class="rw-radio" type="radio" id="${radioName}" name="${radioName}" value="1">
		                   	<img class="item-grade" alt="" src="<%=contextPath%>/resources/images/colorrice.png" style="width:17px;">
			                <input class="rw-radio" type="radio" id="${radioName}" name="${radioName}" value="2">
		                   	<c:forEach begin="1" end="2">
			                   	<img class="item-grade" alt="" src="<%=contextPath%>/resources/images/colorrice.png" style="width:17px;">
			                </c:forEach>
			                <input class="rw-radio" type="radio" id="${radioName}" name="${radioName}" value="3">
		                   	<c:forEach begin="1" end="3">
			                   	<img class="item-grade" alt="" src="<%=contextPath%>/resources/images/colorrice.png" style="width:17px;">
			                </c:forEach>
			                <input class="rw-radio" type="radio" id="${radioName}" name="${radioName}" value="4">
		                   	<c:forEach begin="1" end="4">
			                   	<img class="item-grade" alt="" src="<%=contextPath%>/resources/images/colorrice.png" style="width:17px;">
			                </c:forEach>
			                <input class="rw-radio" type="radio" id="${radioName}" name="${radioName}" value="5">
		                   	<c:forEach begin="1" end="5">
			                   	<img class="item-grade" alt="" src="<%=contextPath%>/resources/images/colorrice.png" style="width:17px;">
			                </c:forEach>
							<form:errors path="${radioName}" cssClass="err"/>
	                   	</div>
                 	</div>
                 	 
                 	 <c:set var="radioName" value="rw_total" />
                 	<br><br>
                 	
                    <div class="form-group">
						<div class="col-sm-2 rw-left">
							<label class="control-label" for="${radioName}">
								총점
							</label>
						</div>
	                   	<div class="col-sm-9 rw-right rw-radioGroup">
		                   	<input class="rw-radio" type="radio" id="${radioName}" name="${radioName}" value="1">
		                   	<img class="item-grade" alt="" src="<%=contextPath%>/resources/images/colorrice.png" style="width:17px;">
			                <input class="rw-radio" type="radio" id="${radioName}" name="${radioName}" value="2">
		                   	<c:forEach begin="1" end="2">
			                   	<img class="item-grade" alt="" src="<%=contextPath%>/resources/images/colorrice.png" style="width:17px;">
			                </c:forEach>
			                <input class="rw-radio" type="radio" id="${radioName}" name="${radioName}" value="3">
		                   	<c:forEach begin="1" end="3">
			                   	<img class="item-grade" alt="" src="<%=contextPath%>/resources/images/colorrice.png" style="width:17px;">
			                </c:forEach>
			                <input class="rw-radio" type="radio" id="${radioName}" name="${radioName}" value="4">
		                   	<c:forEach begin="1" end="4">
			                   	<img class="item-grade" alt="" src="<%=contextPath%>/resources/images/colorrice.png" style="width:17px;">
			                </c:forEach>
			                <input class="rw-radio" type="radio" id="${radioName}" name="${radioName}" value="5">
		                   	<c:forEach begin="1" end="5">
			                   	<img class="item-grade" alt="" src="<%=contextPath%>/resources/images/colorrice.png" style="width:17px;">
			                </c:forEach>
							<form:errors path="${radioName}" cssClass="err"/>
	                   	</div>
                 	</div>
	                이미지 카테고리 코멘트 주소
	                    
	                    <div id="btn_group" style="margin-left:350px;margin-bottom:40px;"> 
							<button type="submit" id="test_btn1"  class="btn btn-warning">완 료</button>
						</div>
                </form:form>   
                     
                </div>
        </div>
    </div>
</div> 
 
  </body>
</html>
