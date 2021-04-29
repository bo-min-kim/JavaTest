package mypkg.customersound;


import java.io.IOException;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mypkg.bean.CustomerSound;
import mypkg.common.SuperClass;
import mypkg.dao.CustomerDao;


public class CustomerInsertCustormerController extends SuperClass{
	private CustomerSound bean = null ;
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doGet(request, response);
		
		String gotopage = "/customersound/cuCustormerInsert.jsp";
		super.GotoPage(gotopage);
	}
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		bean  = new CustomerSound();
		//bean.setNo(no); //시퀀스는 필요 없음
		bean.setContent( request.getParameter("content") );
		bean.setPhone( request.getParameter("phone") );
		bean.setReason( request.getParameter("reason") );
		bean.setName( request.getParameter("name") );	
		

		System.out.println( bean );
		
		if ( this.validate( request ) == false ) {			
			request.setAttribute("bean", bean);
			
			super.doPost(request, response);
		
			String gotopage = "/customersound/cuCustormerInsert.jsp";
			super.GotoPage(gotopage);
		}else{
			//DAO 객체를 생성한다.
			CustomerDao dao = new CustomerDao();			
			int cnt = -99999 ; 			
			//Bean 객체를 이용하여 해당 게시물을 추가한다.
			cnt = dao.InsertData(bean) ;	
			
			super.doPost(request, response);
			super.session.setAttribute( "message" , "접수되었습니다. 더 나은 병원이 되겠습니다." );
			
			String gotopage = "/common/main.jsp";
			super.GotoPage(gotopage);
		
		}
	}
	
	@Override
	public boolean validate(HttpServletRequest request) {
		final String PREFIX = "err" ;
		boolean isCheck = true ; //기본 값으로 true이고, 유효성 검사에 문제가 생기면 false으로 변경
		
		if( bean.getName().length() < 2  ){
			request.setAttribute( PREFIX + "name", " 성함은 2글자 이상 이어야 합니다.");
			isCheck = false  ;
		}
		if( bean.getPhone().length() != 11 ){
			request.setAttribute( PREFIX + "phone", "전화 번호는 11자리로 입력 해주세요.");
			isCheck = false  ;
		}
		if( bean.getContent().length() < 5 || bean.getContent().length() > 200 ){
			request.setAttribute( PREFIX + "content", "글 내용은 5자리 이상 200자리 이하이어야 합니다.");
			isCheck = false  ;
		}
		return isCheck ;
	}
}
