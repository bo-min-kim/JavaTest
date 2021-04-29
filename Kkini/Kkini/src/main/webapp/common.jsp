<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  

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

<!DOCTYPE html>
<html>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<head>
	<link rel="stylesheet" media="screen" href="<%=contextPath%>/resources/css/home-cc0b8af0c9ad32f34e28c70162caf8a05a5ac4b1756a43825d6ce8cf94693e6a.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<style>
	.navTop{
	  overflow: hidden;
	  position: fixed;
	  top: 0;
	  width: 100%;
	  z-index: 2;
	  padding-bottom: 0px;
	  background-color: transparent;
	  list-style: none;
	  display: inline-block;
	}
	
	.navTop a {
	  float: right;
	  color: #f2f2f2;
	  text-align: center;
	  padding: 14px 16px;
	  text-decoration: none;
	  font-size: 20px;
	  font-family: 궁서체;
	  font-weight: lighter;
	}
	.navTop a:hover {
	  background: #ddd;
	  color: black;
	}
	.main-header{overflow:hidden;position:relative;padding-top:90px;text-align:center;background-position:center;background-size:cover;}
	.pg-main .main-header .title{font-size:3.5em;line-height:70px;color:white;}
	</style>
	<script type="text/javascript">
	$(window).scroll(function(){
		win_scr=$(window).scrollTop();
		if(win_scr>300){
			$(".navTop").css({"background":"white"
				,"box-shadow":"0 2px 16px 0 rgba(0,0,0,0.32)"});
			$(".menuText").css({"color":"#A9A9A9"});
		}else{
			$(".navTop").css({"background":"transparent"
				,"box-shadow":"none"});
			$(".menuText").css({"color":"#f2f2f2"});
		}
	});
	</script>
</head>
<body>

<div class="navTop navbar">
  	<ul>
		<li>
		<c:if test="${whologin == 0}">
			<a href="<%=contextPath%>/login.me" class="menuText">로그인</a>
		</c:if>
		<c:if test="${whologin != 0}">
		  	<a href="<%=contextPath%>/list.me">
			  	<img alt="profile" src="<%=contextPath%>/resources/images/user.png"
			  	width="25" height="25">
		  	</a>
		</c:if>
		</li>
		<li> 
		  <a href="<%=contextPath%>/roadmap.rd" class="menuText">끼니로드</a>
		</li>
		<li> 
		  <a href="<%=contextPath%>/list.cm" class="menuText">우리끼리</a>
		</li>
		<li>  
		  <a href="<%=contextPath%>/list.rw" class="menuText">리뷰보기</a>
	  	</li>
		<li>
		  <a href="<%=contextPath%>/list.me" class="menuText">내끼니</a>
		</li>
  </ul>
</div>

<div class="pg-main">
    <header class="main-header" style="background-color: purple;">
  		<p class="title">솔직한 리뷰, 믿을 수 있는 커뮤니티!</p>
  	<h1 class="title">Kkini</h1>
    <br><br><br><br><br>
	</header>
</div>
<div>

</div>

</body>
</html>