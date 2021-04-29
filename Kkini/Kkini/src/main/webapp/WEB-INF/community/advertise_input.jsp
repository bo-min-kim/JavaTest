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
<meta property="og:url" content="https://www.kurly.com/shop/mypage/mypage_qna_register.php?mode=add_qna&sno=undefined" />
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
<script>
sessionStorage.setItem('user_no', '7411782')
sessionStorage.setItem('apiDomainV2', '')

var jwtToken = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjYXJ0X2lkIjoiODM0MDA4ZmUtZWFmZi00ODRjLWI4MzQtM2FjZTlmNGNmZjJjIiwiaXNfZ3Vlc3QiOmZhbHNlLCJ1dWlkIjoiODM0NGEyNjktYTNmMS01ZmE4LThlZTMtM2RlOWEyNjBmOTRmIiwibV9ubyI6NzQxMTc4MiwibV9pZCI6ImtxaGFscyIsImxldmVsIjoyMCwic3ViIjoiODM0NGEyNjktYTNmMS01ZmE4LThlZTMtM2RlOWEyNjBmOTRmIiwiaXNzIjoiaHR0cDovL21rd2ViLmFwaS5rdXJseS5zZXJ2aWNlcy92My9hdXRoL3JlZnJlc2giLCJpYXQiOjE2MTQ3NjE2MTksImV4cCI6MTYxNDc3MDE5NiwibmJmIjoxNjE0NzY2NTk2LCJqdGkiOiI4Ymt2NFVQblptOENjWEwxIn0.EpvhfHFWaOOQBHRFvCUAf8NSk7fCsHb489ptpmrpqG8';
var apiDomain = 'https://api.kurly.com';
var GD_ISMEMBER = !!Number('1');
var checkIsApp = true;// 해당스크립트관련으로 앱체크공용변수추가 생성.앱에서 불필요한 호출제거
</script>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js?ver=1.26.11"></script>
<script src="https://www.kurly.com/shop/data/skin/designgj/common.js?ver=1.26.11"></script>
<script src="https://www.kurly.com/shop/data/skin/designgj/godo.password_strength.js"></script>
<script src="https://www.kurly.com/shop/data/skin/designgj/polify.js?ver=1.26.11"></script>
<script src="https://www.kurly.com/shop/data/skin/designgj/ui_v2.js?ver=1.26.11"></script>

<script src="https://res.kurly.com/js/vue/xdomain.min.js" slave="https://api.kurly.com/xdomain?ver=1"></script>

<script src="https://res.kurly.com/js/vue/es6-promise.min.js"></script>
<script src="https://res.kurly.com/js/vue/es6-promise.auto.min.js"></script>

<script type="text/javascript" src="https://res.kurly.com/js/vue/axios.min.js"></script>

<script src="https://res.kurly.com/js/vue/vue.min.js"></script>
<script src="https://www.kurly.com/common_js/axios.js?ver=1.26.11"></script>
<link rel="styleSheet" href="https://www.kurly.com/shop/data/skin/designgj/normalize.css?ver=1.26.11">
<link rel="styleSheet" href="https://www.kurly.com/shop/data/skin/designgj/section1.css?ver=1.26.11">
<link rel="styleSheet" href="https://www.kurly.com/shop/data/skin/designgj/common.css?ver=1.26.11">

<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script type="text/javascript" src="https://www.kurly.com/shop/lib/js/naverCommonInflowScript.js?Path=mypage/mypage_qna_register.php&amp;Referer=&amp;AccountID=s_4f41b5625072&amp;Inflow=" id="naver-common-inflow-script"></script>

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
  timestamp: parseInt("1614766609297", 10)
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
<body class="mypage-mypage_qna_register" oncontextmenu="return false" ondragstart="return false" onselectstart="return !disableSelection">


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

