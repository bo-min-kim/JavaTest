<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<meta content=kr name=content-language>
<meta content="IE=Edge" http-equiv="X-UA-Compatible">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="keywords" content="다이닝코드, diningcode">
<meta name="format-detection" content="telephone=no, address=no, email=no" />
<meta http-equiv="Cache-Control"  content="No-Cache">
<meta http-equiv="Pragma" content="No-Cache">
<meta http-equiv="Expire" content="-1">
<meta content="1 Days" name="revisit-after">
<meta content="ALL" name="ROBOTS">
<meta http-equiv="imagetoolbar" content="no">
<link rel="canonical" href="https://www.diningcode.com" />
<link rel="alternate" media="only screen and (max-width: 640px)" href="https://m.diningcode.com">
<title>리뷰 보기</title>

<link rel="stylesheet" type="text/css" href="https://s3-ap-northeast-1.amazonaws.com/dcicons/new/css/web/common.css?1.4.12" />
<link rel="stylesheet" type="text/css" href="https://s3-ap-northeast-1.amazonaws.com/dcicons/new/css/web/content.css?1.4.12" />
<link rel="stylesheet" type="text/css" href="<%=contextPath%>/resources/css/reviewMain.css" />
<link rel="stylesheet" type="text/css" href="https://s3-ap-northeast-1.amazonaws.com/dcicons/new/css/web/styleDefault.css?1.4.12" />
<link rel="stylesheet" type="text/css" href="https://s3-ap-northeast-1.amazonaws.com/dcicons/new/css/web/sub.css?1.4.12" />
<link rel="stylesheet" type="text/css" href="https://s3-ap-northeast-1.amazonaws.com/dcicons/new/css/web/jquery.rateyo.min.css?1.4.12" />
<link rel="stylesheet" type="text/css" href="https://s3-ap-northeast-1.amazonaws.com/dcicons/new/css/swiper.min.css?1.4.12" />
<link rel="stylesheet" type="text/css" href="https://s3-ap-northeast-1.amazonaws.com/dcicons/new/css/custom.css?1.4.12" />

<script type="text/javascript" src="https://s3-ap-northeast-1.amazonaws.com/dcicons/new/lib/js/web.js"></script>

<link rel="shortcut icon" type="image/x-icon" href="/2018/images/web/common/favicon.ico" />

<script src="https://s3-ap-northeast-1.amazonaws.com/dcicons/new/lib/js/jquery-1.12.0.min.js" charset="utf-8"></script>
<script type="Text/JavaScript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script src="https://s3-ap-northeast-1.amazonaws.com/dcicons/new/lib/js/swiper.min.js" charset="utf-8"></script>
<script src="https://s3-ap-northeast-1.amazonaws.com/dcicons/new/lib/js/getAjax.js?1.4.12"></script>
<script src="https://s3-ap-northeast-1.amazonaws.com/dcicons/new/lib/js/function.js?1.4.12"></script>
<script src="https://s3-ap-northeast-1.amazonaws.com/dcicons/new/lib/js/jquery.cookie.js?1.4.12"></script>


<script typ="Text/JavaScript">
// Search cookie
if( $.cookie("dckeyword") ) {
	var keyword	= JSON.parse($.cookie("dckeyword"));
}
else {
	var keyword;
}

// GA
window.dataLayer = window.dataLayer || [];
function gtag(){dataLayer.push(arguments);}
gtag('js', new Date());
gtag('config', 'UA-46679784-1');
</script>
<script data-ad-client="ca-pub-1272248965614830" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<script type="Text/JavaScript" src="https://s3-ap-northeast-1.amazonaws.com/dcicons/new/lib/js/masonry.pkgd.js?1.4.12"></script>
<script type="Text/JavaScript">
setKinesis("dctoday");
var check	= 0;
var device	= "web";
$(document).ready(function () {
	// 좋아요 버튼
	$('[id^=btn_favorites]').click(function(e) {
		var v_rid	= $(this).attr("id").replace("btn_favorites_", "");
		setFavorites("restaurant", v_rid, $(this));
		return false;
	});

	setList(true);

	// 팝업
	if( !$.cookie("dcpopup") ) {
		getAd("ad_main_popup", "popup");
	}

    $.each($(".ctxt"),function(key,data){
        if($(this).outerHeight() < $(this).find('.content-text-area').outerHeight()) {
            $(this).parent().find('.more-btn').show();
        }
    });
});

// 리스트 정렬
function setList(b) {
	if( b == true ) {
		$('.grid').masonry({
			itemSelector: '.item',
			columnWidth: '.grid-sizer',
			percentPosition: true
		});
	}
	else {
		$('.grid').masonry('destroy');
	}
}

