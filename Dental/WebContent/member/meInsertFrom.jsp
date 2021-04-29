<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>

<!doctype html>
 
 <%
	int myoffset = 2;
	int mywidth = twelve - 2 * myoffset;
	int formleft = 3;
	int formright = twelve - formleft;
%>
<html>
<head>
  <style type="text/css">
  .cotainer{	
  position: absolute;
  top: 10%;
  width: 70%;
  left: 15%;
  text-align: center;
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
		function checkDuplicateId(  ){
			var id = document.myform.id.value ;
			if( id.length == 0 ){
				alert('아이디를 입력해 주세요') ;
				document.myform.id.focus() ; 
				return false ;
			}
			var url='<%=NoForm%>meIdcheck&id=' + id ; 
			window.open(url, 'mywin', 'height=150,width=300') ;
		}
		
		function findZipcode( ){
			var url='<%=NoForm%>meZipcheck';
			window.open(url, 'mywin',
				'height=600,width=720,status=yes,scrollbars=yes,resizable=no');
		}
		
	function isCheckFalse() {
		document.myform.isCheck.value = false;
	}
	function checkForm() {
		var isCheck = document.myform.isCheck.value;
		//alert( isCheck ) ;
		if (isCheck == 'false') {
			alert('아이디 중복 체크를 우선 해주세용.');
			return false;
		}
		
		var name = document.myform.name.value;
		if (name.length < 1 || name.length > 10) {
			var namechk = document.getElementById('namechk');
			namechk.innerHTML = '이름은 1글자 이상 10글자 이하이여야 합니다.';
			return false;
		}
		
		/* 비밀번호는 5글자 이상 10글자 이하이여야 합니다. */
		var password = document.myform.password.value;
		if (password.length < 4) {
			var passwordchk = document.getElementById('passwordchk');
			passwordchk.innerHTML = '비밀번호는 4글자 이상이여야 합니다.';
			return false;
		}
		
		/* 비밀 번호가 일치하지 않습니다. */
		var repassword = document.myform.repassword.value;
		if (repassword != password) {
			var repasswordchk = document.getElementById('repasswordchk');
			repasswordchk.innerHTML = '비밀 번호가 일치하지 않습니다.';
			return false;
		}
		
		/* 생년월일 확인 */
		var birthdate = document.myform.birthdate.value;
		var regex = /^\d{4}[-/]\d{2}[-/]\d{2}$/;
		
		if (birthdate.search(regex) == -1) { 
			var birthdatechk = document.getElementById('birthdatechk');
			birthdatechk.innerHTML = 'yyyy/MM/dd 또는 yyyy-MM-dd 형식으로 입력해 주세요.';
			return false; /* 이벤트 전파 방지 */
		}
		
		
		/* getElementsByName에서 s있는거 주의 */
		var optradio = document.getElementsByName('gender');
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
			var genderchk = document.getElementById('genderchk');
			genderchk.innerHTML = '성별은 필수 사항 입니다.';
			return false;
		}
		
		var phone = document.myform.phone.value;
		
		var regex_phone = /^\d{10,11}$/;
		
		if (phone.search(regex_phone) == -1) {
			var phonechk = document.getElementById('phonechk');
			phonechk.innerHTML = '전화번호는 10자리 또는 11자리 숫자만 기입해주세요.';
			return false;
		}
		
		var address1 = document.myform.address1.value;
		if (address1.length < 1) {
			var address1chk = document.getElementById('address1chk');
			address1chk.innerHTML = '주소는 필수 사항 입니다.';
			return false;
		}
		
		var address2 = document.myform.address2.value;
		if (address2.length < 1) {
			var address2chk = document.getElementById('address2chk');
			address2chk.innerHTML = '세부주소는 필수 사항 입니다.';
			return false;
		}
		
	}
