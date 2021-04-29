<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>

<!doctype html>
<html>
<link rel="stylesheet" type="text/css" href="${contextPath}/js/jquery.ui.css">
<script type="text/javascript" src="${contextPath}/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="${contextPath}/js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="${contextPath}/js/jquery.ul.js"></script>
<script type="text/javascript" src="${contextPath}/js/jquery.easing.js"></script>
<script type="text/javascript" src="${contextPath}/js/jquery.form.js"></script>
<script type="text/javascript" src="${contextPath}/js/jquery.datepicker.js"></script>
<head>
  <style type="text/css">
  .cotainer{	
  position: absolute;
  top: 10%;
  width: 70%;
  left: 16%;
  text-align: center;
  padding-left: 5%;
  padding-right: 5%;
  }
  .card-header{
  font-size: 1.3em;
  font-weight: bold;
  }
  .error{
  color: #dc3545;
  }
 </style>
 <script type="text/javascript">
	 	$(function(){
			$("#redate").datepicker();
		})
 		function checkForm() {
			/* 예약날짜 확인 */
			var redate = document.myform.redate.value;
			var regex = /^\d{4}[-/]\d{2}[-/]\d{2}$/;
			
			if (redate.search(regex) == -1) { 
				var redatechk = document.getElementById('redatechk');
				redatechk.innerHTML = 'yyyy-MM-dd 형식으로 입력해 주세요.';
				return false; /* 이벤트 전파 방지 */
			}
			
			var rehour = document.myform.rehour.value;
			if (rehour == 'all') { /* 시간을 선택안함 */
				var rehourchk = document.getElementById('rehourchk');
				rehourchk.innerHTML = '시간을 선택해 주세요.';
				return false;
			}
			
			var name = document.myform.name.value;
			if (name.length < 1 || name.length > 10) {
				var namechk = document.getElementById('namechk');
				namechk.innerHTML = '이름은 1글자 이상 10글자 이하이여야 합니다.';
				return false;
			}
			
			/* getElementsByName에서 s있는거 주의 */
			var optradio = document.getElementsByName('sector');
			var ischk = false; //성별 체크 여부 
			
			for (var i = 0; i < optradio.length; i++) {
				if (ischk == false) {
					if (optradio[i].checked == true) {
						ischk = true;
						break;
					}
				}
			}
			
			if (ischk == false) {
				var sectorchk = document.getElementById('sectorchk');
				sectorchk.innerHTML = '진료과목은 필수 사항 입니다.';
				return false;
			}
			
			var rephone = document.myform.rephone.value;
			
			var regex_rephone = /^\d{10,11}$/;
			
			if (rephone.search(regex_rephone) == -1) {
				var rephonechk = document.getElementById('rephonechk');
				rephonechk.innerHTML = '전화번호는 10자리 또는 11자리 숫자만 기입해주세요.';
				return false;
			}
			
			var comments = document.myform.comments.value;
			if (comments.length < 5 || comments.length > 200) {
				var commentschk = document.getElementById('commentsechk');
				commentschk.innerHTML = '내용은 5글자 이상 200글자 이하이여야 합니다.';
				return false;
			}
		
			return true;
	 	
	 	}
		
	
</script>
</head>
<body>
    <div class="cotainer" id="containerSize">
	<br><br><br>
        <div class="row justify-content-center">
            <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">온라인 예약</div>
                        <div class="card-body">
                       		 <form id="myform" name="myform" role="form" action="<%=YesForm%>" method="post">
                       			<div class="form-group row">
                                    <label for="redate" class="col-md-4 col-form-label text-md-right">예약 날짜</label>
                                    <div class="col-md-6" align="left">
                                        <input type="text" id="redate" class="form-control" name="redate"> 
                                       		<span id="redatechk" class="error"></span>
                                    </div>
                                </div> 
                       		 		<input type="hidden" name="command" value="reservation"> <input
										type="hidden" name="isCheck" value="false"> 
                            
     							 <div class="form-group row">
                                    <label for="rehour" class="col-md-4 col-form-label text-md-right">시간</label>
                                    <div class="col-md-6"  align="left">
                                        <select class="form-control" name="rehour" id="rehour">
											<option value="all" selected="selected">-- 선택하세요---------
											<option value="10:00" >10 : 00
											<option value="11:00" >11 : 00									
											<option value="12:00" >12 : 00									
											<option value="14:00" >14 : 00
											<option value="15:00" >15 : 00
											<option value="16:00" >16 : 00	
											<option value="17:00" >17 : 00
										</select>
										<span id="rehourchk" class="error"></span>
                                    </div>
                                </div>      
                                <div class="form-group row">
                                    <label for="name" class="col-md-4 col-form-label text-md-right">이름</label>
                                    <div class="col-md-6" align="left">
                                        <input type="text" id="name" class="form-control" name="name" value="${requestScope.bean.name}"> 
                                       		<span id="namechk" class="error"></span>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="sector" class="col-md-4 col-form-label text-md-right">진료과 선택</label>
                                    <div class="col-md-6"  align="left">
	                                   	<label class="radio-inline">                                    	
	                                   		<input type="radio" name="sector" id="sector1" value="임플란트">임플란트
										</label> &nbsp;&nbsp;
	                                   	<label class="radio-inline">                                    	
	                                   		<input type="radio" name="sector" id="sector2" value="치아교정">치아교정
										</label> &nbsp;&nbsp;
	                                   	<label class="radio-inline">                                    	
	                                   		<input type="radio" name="sector" id="sector3" value="미백성형">미백성형
										</label> &nbsp;&nbsp;
	                                   	<label class="radio-inline">                                    	
	                                   		<input type="radio" name="sector" id="sector4" value="치주치료">치주치료
										</label> &nbsp;&nbsp;
	                                   	<label class="radio-inline">                                    	
	                                   		<input type="radio" name="sector" id="sector5" value="사랑니치료">사랑니치료
										</label> &nbsp;&nbsp;
										<label class="radio-inline"> 
											<input type="radio" name="sector" id="sector6" value="일반치료">일반치료
										</label> &nbsp;&nbsp;
									<span id="sectorchk" class="error"></span>
									</div>
								 </div>  
								 
                             
								 <div class="form-group row">
                                    <label for="rephone_number" class="col-md-4 col-form-label text-md-right">전화번호</label>
                                    <div class="col-md-6"  align="left">
                                    	<input type="text" name="rephone" id="rephone"
											class="form-control" placeholder="숫자만 기입하여 주세요. ex) 01012345678" value=""> 
											<span id="rephonechk" class="error"></span>
                                    </div>
                                </div>
                                <div class="form-group row">
									<label class="col-md-4 col-form-label text-md-right" for="comments">상담 내용</label>
									<div class="col-md-6"  align="left">
										<textarea name="comments" id="comments" rows="5" cols=""
											placeholder="상담 내용" class="form-control"></textarea>
										<span id="commentschk" class="error"></span>
									</div>
								</div>                                

                                 <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary" onclick="return checkForm();">
                                        예약하기
                                        </button>                                 
                                        <button type="button" class="btn btn-primary" onclick="gotoBack();">>
                                        취소
                                        </button>                                 
                                 </div>
                                 </form>
                               </div>
                           
                        </div>
                    </div>
            </div>
           
        </div>

	<script type="text/javascript">
		$(document).ready(function() {
			//alert('dd') ;
			$(".datepicker").datepicker();
			$("#spanid").addClass('good-result');
		});
		function gotoBack(){
			location.href='<%=NoForm%>main';
		}
	</script>
</body>
</html>