// 리뷰 내용 더보기
function getMoreContents(obj) {
	$(obj).parent().toggleClass('short');
	if( $(obj).html() == "더보기" ) {
		$(obj).html("접기");
	}
	else {
		$(obj).html("더보기");
	}
	setList(true);
}


function getReload(m) {
	if( !m ) {
		$('.know_rest').hide();
		var cnt	= ( $('.know_rest').length > 4 ) ? 4 : $('.know_rest').length;
	}
	else {
		var cnt	= ( $('.know_rest').length > m ) ? m : $('.know_rest').length;
	}

	var i = 0;
	while(i < cnt) {
		var rand	= Math.floor(Math.random() * $('.know_rest').length);
		if( $('.know_rest:eq(' + rand + ')').css("display") == "none" ) {
			$('.know_rest:eq(' + rand + ')').show();
			i++;
		}
	}
}
function writeForm(){
	location.href='<%=contextPath%>/insert.rw';
}
function rwDelete(){
	location.href='<%=contextPath%>/delete.rw';
}
function rwUpdate(){
	location.href='<%=contextPath%>/update.rw';
}
</script>
<style type="text/css">
	.listNone{
		list-style: none;
	}
	.etc{
		margin-right: 2%;
	}
	.magazine{
		font-size: 20px;
		background-color: #e6e6eb;
	}
	.magazine span{
		padding: 1% 1%;
	}
	/* /////////////////////////////// 컨텐츠 ///////////////////////////////////*/
	body.main #contents{min-height:auto; padding:20px 0px 50px 0px;}
	body.sub #contents{min-height:auto; padding:20px 0px 50px 0px; overflow:hidden;}
	body.loca #contents{min-height:auto; padding:0px; overflow:hidden; position:relative; background:#fff; border-top:2px solid #e6e6eb;}
	body.gall #contents{min-height:auto; padding:40px 0px 50px 0px;}
	body {overflow:auto;}
	
	#doc {position:relative;overflow:hidden; min-width:1000px; z-index:1;}
	body {overflow-y:visible;overflow-x:hidden;}
	
	
	.div-cont{max-width:940px; margin:0 auto; width:120%;b}
	.div-cont.no-margin{max-width:120%;}
	
	/* list */
	.loca .div-cont{ max-width:120%; width:120%; margin:0;}
	.btn-sympa:hover{
		background-color: #cccccc;
	}
	.btn-appra:hover{
		background-color: #cccccc;
	}
</style>
</head>
<div style='height:60px;'></div><p class="gap20"></p>
<body class="main">
<div id="photo-viewer"></div>
		<!-- s: #container-wrap //-->
		<div id="container-wrap"  class="div-cont" >
			<div id="contents ">
				<!-- // page-start -->
<!-- s: 맛집매거진-->
<div class="m-list magazine" style="width: 120%;">
	<div class="m-list">
		<h2 class="rankMonth" align="center">좋아요 랭킹</h2><br>
							<ul class="listNone" style="position:relative;left:20%;">
								<li> <span class="etc badge">🥇</span><span class="rankList"><a href="#">고네미 막국수</a></span>
									<span style="color:#9999a0;font-weight:normal;font-size:13px;">| 횡성</span>
									Seunggeun Ko (좋아요 5개)
								</li>
								<li> <span class="etc badge">🥈</span><span class="rankList"><a href="#">도미노피자</a></span>
									<span style="color:#9999a0;font-weight:normal;font-size:13px;">| 강북구</span>
									밥쟁이 (좋아요 4개)
								</li>
								<li> <span class="etc badge">🥉</span><span class="rankList"><a href="#">팔선생</a></span>
									<span style="color:#9999a0;font-weight:normal;font-size:13px;">| 상명대</span>
									정직한맥주 (좋아요 3개)
								</li>
								<li> <span class="etc badge">4위</span><span class="rankList"><a href="#">계열사</a></span>
									<span style="color:#9999a0;font-weight:normal;font-size:13px;">| 부암동</span>
									정직한맥주 (좋아요 2개)
								</li>
								<li> <span class="etc badge">5위</span><span class="rankList"><a href="#">부암동돈가스집1979</a></span>
									<span style="color:#9999a0;font-weight:normal;font-size:13px;">| 부암동</span>
									정직한맥주 (좋아요 1개)
								</li>
							</ul>
	</div>