</script>
</head>
<body>
    <div class="cotainer" id="containerSize">
	<br><br><br>
        <div class="row justify-content-center">
            <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">회원 가입</div>
                        <div class="card-body">
                       		 <form id="myform" name="myform" role="form" action="<%=YesForm%>" method="post">
                       		 		<input type="hidden" name="command" value="meInsert"> <input
										type="hidden" name="isCheck" value="false"> <input
										type="hidden" name="mpoint" value="5">
 	                            <div class="form-group row">
                                    <label for="id" class="col-md-4 col-form-label text-md-right">아이디</label>
                                    <div class="col-md-6">
                                        <input type="text" name="id" id="id" class="form-control"
                                     	 placeholder="최소 3자이상 입력하세요." value="${requestScope.bean.id}"
										 onkeyup="isCheckFalse();"> <span class="err" id="spanid">${errid}</span>
                                    </div>
                                    <div class="col-xs-<%=2%> col-lg-<%=2%>" align="left">
										<input type="button" class="btn btn-info" value="중복 검사" onclick="checkDuplicateId();">
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
                                    <label for="password" class="col-md-4 col-form-label text-md-right">비밀번호</label>
                                    <div class="col-md-6" align="left">
                                     	<input type="password" name="password" id="password"
											class="form-control" placeholder="비밀번호는 4글자 이상이여야 합니다." value=""> 
										<span id="passwordchk" class="error"></span>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="repassword" class="col-md-4 col-form-label text-md-right">비밀번호 재확인</label>
                                    <div class="col-md-6" align="left">
                                     	<input type="password" name="repassword" id="repassword"
											class="form-control" placeholder="비밀번호는 재확인" value=""> 
										<span id="repasswordchk" class="error"></span>
                                    </div>
                                </div>
     							 <div class="form-group row">
                                    <label for="birthdate" class="col-md-4 col-form-label text-md-right">생년월일</label>
                                    <div class="col-md-6"  align="left">
                                        <input type="text" name="birthdate" id="birthdate" class="form-control" placeholder="YYYY/MM/DD">
										<span id="birthdatechk" class="error"></span>
                                    </div>
                                </div>      
                                <div class="form-group row">
                                    <label for="gender" class="col-md-4 col-form-label text-md-right">성별</label>
                                    <div class="col-md-6"  align="left">
	                                   	<label class="radio-inline">                                    	
	                                   		<input type="radio" name="gender" id="gender1" value="남자">남자
										</label> &nbsp;&nbsp;<label class="radio-inline"> 
											<input type="radio" name="gender" id="gender2" value="여자">여자
										</label> 
									<span id="genderchk" class="error"></span>
									</div>
								 </div>  
								 
                             
								 <div class="form-group row">
                                    <label for="phone_number" class="col-md-4 col-form-label text-md-right">전화번호</label>
                                    <div class="col-md-6"  align="left">
                                    	<input type="text" name="phone" id="phone"
											class="form-control" placeholder="숫자만 기입하여 주세요. ex) 01012345678" value=""> 
											<span id="phonechk" class="error"></span>
                                    </div>
                                </div>                                
                                <div class="form-group row">
                                    <label for="email" class="col-md-4 col-form-label text-md-right">이메일 주소</label>
                                    <div class="col-md-6"  align="left">
                                        <input type="text" id="email" class="form-control" name="email">
                                    </div>
                                </div>
                                 <div class="form-group row">
                                    <label for="zip_code" class="col-md-4 col-form-label text-md-right">우편번호</label>
                                    <div class="col-md-6">
                                      <input type="text" name="fakezipcode" id="fakezipcode"
										class="form-control" disabled="disabled" placeholder="우편 번호"
										value=""> <input type="hidden" name="zipcode"
										id="zipcode" value="">
                                    </div>
											<div class="col-xs-<%=1%> col-lg-<%=1%>" align="left">
												<input type="button" class="btn btn-info" value="우편 번호 찾기"
													onclick="findZipcode();">
											</div>
                                </div>                         
                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right">주소</label>
                                    <div class="col-md-6"  align="left">
										<input type="text" name="fakeaddress1" id="fakeaddress1"
											class="form-control" disabled="disabled" placeholder="주소"
											value=""> <input type="hidden" name="address1"
											id="address1" value="">
											<span id="address1chk" class="error"></span>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="permanent_address" class="col-md-4 col-form-label text-md-right">상세주소</label>
                                    <div class="col-md-6"  align="left">
                                		<input type="text" name="address2" id="address2"
											class="form-control" placeholder="세부 주소" value="">
										<span id="address2chk" class="error"></span>
                                    </div>
                                </div>
							


                                 <div class="col-md-6 offset-md-4">
                                        <button type="submit" class="btn btn-primary" onclick="return checkForm();">>
                                        가입하기
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
	</script>
</body>
</html>