<script>
            // KM-1483 Amplitude 연동
            function searchTracking(form){
              var _searchTrackingData = {
                selection_type : 'keyword',
                keyword : $(form).find('[name = sword]').val(),
                package_id : null,
                package_name : null,
                position : null,
              }
              KurlyTracker.setEventInfo(_searchTrackingData.selection_type);
              KurlyTracker.setAction('select_search', _searchTrackingData).sendData();
              return chkForm(form);
            }
          </script>
</div>
</div>
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
        nowTime : '1614766609320',
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
<button type="button" class="btn btn_down">최근 본 항목아래로 내리기</button>
</div>
<script>
/**
 * 상품상세일때 현재 보고 있는 상품 담기. 상품URL & 상품이미지
 * 최종 저장 날짜로 부터 24시가 지날시 localStorage 삭제
 */
var getGoodsRecent = (function(){
    var i, len, getGoodsRecent, item, _nowTime = '1614766609320';

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
<div class="page_aticle aticle_type2">
<div id="snb" class="snb_cc">
<h2 class="tit_snb">커뮤니티</h2>
<div class="inner_snb">
<ul class="list_menu">
<li>
<a href="/shop/board/list.php?id=notice">공지사항</a>
</li>
<li>
<a href="/shop/service/faq.php">함께할 끼니</a>
</li>
<li>
<a href="/shop/mypage/mypage_qna.php">추천할 끼니</a>
</li>
<li class="on">
<a href="/shop/main/html.php?htmid=mypage/bulk_order.htm">광고 문의</a>
</li>
</ul>
</div>
</div>
<div class="page_section section_qna">
<div class="head_aticle">
<h2 class="tit">광고 문의</h2>
</div>

<div class="xans-board-write">
<form name=fm id="fm" method=post action="/shop/mypage/indb.php" enctype="multipart/form-data" onSubmit="return chkForm(this)" style="height: 100%;">
<input type=hidden name=mode value="add_qna">
<input type=hidden name=itemcd value="">
<input type=hidden name=sno value="0">
<table id="table_after" class="boardWrite2" width="100%">
<col width=14% align=right>
<tr>
<th class="input_txt">제목</th>
<td><select name="itemcd" required fld_esssential label="질문유형" class=select>
<option value="">선택해주세요.</option>
<option value="01">함께할 끼니</option>
<option value="11">추천할 끼니</option>
<option value="02">광고 문의</option>
</select><br>
<input type=text name=subject style="width:100%" required fld_esssential label="제목" value="">
</td>
</tr>
<tr>
<th class="input_txt">이메일</th>
<td>
<input type=text name=email value="hong@naver.com" size=26 readonly="readonly" class="read_only">
<span class="noline smalle" style="padding-left:10px"><input type=checkbox name=mailling><span style="font-size:8pt;">알림을 이메일로 받겠습니다.</span></span>
</td>
</tr>
<tr>
<th class="input_txt">문자메시지</th>
<td>
<input type=text name=mobile[] value="010-1234-5678" readonly="readonly" class="read_only">
 <span class="noline smalle" style="padding-left:10px"><input type=checkbox name=sms><span style="font-size:8pt;">알림을 문자메시지로 받겠습니다.</span></span>
</td>
</tr>
<tr>
<th class="input_txt">내용</th>
<td class="edit_area" style="position: relative;">

<style>
#qnaNotice .qna_goods{display:none}
</style>
<div id="qnaNotice">
<div class="inner_qnaNotice" v-if="layerOn">
<div class="notice_qna" v-html="getData"></div>
</div>
</div>
<script>
                                var qnaNotice = new Vue({
                                    el: '#qnaNotice',
                                    data: {
                                        getData : null,
                                        layerOn : true
                                    },
                                    methods: {
                                        update:function(){
                                            var $self = this;
                                            $.ajax({
                                                type:'GET',
                                                url: campaginUrl + 'pc/notice/qna_info.html',
                                                datatype: 'html',
                                                async : true,
                                            }).done(function(result){
                                                $self.getData = result;
                                            });
                                        }
                                    }
                                });
                                $(document).ready(function(){
                                    qnaNotice.update();
                                });
                            </script>

<textarea name=contents style="width:100%;height:474px;" class="editing_area" required fld_esssential label="내용"></textarea>
</td>
</tr>
</table>

<table width=100%>
<tr>
<td align=right style="padding-top:5px; border:none;" id="avoidDbl">
<input type="submit" class="bhs_button yb" value="저장" style="float:none;">
</td>
</tr>
</table>
</form>
</div>

</div>
</div>
<script type="text/javascript">
    function order_open(){
        var divEl = document.getElementById('ifm_order');
        divEl.style.display = "block";
        if( divEl.src == '' ) divEl.src = "mypage_qna_order.php";

        // KM-1483 Amplitude 연동
        KurlyTracker.setScreenName('personal_inquiry_writing_order_history_selection');
    }

    function order_close(){
        var divEl = document.getElementById('ifm_order');
        divEl.style.display = "none";
    }

    function order_put( ordno ){
        document.fm.ordno.value = ordno;
        order_close();
    }

    function add(){
        var table = document.getElementById('table');
        var reviewFileNum = "5";
        if (table.rows.length>=parseInt(reviewFileNum)){
            alert("업로드는 최대 "+reviewFileNum+"개만 지원합니다");
            return;
        }
        var tr_num = table.rows.length;
        oTr		= table.insertRow( table.rows.length );
        oTr.id	= "tr_"+(tr_num);
        oTd1		= oTr.insertCell(0);
        oTd1.style.textAlign = "center";
        oTd2		= oTr.insertCell(1);
        tmpHTML = "<input type=file name='file[]' style='width:50%' class=line> <a href=\"javascript:del('"+"tr_"+(tr_num)+"')\"><img src='/shop/data/skin/designgj/img/common/btn_upload_minus.gif' align=absmiddle></a>";
        oTd2.innerHTML = tmpHTML;
        calcul();
    }
    function del(index,ncode)
    {
        var table = document.getElementById('table');
        for (i=0;i<table.rows.length;i++) if (index==table.rows[i].id) table.deleteRow(i);
        calcul();
    }
    function calcul()
    {
        var table = document.getElementById('table');
        for (var i=0;i<table.rows.length;i++){
            table.rows[i].cells[0].innerHTML = i+1;
        }
    }

    // KM-1483 Amplitude 연동
    KurlyTracker.setScreenName('personal_inquiry_writing');
</script>
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
법인명 (상호) : 주식회사 컬리 <span class="bar">I</span> 사업자등록번호 : 261-81-23567 <a href="javascript:alert('준비중입니다.');" onfocus="this.blur()">사업자정보 확인</a>
<br>
통신판매업 : 제 2018-서울강남-01646 호 <span class="bar">I</span> 개인정보보호책임자 : 이원준
<br>
주소 : 서울시 도산대로 16길 20, 이래빌딩 B1 ~ 4F <span class="bar">I</span> 대표이사 : 김슬아
<br>
입점문의 : <a href="javascript:alert('준비중입니다.');" onfocus="this.blur()">입점문의하기</a> <span class="bar">I</span> 제휴문의 : <a href="mailto:business@kurlycorp.com" class="link">business@kurlycorp.com</a>
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

<script>
	$(document).ready(function(){
		var pageTop = {
			$target : $('#pageTop'),
			$targetDefault : 0,
			$scrollTop : 0,
			$window : $(window),
			$windowHeight : 0,
			setTime : 500,
			saveHeight : 0,
			init:function(){
			},
			action:function(){
				var $self = this;
				$self.$windowHeight = parseInt($self.$window.height());
				$self.$window.on('scroll', function(){
					$self.$scrollTop = parseInt($self.$window.scrollTop());
					if($self.$scrollTop >= $self.$windowHeight){
						if(!$self.$target.hasClass('on')){
							$self.position();
							$self.$target.addClass('on');
							$self.showAction();
						}
					}else{
						if($self.$target.hasClass('on')){
							$self.position();
							$self.$target.removeClass('on');
							$self.hideAction();
						}
					}
				});

				$self.$target.on('click', function(e){
					e.preventDefault();
					$self.topAction();
				});
			},
			showAction:function(){
				var $self = this;
				$self.$target.stop().animate({
					opacity:1,
					bottom:$self.saveHeight
				}, $self.setTime);
			},
			hideAction:function(){
				var $self = this;
				$self.$target.stop().animate({
					opacity:0,
					bottom:-$self.$target.height()
				}, $self.setTime);
			},
			topAction:function(){
				var $self = this;
				$self.hideAction();
				$('html,body').animate({
					scrollTop:0
				}, $self.setTime);
			},
			position:function(){
				var $self = this;
				$self.saveHeight = 15;
				if($('#sectionView').length > 0){
					$self.saveHeight = 25;
				}
				if($('#branch-banner-iframe').length > 0 && parseInt( $('#branch-banner-iframe').css('bottom') ) > 0){
					$('#footer').addClass('bnr_app');
					$self.saveHeight += $('#branch-banner-iframe').height();
				}
			}
		}
		pageTop.action();
	});
</script>

<script>
// 클릭인인경우(푸터에 있으나, 아직공용작업은 못함) => bgLoading 이부분 처리필요
var bodyScroll = {
	winScrollTop : 0,
	body : $('body'),
	gnb : $('#gnb'),
	bg : $('#bgLoading'),
	bodyFixed : function(){
		var $self = this;
		var gnbCheck = false;
		$self.gnb = $('#gnb');
		if($self.gnb.hasClass('gnb_stop')){
			gnbCheck = true;
		}
		$self.body = $('body');
		$self.bg = $('#bgLoading');
		$self.winScrollTop = $(window).scrollTop();
		$self.bg.show();
		$self.body.addClass('noBody').css({
			'top' : -$self.winScrollTop
		});
	},
	bodyDefault : function(type){
		var $self = this;
		$self.body.removeClass('noBody').removeAttr('style');
		$self.bg.hide();
		if(type === undefined){
			window.scrollTo(0, $self.winScrollTop);
		}
	}
}
</script>

<iframe name="ifrmHidden" id="ifrmHidden" src="about:blank" style="display:none;width:100%;height:600px;"></iframe>
<script>
(function (theFrame) {
  theFrame.contentWindow.location.href = theFrame.src;
}(document.getElementById("ifrmHidden")));
</script>


<script src="https://res.kurly.com/js/polifill/customeEvent.js"></script>
<script>
	window.addEventListener('load', function () {
		// KM-1238 branch
		(function(b,r,a,n,c,h,_,s,d,k){if(!b[n]||!b[n]._q){for(;s<_.length;)c(h,_[s++]);d=r.createElement(a);d.async=1;d.src="https://cdn.branch.io/branch-latest.min.js";k=r.getElementsByTagName(a)[0];k.parentNode.insertBefore(d,k);b[n]=h}})(window,document,"script","branch",function(b,r){b[r]=function(){b._q.push([r,arguments])}},{_q:[],_v:1},"addListener applyCode autoAppIndex banner closeBanner closeJourney creditHistory credits data deepview deepviewCta first getCode init link logout redeem referrals removeListener sendSMS setBranchViewData setIdentity track validateCode trackCommerceEvent logEvent disableTracking".split(" "), 0);
    var BRANCHKEY = 'key_live_meOgzIdffiVWvdquf7Orkacksxa2LneN';
    if(!webStatus.is_release_build){
      BRANCHKEY = 'key_test_joIkrHgomhL3qaEreXL5QdigzEn6Ucd4';
    }
    branch.init(BRANCHKEY);
		branch.setIdentity(uuidCheck);
		branch.track("pageview");

		// branchReady
		var _eventBranchReady = new CustomEvent("branchReady", {
			detail:{ // 전달 할께 있으면 반드시 detail 오브젝트에 넣어야 함
				val:'1',
			}
		});
		document.dispatchEvent(_eventBranchReady);
		// END branchReady
	}, false);
</script>



</body>
</html>