</div>
<p class="gap20"></p><!-- s: 실시간 맛집평가-->
<div class="m-list realtime-appra" style="width: 120%;">
	<p class="btit" style="display: inline-block;">실시간 맛집평가</p>
		<button class="btn btn-default btn-secondary" onclick="writeForm();" style="float: right;position: relative;right:50px;">리뷰작성하기</button>
	<form class="form-inline" role="form" name="myform" action="<%=contextPath%>/list.rw" method="get" style="float: right;margin-right: 5%;">
	<p class="t-search">
		<input type="text" class="form-control btn-xs" name="keyword"
						id="keyword" placeholder="검색 키워드">
		<button class="btn btn-default btn-secondary" type="submit" style="color:#fff;">검색</button>
	</p>
	</form>
	<div class="list grid">
		<div class="grid-sizer"></div>
		<div id="div_review_realtime">
			
			<c:forEach var="bean" items="${requestScope.lists}">
				<div class="item short">
					<div class="img-grade button" onClick="location.href='<%=contextPath%>/detail.rw'">
	                	<div class="img">
	                		<img src="<%=contextPath%>/resources/images/Koala.jpg"/>
	                	</div>
	                    <div class="btns">
	                        <div onclick="rwDelete();" class="btn-appra fr" style="cursor:pointer;">삭제</div>
	                        <div onclick="rwUpdate();" class="btn-appra fr" style="cursor:pointer;margin-right:1px;">수정</div>
	                        <p class="stxt">${bean.rw_writer} (1곳 평가)</p>
	                        <p class="btxt">${bean.rw_name} <span style="color:#9999a0;font-weight:normal;font-size:13px;">| 횡성</span></p>
                        	<p class="" style="height:50;">
		                        <c:forEach begin="1" end="${bean.rw_total}">
                       				<img class="item-grade" alt="" src="<%=contextPath%>/resources/images/colorrice.png" style="width:20px;">
		                        </c:forEach>
                        	</p>
	                    </div>
					</div>
					<div class="grade-list">
						<p class="point">
						맛<img class="item-grade" alt="" src="<%=contextPath%>/resources/images/colorrice.png" style="width:17px;">
		                        ${bean.rw_taste}</p>
						<p class="point">
						가격<img class="item-grade" alt="" src="<%=contextPath%>/resources/images/colorrice.png" style="width:17px;">
		                        ${bean.rw_price }</p>
						<p class="point">
						서비스<img class="item-grade" alt="" src="<%=contextPath%>/resources/images/colorrice.png" style="width:17px;">
		                        ${bean.rw_service }</p>
						<p class="point">
						재방문<img class="item-grade" alt="" src="<%=contextPath%>/resources/images/colorrice.png" style="width:17px;">
		                        ${bean.rw_revisit }</p>
					</div>
					<div class="ctxt">
						<div class="content-text-area">
							${bean.rw_comment}
						</div>
					</div>
	                <div onClick="getMoreContents(this);" class="button more-btn" style="display:none">
	                	더보기
	                </div>
					<p class="img" style="height:130px; overflow:hidden;">
						<img src="<%=contextPath%>/resources/upload/${bean.rw_image}" class="button" style="width:195px; margin-top:-35px;" onClick="getViewer('{|dq|info|dq|:{|dq|rn|dq|:|dq|\uace0\ub124\ubbf8 \ub9c9\uad6d\uc218|dq|,|dq|count|dq|:3,|dq|photo|dq|:|dq|https:\/\/s3-ap-northeast-1.amazonaws.com\/dcusers\/profile\/14838\/11413\/14838_11413_1457268850_3411_56dc287253501.jpg|dq|,|dq|name|dq|:|dq|Seunggeun Ko (1\uacf3 \ud3c9\uac00)|dq|,|dq|date|dq|:|dq|6\ubd84 \uc804|dq|},|dq|image|dq|:[|dq|https:\/\/s3-ap-northeast-1.amazonaws.com\/dcreviewsresized\/pre_20210223052832_photo03_RFFDyoefcYdi.jpg|dq|,|dq|https:\/\/s3-ap-northeast-1.amazonaws.com\/dcreviewsresized\/pre_20210223052833_photo02_RFFDyoefcYdi.jpg|dq|,|dq|https:\/\/s3-ap-northeast-1.amazonaws.com\/dcreviewsresized\/pre_20210223052833_photo01_RFFDyoefcYdi.jpg|dq|]}');" />
					</p>
					<div class="tags" style="font-size: 1em;">
						<span>${bean.rw_menu}</span>
                    	<span class='tag'>한식</span>                
                    </div> <!-- keyword :: end -->
					<div class="btns">
						<div onClick="if(confirm('로그인이 필요합니다.\n로그인 하시겠습니까?')) { location.href='/my.php?login'; }" class="btn-sympa fl" style="cursor:pointer;" value="N">가볼래요(${bean.rw_want})</div>
						<div onClick="if(confirm('로그인이 필요합니다.\n로그인 하시겠습니까?')) { location.href='/my.php?login'; }" class="btn-appra fr" style="cursor:pointer;">가봤어유(${bean.rw_went})</div>
					</div>
				</div>
			</c:forEach>
		</div>			
	</div>
</div>
<div style='height:60px;'></div><p class="gap20"></p>

				
<div align="center">
			<footer>${requestScope.pagingHtml}</footer>			
</div>

</body>
</html>
