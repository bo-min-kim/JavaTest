<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- whologin 변수는 로그인 상태를 저장하고 있는 변수입니다. -->
<c:set var="whologin" value="0" />
<c:if test="${empty sessionScope.loginfo}">
	<!-- 로그인 하지 않은 경우 -->
	<c:set var="whologin" value="0" />
</c:if>
<c:if test="${not empty sessionScope.loginfo}">
	<c:if test="${sessionScope.loginfo.me_id == 'admin'}">
		<!-- 관리자로 로그인한 경우 -->
		<c:set var="whologin" value="2" />
	</c:if>
	<c:if test="${sessionScope.loginfo.me_id != 'admin'}">
		<!-- 일반 사용자로 로그인한 경우 -->
		<c:set var="whologin" value="1" />
	</c:if>
</c:if>

<!-- 부트 스트랩 -->
<% int twelve = 12 ; %>
<c:set var="twelve" value="12" />
<%!
	String YesForm = null ;
	String NoForm = null ;
%>
<%
	String contextPath = request.getContextPath() ;
%>
<%	
	// 파일 업로드 관련
	String myurl = request.getRequestURL().toString() ;
	String uri = request.getRequestURI() ;
	int idx = myurl.indexOf( uri ) ;	
	//웹서버에 올릴 이미지의 저장 경로 
	String uploadPath = "/upload" ;//개발자가 임의 지정 가능
	String uploadedFolder 
		= myurl.substring(0, idx) + contextPath + uploadPath ;	
	String realPath = application.getRealPath( uploadPath ) ;
%>
<%
	/* out.print( "YesForm : " + YesForm + "<br>") ;
	out.print( "NoForm : " + NoForm + "<br>") ;
	out.print( "myurl : " + myurl + "<br>") ;
	out.print( "uploadedFolder : " + uploadedFolder + "<br>") ;
	out.print( "realPath : " + realPath + "<br>") ; */ 
%>
<%!
	String MakeCommand(String ... args){
		if( args.length == 0 ){
			return YesForm  ;
		}else if( args.length == 1 ){
			return YesForm + "?command=" + args[0]   ;	
		}else{
			String imsi = args[1] ;
			return YesForm + "?command=" + args[0] + "&" + imsi  ;
		}
	}
%>

<c:set var="contextPath" value="<%=contextPath%>" scope="application"/> 

<!DOCTYPE>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
	body{
	text-align:center;
	font-family:궁서체;
}
	a { text-decoration:none ;
	color: black
	 } 
	a:hover {
	text-decoration:none ;
	color:white;
	background-color:purple;
	}	
	.kkinni{
		color:black;
        width: 80px;
        height: 50px;
        background-color:#F5F5F7;
        display: inline-block; /*이부분에 성질을 inline-block로 바꿔줘서 가로배치를 해줬다.*/
        font-size:20px;
        margin-top:70px;
        padding-top:28px;
        margin-right:30px;
        border-top-left-radius: 75px; 
    	border-bottom-left-radius: 75px;
    	border-bottom-right-radius: 75px; 
     	border-top-right-radius: 75px;
		}
	#test_btn1{ 
     	border-top-left-radius: 5px; 
    	 border-bottom-left-radius: 5px;
    	 border-bottom-right-radius: 5px; 
     	border-top-right-radius: 5px;
       }
	
	 #btn_group button:hover{
	 color:black; background-color: rgba(0,0,0,0); 
	 }
	 
     #btn_group button{ 
    	 border: 1px solid black; 
   		 background-color:purple ;
   	   	 color: white; padding: 5px;  
    	 width: 7%;font-size:20px;
    	 height: 35px;
    	 }
      
      btn_group{
      margin-top:30px;
      }
	</style>
	
</head>
<body>
      <form role="form" action="<%=contextPath%>/login.me" method="post">
    <div style="font-size:80px;margin-bottom:25px;margin-top:250px;color:purple;">끼니 </div>
     <div class="box1">
  <div class="container-1">
      <span class="icon"><i class="fa fa-search"></i></span>
      <input type="text" id="me_id" name="me_id" placeholder="     ID " style="width:500px;height:50px; border-radius:30px;"/><br>
      	<span class="err">${errme_id}</span>
	 <input type="password" id="me_password" name="me_password" placeholder="      PASSWORD " style="width:500px;height:50px; border-radius:30px;margin-top:3px;"/>
  	<span class="err">${errme_password}</span>
  </div>
</div>
<div id="btn_group" style="margin-top:50px;margin-bottom:30px;"> 
<button id="test_btn1" type="submit">로그인</button><br></div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="kkinni"><a href="<%=contextPath%>/list.cm">우리끼니 </a></div>
<div class="kkinni"><a href="<%=contextPath%>/list.rw">리뷰보기 </a></div>
<div class="kkinni"><a href="<%=contextPath%>/roadmap.rd">끼니로드 </a></div>
<div class="kkinni"><a href="<%=contextPath%>/Insert.me">회원가입</a></div>
</form>
</body>
</html>
