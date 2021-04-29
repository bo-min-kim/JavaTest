<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./../common/common.jsp" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="euc-kr" />
<meta name="title" content="끼니 : 나만의 맛집 리뷰" />
<meta name="description" content="나만의 맛집을 편리하게 관리하세요" />
<meta property="og:title" content="끼니 : 나만의 맛집 리뷰" />
<meta property="og:description" content="나만의 맛집을 편리하게 관리하세요" />
<meta property="og:image" content="https://res.kurly.com/images/marketkurly/logo/logo_sns_marketkurly.jpg" />
<meta property="og:url" content="https://www.kurly.com/shop/board/view.php?id=notice&no=835" />
<meta property="og:type" content="website" />
<meta property="og:site_name" content="www.kurly.com" />
<meta name="keywords" content="나만의 맛집 리뷰, 추천할끼니, 함께할 끼니 커뮤니티를 만나보세요!" />
<title>끼니 : 나만의 맛집 리뷰</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
<meta name="naver-site-verification" content="58ff7c242d41178131208256bfec0c2f93426a1d" />
<meta name="facebook-domain-verification" content="tyur3wmoos7t63tpkb7zosur6p98m1" />
<script src="https://www.kurly.com/asset/js/common.bundle.js?ver=1.26.12"></script>
<script type="text/javascript" src="https://res.kurly.com/js/lib/jquery-1.10.2.min.js"></script>
<script type="text/javascript">
history.back = function() {
    var step = (document.location.protocol == 'https:' ? 2 : 1) * -1;
    history.go( step );
}
</script>
<link rel="shortcut icon" href="https://res.kurly.com/images/marketkurly/logo/favicon_v2.png" type="image/x-icon">
<link rel="apple-touch-icon" sizes="57x57" href="https://res.kurly.com/images/marketkurly/logo/ico_57.png">
<link rel="apple-touch-icon" sizes="60x60" href="https://res.kurly.com/images/marketkurly/logo/ico_60.png">
<link rel="apple-touch-icon" sizes="72x72" href="https://res.kurly.com/images/marketkurly/logo/ico_72.png">
<link rel="apple-touch-icon" sizes="76x76" href="https://res.kurly.com/images/marketkurly/logo/ico_76.png">
<link rel="apple-touch-icon" sizes="114x114" href="https://res.kurly.com/images/marketkurly/logo/ico_114.png">
<link rel="apple-touch-icon" sizes="120x120" href="https://res.kurly.com/images/marketkurly/logo/ico_120.png">
<link rel="apple-touch-icon" sizes="144x144" href="https://res.kurly.com/images/marketkurly/logo/ico_144.png">
<link rel="apple-touch-icon" sizes="152x152" href="https://res.kurly.com/images/marketkurly/logo/ico_152.png">
<link rel="apple-touch-icon" sizes="180x180" href="https://res.kurly.com/images/marketkurly/logo/ico_180.png">
<link rel="icon" type="image/png" sizes="32x32" href="https://res.kurly.com/images/marketkurly/logo/ico_32.png">
<link rel="icon" type="image/png" sizes="192x192" href="https://res.kurly.com/images/marketkurly/logo/ico_192.png">
<link rel="icon" type="image/png" sizes="16x16" href="https://res.kurly.com/images/marketkurly/logo/ico_16.png">
<script>
sessionStorage.setItem('user_no', '7411782')
sessionStorage.setItem('apiDomainV2', '')

var jwtToken = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjYXJ0X2lkIjoiODM0MDA4ZmUtZWFmZi00ODRjLWI4MzQtM2FjZTlmNGNmZjJjIiwiaXNfZ3Vlc3QiOmZhbHNlLCJ1dWlkIjoiODM0NGEyNjktYTNmMS01ZmE4LThlZTMtM2RlOWEyNjBmOTRmIiwibV9ubyI6NzQxMTc4MiwibV9pZCI6ImtxaGFscyIsImxldmVsIjoyMCwic3ViIjoiODM0NGEyNjktYTNmMS01ZmE4LThlZTMtM2RlOWEyNjBmOTRmIiwiaXNzIjoiaHR0cDovL21rd2ViLmFwaS5rdXJseS5zZXJ2aWNlcy92My9hdXRoL2xvZ2luIiwiaWF0IjoxNjE0NzYxNjE5LCJleHAiOjE2MTQ3NjUyMTksIm5iZiI6MTYxNDc2MTYxOSwianRpIjoiOFBQM0Y2QXd1ZXR1U0I5RSJ9.X1pkHS88TcS132tKDbYvKzjg8BKZm48HpBnIhxUkGvc';
var apiDomain = 'https://api.kurly.com';
var GD_ISMEMBER = !!Number('1');
var checkIsApp = true;// 해당스크립트관련으로 앱체크공용변수추가 생성.앱에서 불필요한 호출제거
</script>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js?ver=1.26.12"></script>
<script src="https://res.kurly.com/shop/data/skin/designgj/thefarmers.js?ver=1.26.12"></script>
<script src="https://res.kurly.com/shop/data/skin/designgj/common.js?ver=1.26.12"></script>
<script src="https://res.kurly.com/shop/data/skin/designgj/polify.js?ver=1.26.12"></script>
<script src="https://res.kurly.com/shop/data/skin/designgj/ui_v2.js?ver=1.26.12"></script>

<script src="https://res.kurly.com/js/vue/xdomain.min.js" slave="https://api.kurly.com/xdomain?ver=1"></script>

<script src="https://res.kurly.com/js/vue/es6-promise.min.js"></script>
<script src="https://res.kurly.com/js/vue/es6-promise.auto.min.js"></script>

<script type="text/javascript" src="https://res.kurly.com/js/vue/axios.min.js"></script>


