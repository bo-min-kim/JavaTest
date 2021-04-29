<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../common/common.jsp" %>    
<!DOCTYPE>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	 <style>
      p { margin:20px 0px; }
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
      
    </style>
    <script type="text/javascript">
		function updateForm(){
				location.href='<%=contextPath%>/update.rk';
		}
	</script>	
  </head>
  <body>
    <div class="container">
      <div class="row">
<div id="btn_group" style="margin-top:20px;margin-bottom:30px;"> 
<button id="test_btn1" style="margin-left:980px;" onclick="updateForm();">추 가</button> <button id="test_btn1" style="margin-left:8px;">전체보기</button> 
</div>
</div>

        <div class="col">
            <ul class="nav nav-tabs">
              <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#qwe"style="color:purple">인생맛집 </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#asd" style="color:purple">가봤어유 </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#zxc"style="color:purple">가볼래유  </a>
              </li>
            </ul>
             <div class="tab-content">
              <div class="tab-pane fade show active" id="qwe">
             <table class="table table-striped">
             <thead>
             <tr>
             	<th> 순위  </th>
             	<th>상호명</th>
             	<th>주 소 </th>
             	<th>음식  </th>
             	<th>메모 </th>
              <th>수정 / 삭제</th> </tr>
             </thead>
              	<c:forEach var="bean" items="${requestScope.lists}">
               <tr>
				<th>${bean.rk_no}</th>      
             	<th>${bean.rk_restaurant} </th>
             	<th>${bean.rk_address}</th>
             	<th>${bean.rk_menu}</th>
             	<th>${bean.rk_memo}</th>
             	<th><a href="https://www.naver.com/"> 수정</a>&nbsp;&nbsp; <a href="https://www.naver.com/">삭제</a></th>           
              </tr>
              </c:forEach>
                  </table>
              </div>
              <div class="tab-pane fade" id="asd">
				<table class="table table-striped">
              <thead>
             <tr>
                <th>순 번 </th>      
             	<th>상호명</th>
             	<th>주 소 </th>
             	<th>음 식  </th>
             	<th>메 모 </th>
         	<th>수정 / 삭제</th></tr>
             </thead>
            <tr>
				<th>1 </th>      
             	<th>을지로 갈매기 </th>
             	<th>서울 을지로 </th>
             	<th>갈매기 살 </th>
             	<th>수요 미식회  </th>
             	<th><a href="https://www.naver.com/"> 수정</a>&nbsp;&nbsp; <a href="https://www.naver.com/">삭제</a></th>           
              </tr>
              <tr>
				<th>2 </th>      
             	<th>미분당 </th>
             	<th>서울 신촌 </th>
             	<th>쌀국수  </th>
             	<th>지인추천 </th>
             	<th><a href="https://www.naver.com/"> 수정</a>&nbsp;&nbsp; <a href="https://www.naver.com/">삭제</a></th>           
              </tr>
              <tr>
				<th>3 </th>      
             	<th> 이바이 순대 </th>
             	<th>서울 을지로 </th>
             	<th>순댓국 </th>
             	<th>수요 미식회  </th>
             	<th><a href="https://www.naver.com/"> 수정</a>&nbsp;&nbsp; <a href="https://www.naver.com/">삭제</a></th>           
              </tr>
              <tr>
				<th>4</th>      
             	<th>떡뽁기 </th>
             	<th>서울 을지로 </th>
             	<th>갈매기 살 </th>
             	<th>수요 미식회  </th>
             	<th><a href="https://www.naver.com/"> 수정</a>&nbsp;&nbsp; <a href="https://www.naver.com/">삭제</a></th>           
              </tr>
              <tr>
				<th>5</th>      
             	<th>차돌박이 </th>
             	<th>서울 신촌 </th>
             	<th>쌀국수  </th>
             	<th>지인추천 </th> 
             	<th><a href="https://www.naver.com/"> 수정</a>&nbsp;&nbsp; <a href="https://www.naver.com/">삭제</a></th>          
              </tr>
              <tr>
				<th>6</th>      
             	<th> 설렁탕 </th>
             	<th>서울 을지로 </th>
             	<th>순댓국 </th>
             	<th>수요 미식회  </th>
             	<th><a href="https://www.naver.com/"> 수정</a>&nbsp;&nbsp; <a href="https://www.naver.com/">삭제</a></th>           
              </tr><tr>
				<th>7</th>      
             	<th>쌀국수 </th>
             	<th>서울 을지로 </th>
             	<th>갈매기 살 </th>
             	<th>수요 미식회  </th> 
				<th><a href="https://www.naver.com/"> 수정</a>&nbsp;&nbsp; <a href="https://www.naver.com/">삭제</a></th>
                  
              </tr>
              <tr>
				<th>8</th>      
             	<th>해장국 </th>
             	<th>서울 신촌 </th>
             	<th>쌀국수  </th>
             	<th>지인추천 </th>
       <th><a href="https://www.naver.com/"> 수정</a>&nbsp;&nbsp; <a href="https://www.naver.com/">삭제</a></th>
             	           
              </tr>
              <tr>
				<th>9 </th>      
             	<th>모든 전 </th>
             	<th>서울 을지로 </th>
             	<th>순댓국 </th>
             	<th>수요 미식회  </th>
        <th><a href="https://www.naver.com/"> 수정</a>&nbsp;&nbsp; <a href="https://www.naver.com/">삭제</a></th>
             	           
              </tr>
              <tr>
				<th>10</th>      
             	<th> 디저트 </th>
             	<th>서울 을지로 </th>
             	<th>순댓국 </th>
             	<th>수요 미식회  </th>     
   <th><a href="https://www.naver.com/"> 수정</a>&nbsp;&nbsp; <a href="https://www.naver.com/">삭제</a></th>
             	      
              </tr>
             </table>
                </div>
              <div class="tab-pane fade" id="zxc">
              <table class="table table-striped">
             <thead>
             <tr>
                <th>순 번 </th>      
             	<th>상호명</th>
             	<th>주 소 </th>
             	<th>음 식  </th>
             	<th>메 모 </th>
            	<th>수정 / 삭제</th>
             	
                </tr>
             </thead>
               <tr>
				<th>1 </th>      
             	<th>을지로 갈매기 </th>
             	<th>서울 을지로 </th>
             	<th>갈매기 살 </th>
             	<th>수요 미식회  </th>     
             	             		<th><a href="https://www.naver.com/"> 수정</a>&nbsp;&nbsp; <a href="https://www.naver.com/">삭제</a></th>
             	      
              </tr>
             <tr>
				<th>2 </th>      
             	<th>미분당 </th>
             	<th>서울 신촌 </th>
             	<th>쌀국수  </th>
             	<th>지인추천 </th>           
             	             		<th><a href="https://www.naver.com/"> 수정</a>&nbsp;&nbsp; <a href="https://www.naver.com/">삭제</a></th>
             	
              </tr>
              <tr>
				<th>3 </th>      
             	<th> 이바이 순대 </th>
             	<th>서울 을지로 </th>
             	<th>순댓국 </th>
             	<th>수요 미식회  </th>          
             	             		<th><a href="https://www.naver.com/"> 수정</a>&nbsp;&nbsp; <a href="https://www.naver.com/">삭제</a></th>
             	 
              </tr>
             	
             </table>
              </div>
            </div>
        </div>
      </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  </body>
</html>