<script src="https://res.kurly.com/js/vue/vue.min.js"></script>
<script src="https://www.kurly.com/common_js/axios.js?ver=1.26.12"></script>
<link rel="styleSheet" href="https://www.kurly.com/shop/data/skin/designgj/normalize.css?ver=1.26.12">
<link rel="styleSheet" href="https://www.kurly.com/shop/data/skin/designgj/section1.css?ver=1.26.12">
<link rel="styleSheet" href="https://www.kurly.com/shop/data/skin/designgj/common.css?ver=1.26.12">

<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script type="text/javascript" src="https://www.kurly.com/shop/lib/js/naverCommonInflowScript.js?Path=board/view.php&amp;Referer=&amp;AccountID=s_4f41b5625072&amp;Inflow=" id="naver-common-inflow-script"></script>


<script async src="https://www.googletagmanager.com/gtag/js?id=G-2K2GN0FFY0"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-2K2GN0FFY0', {
    'user_id' : '834008fe-eaff-484c-b834-3ace9f4cff2c'
  });
</script>

<style>.async-hide { opacity: 0 !important} </style>
<script type="text/javascript">
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

ga('create', 'UA-90734988-1', 'auto');//'UA-90734988-1'
<!-- KM-201 장차석 : 구글 옵티마이즈&태그 메니저 -->
<!-- End KM-201 장차석 : 구글 옵티마이즈&태그 메니저 -->

var uuidCheck = "8344a269-a3f1-5fa8-8ee3-3de9a260f94f";
var cookie_uuid = null;

function setCookieGa(cookieName, value){
	var exdays = 365;
	var exdate = new Date();
	exdate.setDate(exdate.getDate() + exdays);
	var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
	document.cookie = cookieName + "=" + cookieValue +"; path=/;"
}

function getCookieGa(cookieName) {
	cookieName = cookieName + '=';
	var cookieData = document.cookie;
	var start = cookieData.indexOf(cookieName);
	var cookieValue = '';
	if(start != -1){
		start += cookieName.length;
		var end = cookieData.indexOf(';', start);
		if(end == -1)end = cookieData.length;
		cookieValue = cookieData.substring(start, end);
	}
	return unescape(cookieValue);
}

function deleteCookieGa(cookieName){
	var expireDate = new Date();
	//어제 날짜를 쿠키 소멸 날짜로 설정한다.
	expireDate.setDate( expireDate.getDate() - 1 );
	document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString() + "; path=/";
}


/* 로그인 */
if(uuidCheck !== "") {
	if( !getCookieGa('ga_uuid') ){
		setCookieGa('ga_uuid', uuidCheck);
	}else{
		if( getCookieGa('ga_uuid') !== uuidCheck){
			deleteCookieGa('ga_uuid');
			setCookieGa('ga_uuid', uuidCheck); /* 로그인 사용자쿠키 추가 */
		}
	}
	ga('set', 'userId', uuidCheck);
	ga('send', 'pageview',{'dimension1':  uuidCheck});
}else{
	ga('send', 'pageview');
}

//edge browser correspondence
var disableSelection = true;
$(function(){
    $('input, textarea').on('focus', function(){
        disableSelection = false;
    }).on('blur', function(){
        disableSelection = true;
    });
});
</script>
<script>
(function(e,t){var n=e.amplitude||{_q:[],_iq:{}};var r=t.createElement("script")
;r.type="text/javascript"
;r.integrity="sha384-vYYnQ3LPdp/RkQjoKBTGSq0X5F73gXU3G2QopHaIfna0Ct1JRWzwrmEz115NzOta"
;r.crossOrigin="anonymous";r.async=true
;r.src="https://cdn.amplitude.com/libs/amplitude-5.8.0-min.gz.js"
;r.onload=function(){if(!e.amplitude.runQueuedFunctions){
	console.log("[Amplitude] Error: could not load SDK")}}
;var i=t.getElementsByTagName("script")[0];i.parentNode.insertBefore(r,i)
;function s(e,t){e.prototype[t]=function(){
	this._q.push([t].concat(Array.prototype.slice.call(arguments,0)));return this}}
	var o=function(){this._q=[];return this}
	;var a=["add","append","clearAll","prepend","set","setOnce","unset"]
	;for(var u=0;u<a.length;u++){s(o,a[u])}n.Identify=o;var c=function(){this._q=[]
			;return this}
	;var l=["setProductId","setQuantity","setPrice","setRevenueType","setEventProperties"]
	;for(var p=0;p<l.length;p++){s(c,l[p])}n.Revenue=c
	;var d=["init","logEvent","logRevenue","setUserId","setUserProperties","setOptOut","setVersionName","setDomain","setDeviceId", "enableTracking", "setGlobalUserProperties","identify","clearUserProperties","setGroup","logRevenueV2","regenerateDeviceId","groupIdentify","onInit","logEventWithTimestamp","logEventWithGroups","setSessionId","resetSessionId"]
	;function v(e){function t(t){e[t]=function(){
		e._q.push([t].concat(Array.prototype.slice.call(arguments,0)))}}
		for(var n=0;n<d.length;n++){t(d[n])}}v(n);n.getInstance=function(e){
		e=(!e||e.length===0?"$default_instance":e).toLowerCase()
		;if(!n._iq.hasOwnProperty(e)){n._iq[e]={_q:[]};v(n._iq[e])}return n._iq[e]}
	;e.amplitude=n})(window,document);

var amplitudeUid = uuidCheck;
if(amplitudeUid === null){
	amplitudeUid = '834008fe-eaff-484c-b834-3ace9f4cff2c';
}
var appResult = {
	is_release_build: false,
	is_sess: false, // 로그인 유무
  isSession: false,
	appCheck: false,
	device: 'pc',
  timestamp: parseInt("1614762158681", 10)
}

<!---->
appResult.is_sess = true;
appResult.isSession = true;
<!---->
<!---->
appResult.is_release_build = true;
<!---->

var webStatus = appResult;
/* appResult 명을 */

<!---->
amplitude.getInstance().init("65bebb55595beb82e78d5d1ae808702c", amplitudeUid);
<!---->
</script>

<script src="https://www.kurly.com/common_js/kurlytracker/kurlytracker.js?ver=1.26.12"></script>
<script>
  // KM-4988 : amplitude userProperties 업데이트
  var userProperties = {
    membership_level: '웰컴',
    cust_no: Number('7411782'),
  };
  KurlyTracker.setUserProperties(userProperties);
</script>


</head>
<body class="board-view" oncontextmenu="return false" ondragstart="return false" onselectstart="return !disableSelection">


<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<div id="wrap" class="">
<div id="pos_scroll"></div>
<div id="container">
<div id="header"><script>
  // ie10 이하 페이지 이동
  var ieCheckAgent = navigator.userAgent.toLowerCase();
  if ( (navigator.appName === 'Netscape' && navigator.userAgent.search('Trident') !== -1) || (ieCheckAgent.indexOf("msie") !== -1) ) {
    if(navigator.appName !== 'Netscape'){
      location.href = "/shop/event/browserUpdate.php";
    }
  }
</script>

<div class="bnr_header bnr_top_friend" id="top-message">

<script type="text/javascript">
    $(document).ready(function(){
      $("#top-message-close").on("click",function(){
        setCookie('top_msg_banner2','set_cookie',1)
      });
      if(getCookie('top_msg_banner2') == 'set_cookie'){
        $("#top-message").hide()
      }else{
        $("#top-message").show() ;
      }
    });

    function setCookie(cookieName, value, exdays){
      var exdate = new Date();
      exdate.setDate(exdate.getDate() + exdays);
      var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
      document.cookie = cookieName + "=" + cookieValue +"; path=/;"
    }

    function getCookie(cookieName) {
      cookieName = cookieName + '=';
      var cookieData = document.cookie;
      var start = cookieData.indexOf(cookieName);
      var cookieValue = '';
      if(start != -1){
        start += cookieName.length;
        var end = cookieData.indexOf(';', start);
        if(end == -1)end = cookieData.length;
        cookieValue = cookieData.substring(start, end);
      }
      return unescape(cookieValue);
    }
  </script>

<script src="https://www.kurly.com/common_js/usermenu_v1.js?ver=1.26.12"></script>
<script>
    $(document).ready(function(){

      userMenu.loginCheck = true;
      userMenu.userInfo ={
        userGrade : '6',
        userGradeName : '웰컴',
        memberName : '김보민'
      }

      userMenu.update();
    });
  </script>

<style>
  #headerLogo{position:relative;width:1050px;height:63px;margin:0 auto}
  #headerLogo .bnr_delivery{position:absolute;left:-1px;top:-28px;margin:auto;height:22px}
  #headerLogo .bnr_delivery img{width:163px;height:22px}
  #headerLogo .logo{position:absolute;left:50%;bottom:6px;width:200px;height:79px;margin-left:-100px}
  #headerLogo .logo img{display:block;width:103px;height:79px;margin:0 auto}
  #headerLogo .logo #gnbLogoContainer {margin:0 auto}
  #gnb.gnb_stop{position:fixed;z-index:300;left:0;top:0;width:100%}
  #gnb .gnb_kurly{position:relative;z-index:300;min-width:1050px;background-color:#fff;font-family:'Noto Sans';letter-spacing:-0.3px}
  #gnb .gnb_kurly:after{content:"";position:absolute;z-index:299;left:0;top:56px;width:100%;height:9px;background:url(https://res.kurly.com/pc/service/common/1902/bg_1x9.png) repeat-x 0 100%}
  #gnb .inner_gnbkurly{position:relative;width:1050px;height:56px;margin:0 auto}
  /* 검색창 */
  #gnb .gnb_search{position:absolute;right:108px;top:10px;width:242px}
  #gnb .gnb_search .inp_search{width:242px;height:36px;padding:0 60px 0 14px;border:1px solid #f7f7f6;border-radius:18px;background-color:#f7f7f7;font-family: 'Noto Sans';font-weight:400;font-size:12px;color:#666;line-height:16px;outline:none}
  #gnb .gnb_search .inp_search.focus{background-color:#fff;color:#333}
  #gnb .gnb_search .btn_search{position:absolute;right:5px;top:3px;width:30px;height:30px}
  /* 장바구니 */
  #gnb .cart_count{position:absolute;right:-5px;top:10px}
  #gnb .cart_count .inner_cartcount{text-align:center;font-weight:400}
  #gnb .cart_count .btn_cart{display:block;width:36px;height:36px;background:url(https://res.kurly.com/pc/service/common/2011/ico_cart.svg) no-repeat 50% 50%}
  #gnb .cart_count .btn_cart:hover{background:url(https://res.kurly.com/pc/service/common/2011/ico_cart_on.svg?v=1) no-repeat 50% 50%}
  #gnb .cart_count .num{display:none;position:absolute;left:19px;top:-1px;min-width:20px;height:20px;padding:0 5px;border:2px solid #fff;border-radius:10px;background-color:#5f0080;font-size:9px;color:#fff;line-height:15px;text-align:center;white-space:nowrap}
  #gnb .cart_count img{display:block;width:36px;height:36px;margin:0 auto}
  #gnb .cart_count .msg_cart{display:none;position:absolute;right:-7px;top:61px;width:348px;border:1px solid #ddd;background-color:#fff;/* opacity:0; */}
  #gnb .cart_count .inner_msgcart{display:block;overflow:hidden;padding:20px 0 20px 20px}
  #gnb .cart_count .msg_cart .thumb{float:left;width:46px;height:60px}
  #gnb .cart_count .msg_cart .desc{float:left;width:260px;padding:8px 0 0 20px;font-weight:700;font-size:14px;line-height:21px}
  #gnb .cart_count .msg_cart .desc.add{padding-top:0;margin-top:-5px;}
  #gnb .cart_count .msg_cart .tit{display:block;overflow:hidden;width:100%;color:#999;white-space:nowrap;text-overflow:ellipsis}
  #gnb .cart_count .msg_cart .name{overflow:hidden;float:left;max-width:178px;text-overflow:ellipsis}
  #gnb .cart_count .msg_cart .txt{display:block;padding-top:3px;color:#333}
  #gnb .cart_count .msg_cart .point{position:absolute;right:13px;top:-14px;width:20px;height:14px;background:url(https://res.kurly.com/pc/ico/1903/ico_layer_point.png) no-repeat 0 0}
  #gnb .cart_count .msg_cart .repeat{display:none}
  #gnb .cart_count .msg_cart .add .repeat{display:block}
  /* GNB메인 */
  #gnb .gnb_main{overflow:hidden;width:1050px;margin:0 auto}
  #gnb .gnb_main .gnb{float:left;width:100%}
  #gnb .gnb_main .gnb li{float:left}
  #gnb .gnb_main .gnb .lst{background:none}
  #gnb .gnb_main .gnb a{overflow:hidden;float:left;width:124px;height:55px;padding:16px 0 0;font-size:16px;color:#333;line-height:20px;text-align:center}
  #gnb .gnb_main .gnb a .txt{font-weight:700}
  #gnb .gnb_main .gnb a:hover,
  #gnb .gnb_main .gnb a.on{font-weight:700;color:#5f0080}
  #gnb .gnb_main .gnb a:hover .txt{border-bottom:1px solid #5f0080}
  #gnb .gnb_main .menu1 a{width:168px}
  #gnb .gnb_main .menu1 .ico{float:left;width:16px;height:14px;margin:5px 14px 0 0;background:url(https://res.kurly.com/pc/service/common/1908/ico_gnb_all_off.png) no-repeat}
  #gnb .gnb_main .menu1 a.on .ico,
  #gnb .gnb_main .menu1 a:hover .ico{background:url(https://res.kurly.com/pc/service/common/1908/ico_gnb_all.png) no-repeat 0 0}
  #gnb .gnb_main .menu1 a.on .txt,
  #gnb .gnb_main .menu1 a:hover .txt,
  #gnb .gnb_main .menu1 .txt{float:left;font-weight:700;border-bottom:0}
  #gnb .gnb_main .menu3 a{width:116px}
  #gnb .gnb_main .lst a{width:116px}
  /* GNB서브 */
  #gnb .gnb_sub{display:none;overflow:hidden;position:absolute;z-index:301;left:0;top:55px;width:213px;padding-top:1px}
  #gnb .gnb_sub .inner_sub{width:100%;border:1px solid #ddd;background:url(https://res.kurly.com/pc/service/common/1908/bg_gnb_sub_v3.png) repeat-y 0 0}
  #gnb .size_over{overflow-x:hidden;overflow-y:auto}
  #gnb .gnb_sub .gnb_menu{width:219px}
  #gnb .gnb_sub .gnb_menu li{width:100%;text-align:left}
  #gnb .gnb_sub .gnb_menu li:first-child{padding-top:0}
  #gnb .gnb_sub .menu{display:block;overflow:hidden;width:100%;height:40px;padding:8px 0 0 14px;cursor:pointer}
  #gnb .gnb_sub .gnb_menu li:first-child .menu{height:39px;padding-top:7px}
  #gnb .gnb_sub .current .menu{background:#f7f7f7}
  #gnb .gnb_sub .current .txt,
  #gnb .gnb_sub .menu.on.off:hover .txt,
  #gnb .gnb_sub .menu.on .txt{font-weight:700;color:#5f0080}
  #gnb .gnb_sub .ico{float:left;width:24px;height:24px}
  #gnb .gnb_sub .ico img{width:24px;height:24px}
  #gnb .gnb_sub .ico .ico_off{display:block}
  #gnb .gnb_sub .ico .ico_on{display:none}
  #gnb .gnb_sub .current .ico_off,
  #gnb .gnb_sub .menu.on .ico_off,
  #gnb .gnb_sub .menu:hover .ico_off{display:none}
  #gnb .gnb_sub .current .ico_on,
  #gnb .gnb_sub .menu.on .ico_on,
  #gnb .gnb_sub .menu:hover .ico_on{display:block}
  #gnb .gnb_sub .ico_arrow{display:none;float:right;width:16px;height:17px;padding:6px 9px 0 0}
  #gnb .gnb_sub .ico_arrow img{width:7px;height:11px}
  #gnb .gnb_sub .current .ico_arrow{display:block}
  #gnb .gnb_sub .txt{float:left;padding:0 4px 0 10px;font-weight:400;font-size:14px;color:#333;line-height:22px;white-space:nowrap}
  #gnb .gnb_sub .ico_new{overflow:hidden;float:left;width:14px;height:14px;margin-top:5px;background-position:50% 50%;background-repeat:no-repeat;background-size:14px 14px;font-size:0;line-height:0;text-indent:-9999px}
  #gnb .gnb_sub .sub_menu{position:absolute;z-index:0;left:200px;top:0;width:248px;height:100%;padding:0 0 0 20px;background:url(https://res.kurly.com/images/common/bg_1_1.gif) repeat 0 0;opacity:0;transition:opacity 0.2s}
  #gnb .gnb_sub .current .sub_menu{z-index:1;opacity:1;transition:opacity 0.5s}
  #gnb .gnb_sub .sub_menu li:first-child{padding-top:11px}
  #gnb .gnb_sub .sub_menu .sub{display:block;overflow:hidden;height:40px;padding-left:20px;font-size:14px;color:#333;line-height:18px;cursor:pointer}
  #gnb .gnb_sub .sub_menu .sub:hover .name{border-bottom:1px solid #5f0080;font-weight:700;color:#5f0080}
  #gnb .gnb_sub .sub_menu .sub.on{font-weight:700;color:#5f0080}
  #gnb .gnb_sub .recommend{overflow:hidden;width:529px;padding:21px 0 0 40px}
  #gnb .gnb_sub .recommend li{float:left;width:120px;height:130px;padding:0 10px 0 0}
  #gnb .gnb_sub .recommend li:first-child{padding-top:0}
  #gnb .gnb_sub .recommend .sub{display:block;overflow:hidden;width:120px;height:130px;padding:0;cursor:pointer}
  #gnb .gnb_sub .recommend .thumb{display:block;width:110px;height:83.4px;margin-bottom:8px;background-position:50% 50%;background-repeat:no-repeat;background-size:cover}
  #gnb .gnb_sub .recommend .thumb img{width:110px;height:84px}
  #gnb .gnb_sub .recommend .name{font-size:14px;line-height:18px}
  #gnb .btn_location{overflow:hidden;position:absolute;right:51px;top:10px;width:36px;height:36px;border:0 none;background:url(https://res.kurly.com/pc/ico/2008/ico_delivery_setting_done.svg) no-repeat 50% 50%;font-size:0;text-indent:-9999px}
  #gnb .btn_location.on{background-image:url(https://res.kurly.com/pc/ico/2008/ico_delivery_setting.svg?ver=1)}
  #gnb .layer_location{display:none;position:absolute;z-index:300;right:41px;top:56px;width:308px;padding:20px 18px 19px 20px;border:1px solid #ddd;background-color:#fff}
  #gnb .layer_location:after{content:"";position:absolute;right:10px;top:-50px;width:36px;height:50px;background:url(https://res.kurly.com/pc/ico/2011/ico_point_up_18x12.svg) no-repeat 50% 100%}
  #gnb .layer_location *{font-weight:700;font-size:16px;color:#333;line-height:24px;letter-spacing:-0.3px}
  #gnb .layer_location .delivery{display:block;padding-top:8px;font-size:14px;line-height:20px}
  #gnb .layer_location .star{color:#5f0080}
  #gnb .layer_location .regular{color:#666}
  #gnb .layer_location .none{color:#999}
  #gnb .layer_location .btn{display:block;width:100%;height:36px;margin-top:17px;padding-bottom:2px;border-radius:3px;font-size:12px;line-height:32px;letter-spacing:0;text-align:center}
  #gnb .layer_location a.btn{padding-top:0}
  #gnb .layer_location .btn.default{border:1px solid #5f0080;background-color:#fff;color:#5f0080}
  #gnb .layer_location .btn.active{border:1px solid #5f0081;background-color:#5f0080;color:#fff}
  #gnb .layer_location .btn .ico{display:inline-block;width:20px;height:20px;margin:6px 0 0 -6px;background:url(https://res.kurly.com/pc/ico/2008/ico_search_40x40.png) no-repeat 50% 50%;background-size:20px 20px;vertical-align:top}
  #gnb .layer_location .group_button{display:block;overflow:hidden}
  #gnb .layer_location .double .default{float:left;width:104px}
  #gnb .layer_location .double .active{float:right;width:158px}
  #gnb .layer_location .emph{color:#5f0080}
  #gnb .location_set:hover .btn_location.on{background-image:url(https://res.kurly.com/pc/ico/2010/ico_delivery_setting_on.svg)}
  #gnb .location_set.show .layer_location,
  #gnb .location_set:hover .layer_location{display:block}
  #gnb .location_set .btn_location.off,
  #gnb .location_set .btn_location.off:hover{background-image:url(https://res.kurly.com/pc/ico/2008/ico_delivery_off.svg?ver=1);cursor:default}
  #gnb .location_set.off .layer_location,
  #gnb .location_set.off:hover .layer_location{display:none}
  /* 오류 */
  #gnb .layer_location .error .txt{display:block;color:#333}
  @media
  only screen and (-webkit-min-device-pixel-ratio: 1.5),
  only screen and (min-device-pixel-ratio: 1.5),
  only screen and (min-resolution: 1.5dppx) {
    #gnb .gnb_sub .ico_new{background:url(https://res.kurly.com/pc/ico/1808/ico_new_gnb_16x16.png) no-repeat 0 0;background-size:14px 14px}
    #gnb .cart_count .msg_cart .point{background:url(https://res.kurly.com/pc/ico/1903/ico_layer_point_x2.png) no-repeat 0 0;background-size:20px 14px}
    #gnb .gnb_main .menu1 .ico{background:url(https://res.kurly.com/pc/service/common/1908/ico_gnb_all_off_x2.png) no-repeat 0 0;background-size:16px 14px}
    #gnb .gnb_main .menu1 a.on .ico,
    #gnb .gnb_main .menu1 a:hover .ico{background:url(https://res.kurly.com/pc/service/common/1908/ico_gnb_all_x2.png) no-repeat 0 0;background-size:16px 14px}
  }
  .gnb_search .init{position:relative}
  .gnb_search .init .btn_delete{overflow:hidden;position:absolute;left:170px;top:-36px;width:36px;height:36px;border:0 none;background:url(https://res.kurly.com/pc/ico/2010/ico_search_del.svg) no-repeat 50% 50%;background-size:12px 12px;font-size:0;line-height:0;text-indent:-9999px;opacity:0}
  .gnb_search .init .btn_delete.on{opacity:1}
</style>

<script src="https://www.kurly.com/common_js/gnb_v1.js?ver=1.26.12"></script>
<script type="text/javascript">
  //
  gnbMenu.update();

  // 검색창 클래스 추가/삭제
  var searchInputAction = (function(){
    var $target = {};

    var _searchInputAction = {
      setSeletor: function(){
        $target = {
          $parent: $('#gnb'),
          $search: $('#gnb [name=sword]'),
          $deleteBtn: $('#searchInit'),
          $edit: $('#edit')
        }

        this.setAction();
      },
      setAction: function(){
        var that = this;
        $target.$search.focus(function(){
          that.changeClass($target.$search, 'add', 'focus');
          that.deleteCheck();
        }).blur(function(){
          that.changeClass($target.$search, 'remove', 'focus');
          that.deleteCheck(false);
        }).on('keyup', function(){
          if($target.$edit.val() !== 'Y'){
            $target.$edit.val('Y');
          }
          that.deleteCheck();
        });

        $target.$deleteBtn.on('click', function(){
          $target.$search.val('');
          that.deleteCheck();
        });
      },
      deleteCheck: function(type){
        var that = this, count = $.trim($target.$search.val()).length;
        if(count === 0 || (typeof type !== 'undefined' &&  !type) ){
          that.changeClass($target.$deleteBtn, 'remove', 'on');
        }else{
          that.changeClass($target.$deleteBtn, 'add', 'on');
        }
      },
      changeClass: function(target, type, className){
        if(type === 'add'){
          target.addClass(className);
        }else{
          target.removeClass(className);
        }
      }
    }

    _searchInputAction.setSeletor();
  })();

  // 로고 클릭 이벤트
  $('#header .link_main').on('click', function(e){
    e.preventDefault();
    KurlyTracker.setAction('select_main_logo').sendData();
    location.href = $(this).attr('href');
  });

  $('#gnb .gnb .link').on('click', function(e){
    e.preventDefault();
    var _event_name, _event_info;
    if($(this).hasClass('new')){
      _event_name = 'select_new_product_subtab';
    }else if($(this).hasClass('best')){
      _event_name = 'select_popular_product_subtab';
    }else if($(this).hasClass('bargain')){
      _event_name = 'select_bargain_subtab';
    }else if($(this).hasClass('event')){
      _event_name = 'select_event_list_subtab';
    }
    _event_info = $(this).attr('href');

    KurlyTracker.setEventInfo(_event_info).setAction(_event_name).sendData();
    location.href = _event_info;
  });

  // 장바구니 아이콘 클릭이벤트
  $('#gnbMenu .btn_cart').on('click', function(e){
    e.preventDefault();
    KurlyTracker.setAction('select_cart').sendData();
    location.href = $(this).attr('href');
  });
</script>

<div class="tit_page">
<h2 class="tit">추천할 끼니</h2>
<p class="sub">kkini의 가족에게 맛집을 추천하세요!</p>
</div>
</div>
<div id="main">
<div id="content">

<div id="qnb" class="quick-navigation">
<style>
    #qnb{position:absolute;z-index:1;right:20px;top:70px;width:80px;font:normal 12px/16px "Noto Sans";color:#333;letter-spacing:-0.3px;transition:top 0.2s}
    .goods-goods_view #qnb{top:20px}
    /* 배너 */
    #qnb .bnr_qnb{padding-bottom:7px}
    #qnb .bnr_qnb .thumb{width:80px;height:120px;vertical-align:top}
    /* 메뉴 */    
    #qnb .side_menu{width:80px;border:1px solid #ddd;border-top:0 none;background-color:#fff}
    #qnb .link_menu{display:block;height:29px;padding-top:5px;border-top:1px solid #ddd;text-align:center}
    #qnb .link_menu:hover,
    #qnb .link_menu.on{color:#5f0080}
    /* 최근본상품 */
    #qnb .side_recent{position:relative;margin-top:6px;border:1px solid #ddd;background-color:#fff}
    #qnb .side_recent .tit{display:block;padding:22px 0 6px;text-align:center}
    #qnb .side_recent .list_goods{overflow:hidden;position:relative;width:60px;margin:0 auto}
    #qnb .side_recent .list{position:absolute;left:0;top:0}
    #qnb .side_recent .link_goods{display:block;overflow:hidden;width:60px;height:80px;padding:1px 0 2px}
    #qnb .side_recent .btn{display:block;overflow:hidden;width:100%;height:17px;border:0 none;font-size:0;line-height:0;text-indent:-9999px}
    
    #qnb .side_recent .btn_up{position:absolute;left:0;top:0;background:url(https://res.kurly.com/pc/service/main/2002/ico_quick_up_hover.png) no-repeat 50% 50%}
    #qnb .side_recent .btn_up.off{background:url(https://res.kurly.com/pc/service/main/2002/ico_quick_up.png) no-repeat 50% 50%}
    #qnb .side_recent .btn_down{background:url(https://res.kurly.com/pc/service/main/2002/ico_quick_down_hover.png) no-repeat 50% 0}
    #qnb .side_recent .btn_down.off{background:url(https://res.kurly.com/pc/service/main/2002/ico_quick_down.png) no-repeat 50% 0}
    
    
    @media
    only screen and (-webkit-min-device-pixel-ratio: 1.5),
    only screen and (min-device-pixel-ratio: 1.5),
    only screen and (min-resolution: 1.5dppx) {
        #qnb .side_recent .btn_up{background-image:url(https://res.kurly.com/pc/service/main/2002/ico_quick_up_hover_x2.png);background-size:12px 18px}
        #qnb .side_recent .btn_down{background-image:url(https://res.kurly.com/pc/service/main/2002/ico_quick_down_hover_x2.png);background-size:12px 18px}
        #qnb .side_recent .btn_up.off{background-image:url(https://res.kurly.com/pc/service/main/2002/ico_quick_up_x2.png);background-size:12px 18px}
        #qnb .side_recent .btn_down.off{background-image:url(https://res.kurly.com/pc/service/main/2002/ico_quick_down_x2.png);background-size:12px 18px}
    }
    @media all and (max-width: 1250px){
        #qnb{display:none}
    }
</style>

<div class="bnr_qnb" id="brnQuick"></div>
<script>
    var brnQuick = {
        nowTime : '1614762158697',
        update : function(){
            $.ajax({
                url : campaginUrl + 'pc/service/bnr_quick.html'
            }).done(function(result){
                $('#brnQuick').html(result);
            });    
        }
    }
    brnQuick.update();
</script>

<div class="side_menu">
<a href="/shop/main/html.php?htmid=event/kurly.htm&name=lovers" class="link_menu ">리뷰보기</a>
<a href="/shop/board/list.php?id=recipe" class="link_menu ">커뮤니티</a>
<a href="/shop/goods/goods_review_best.php" class="link_menu ">맛집로드</a>
</div>
<div class="side_recent" style="display:none">
<strong class="tit">최근 본 항목</strong>
<div class="list_goods" data-height="209">
<ul class="list"></ul>
</div>
<button type="button" class="btn btn_up off">최근 본 항목 위로 올리기</button>
<button type="button" class="btn btn_down">최근 본 항목 아래로 내리기</button>
</div>
<script>
/**
 * 상품상세일때 현재 보고 있는 상품 담기. 상품URL & 상품이미지
 * 최종 저장 날짜로 부터 24시가 지날시 localStorage 삭제
 */
var getGoodsRecent = (function(){
    var i, len, getGoodsRecent, item, _nowTime = '1614762158697';

    _goodsRecent();
    function _goodsRecent(){
        if(localStorage.getItem('goodsRecent') === null){
            return false;
        }
        
        try{
            getGoodsRecent = JSON.parse(localStorage.getItem("goodsRecent"));
            len = getGoodsRecent.length;
            if(addDays(getGoodsRecent[len - 1].time, 1) < _nowTime){
                localStorage.removeItem('goodsRecent');
            }else{
                for(i = 0; i < len; i++){
                    item = '<li><a class="link_goods" href="/shop/goods/goods_view.php?goodsno=' + getGoodsRecent[i].no + '"><img src="' + getGoodsRecent[i].thumb + '" alt=""></a></li>';
                    $('.side_recent .list').append(item);
                }
                $('.side_recent').show();
            }
        } catch(e){
            console.log("JSON parse error from the Quick menu goods list!!!", e);
        }
    }

    function addDays(date, days){
        var result = new Date(date);
        result.setDate(result.getDate() + days);
        return result.getTime();
    }
    
    // return {
    // }
})();
</script>
</div>
<div class="layout-wrapper">
<div class="xans-element- xans-myshop xans-myshop-couponserial ">
<table width=100% align=center cellpadding=0 cellspacing=0>
<tr>
<td>
<table width=100%>
<tr>
<td>
<table class="boardView" width=100%>
<tr>
<th scope="row" style="border:none;">제목</th>
<td>[추천해요] 서울 강북구 먹자골목 변두리, 60대 할머니의 오래된 가게 "서울순댓국"</td>
</tr>
<tr>
<th scope="row">작성자</th>
<td>nickname1234</td>
</tr>
<tr class="etcArea">
<td colspan="2">
<ul>
<li class="date ">
<strong class="th">작성일</strong> <span class="td">2021-03-01</span>
</li>
<li class="hit ">
<strong class="th">조회수</strong> <span class="td">85</span>
</li>
</ul>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td align=right class=eng style="padding:5px;">
</td>
</tr>
<tr>
<td style="padding:10px;" height=200 valign=top id=contents>
<table width=100% style="table-layout:fixed">
<tr>
<td class="board_view_content" style="word-wrap:break-word;word-break:break-all" id=contents_835 valign=top>
<p></p>
</td>
</tr>
</table>
</td>
</tr>
<tr><td height=1 bgcolor="#f4f4f4"></td></tr>
</table><br>
<table width=100% style="table-layout:fixed" cellpadding=0 cellspacing=0>
<tr>
<td align=center style="padding-top:10px;">
<table width=100%>
<tr>
<td align=right>
<a href="list.php?id=notice"><span class="bhs_button yb" style="float:none;">목록</span></a>
</td>
</tr>
</table>
</td>
</tr>
</table>
<div class="xans-element- xans-board xans-board-movement-1002 xans-board-movement xans-board-1002 "><ul>
<li class="prev ">
<strong>이전글</strong><a href="/board/free/read.html?no=27121&amp;board_no=1&amp;page="><a href="view.php?id=notice&no=834">[추천해요] 서울 강북구 먹자골목 변두리, 60대 할머니의 오래된 가게 "서울순댓국"</a>
</li>
<table width=100% cellpadding=5 cellspacing=0>
<col width=100 align=right bgcolor=#f7f7f7 style="padding-right:10px">
<col style="padding-left:10px">
</table><p>
<textarea id=examC_835 style="display:none;width:100%;height:300px">&lt;div style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;&quot;&gt;&lt;font color=&quot;#222222&quot; face=&quot;Font&quot; style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;&quot;&gt;고객님, 안녕하세요.&lt;/font&gt;&lt;/div&gt;&lt;div style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;&quot;&gt;&lt;font color=&quot;#222222&quot; face=&quot;Font&quot; style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/div&gt;&lt;div style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;&quot;&gt;&lt;font style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;&quot;&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;&quot;&gt;&lt;b style=&quot;color: rgb(34, 34, 34); font-family: Font;&quot;&gt;&quot;&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;&quot;&gt;&lt;font color=&quot;#222222&quot; face=&quot;Font&quot;&gt;&lt;b&gt;[순창성가정식품] 묵은지 청국장 외 4건&quot;&amp;nbsp;&lt;/b&gt;&lt;/font&gt;&lt;/span&gt;&lt;font color=&quot;#222222&quot; face=&quot;Font&quot;&gt;가격을 조정하게 되어 안내드립니다.&amp;nbsp;&lt;/font&gt;&lt;/div&gt;&lt;div style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;&quot;&gt;&lt;font color=&quot;#222222&quot; face=&quot;Font&quot; style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;&quot;&gt;&lt;br style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;&quot;&gt;&lt;/font&gt;&lt;/div&gt;&lt;div style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;&quot;&gt;&lt;font color=&quot;#222222&quot; style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;&quot;&gt;&lt;b&gt;# 가격인상 요인&lt;/b&gt;&lt;/font&gt;&lt;/div&gt;&lt;div style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;&quot;&gt;&lt;font color=&quot;#222222&quot;&gt;&lt;b&gt;-&amp;nbsp;&amp;nbsp; 원부재료 및 인건비 상승&lt;/b&gt;&lt;/font&gt;&lt;/div&gt;&lt;div style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;&quot;&gt;&lt;font color=&quot;#222222&quot;&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/font&gt;&lt;/div&gt;&lt;div style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;&quot;&gt;&lt;div style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;&quot;&gt;위의 사유로 공급가가 상승됨에 따라, 컬리에서도 부득이하게 일정부분 가격조정을 하게 된 점 양해 부탁드립니다.&lt;/div&gt;&lt;/div&gt;&lt;div style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;&quot;&gt;&lt;font color=&quot;#222222&quot; face=&quot;Font&quot; style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;&quot;&gt;&lt;br&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; line-height: normal;&quot;&gt;&lt;font face=&quot;Font&quot;&gt;# 가격 조정시점&lt;/font&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;b style=&quot;font-family: Font;&quot;&gt;&amp;nbsp;- 2021년 3월 5일 (금) 오전 11시~&lt;/b&gt;&lt;font face=&quot;Font&quot;&gt;&lt;b&gt;&amp;nbsp;&lt;/b&gt;&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;img src=&quot;data:image/png;base64,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&quot; alt=&quot;&quot;&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; line-height: normal;&quot;&gt;&lt;div style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 400; font-stretch: normal; line-height: normal; font-family: Font; margin: 0px;&quot;&gt;좋은 품질, 합리적인 가격으로 만족드릴 수 있도록 항상 최선을 다하겠습니다.&amp;nbsp;&lt;/div&gt;&lt;div style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 400; font-stretch: normal; line-height: normal; font-family: Font; margin: 0px;&quot;&gt;&lt;br&gt;&lt;/div&gt;&lt;div style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 400; font-stretch: normal; line-height: normal; font-family: Font; margin: 0px;&quot;&gt;&lt;div style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;&quot;&gt;감사합니다.&lt;/div&gt;&lt;div style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;&quot;&gt;&lt;br style=&quot;font-stretch: 100%; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: normal; margin: 0px;&quot;&gt;&lt;/div&gt;&lt;div style=&quot;font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: normal; margin: 0px;&quot;&gt;마켓컬리 드림&lt;/div&gt;&lt;/div&gt;&lt;/span&gt;&lt;/div&gt;</textarea>
</td></tr></table>
</div>
<script>
// KM-1483 Amplitude
KurlyTracker.setScreenName('notice_detail');
</script>
</div>
</div>

<div class="layer_btn1">
<button type="button" class="btn_close" onclick="$('#layerDSR').hide();$(this).parent().find('.inner_layer').hide();"></button>
</div>
<button type="button" class="layer_close" onclick="$('#layerDSR').hide();$(this).parent().find('.inner_layer').hide();"></button>
</div>
</div>

<div id="footer">
<div class="inner_footer">
<div class="footer_cc">
<h2 class="tit_cc">고객행복센터</h2>
<div class="cc_view cc_call">
<h3><span class="tit">1644-1107</span></h3>
<dl class="list">
<dt>365고객센터</dt>
<dd>오전 7시 - 오후 7시</dd>
</dl>
</div>

<div class="company">
<ul class="list">
<li><a class="link" href="javascript:alert('준비중입니다.');" onfocus="this.blur()">끼니소개</a></li>
<li><a class="link" href="javascript:alert('준비중입니다.');" onfocus="this.blur()">끼니소개영상</a></li>
<li><a class="link" href="javascript:alert('준비중입니다.');" onfocus="this.blur()">인재채용</a></li>
<li><a class="link" href="javascript:alert('준비중입니다.');" onfocus="this.blur()">이용약관</a></li>
<li><a class="link emph" href="javascript:alert('준비중입니다.');" onfocus="this.blur()">개인정보처리방침</a></li>
<li><a class="link" href="javascript:alert('준비중입니다.');" onfocus="this.blur()">이용안내</a></li>
</ul>
법인명 (상호) : 주식회사 끼니 <span class="bar">I</span> 사업자등록번호 : 261-81-23567 <a href="javascript:alert('준비중입니다.');" onfocus="this.blur()">사업자정보 확인</a>
<br>
통신판매업 : 제 2018-서울강남-01646 호 <span class="bar">I</span> 개인정보보호책임자 : 이원준
<br>
주소 : 서울시 도산대로 16길 20, 이래빌딩 B1 ~ 4F <span class="bar">I</span> 대표이사 : 김슬아
<br>
입점문의 : <a href="javascript:alert('준비중입니다.');" onfocus="this.blur()">문의하기</a> <span class="bar">I</span> 제휴문의 : <a href="javascript:alert('준비중입니다.');" onfocus="this.blur()">business@kurlycorp.com</a>
<br>
채용문의 : <a href="javascript:alert('준비중입니다.');" onfocus="this.blur()">recruit@kurlycorp.com</a>
<br>
팩스: 070 - 7500 - 6098 <span class="bar">I</span> 이메일 : <a href="javascript:alert('준비중입니다.');" onfocus="this.blur()">help@kurlycorp.com</a>
<em class="copy">&copy; KURLY CORP. ALL RIGHTS RESERVED</em>

</div>
</div>
</div>
</div>
</div>
</div>

<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"NRJS-5dec146893a58b07e31","applicationID":"602251426","transactionName":"MlZUZhdUXkoCAkBQDQscY0AMGkNRDBEbWw0EQVIdCVxDTU0RXEk=","queueTime":0,"applicationTime":502,"atts":"HhFXEF9OTUQ=","errorBeacon":"bam.nr-data.net","agent":""}</script>
<script>
    if (document.getElementById('examC_835')) document.getElementById('contents_835').innerHTML = document.getElementById('examC_835').value;
</script>
</body>
</html>
