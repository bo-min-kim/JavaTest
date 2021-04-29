package mypkg.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mypkg.bean.Reservation;
import mypkg.common.SuperClass;
import mypkg.dao.BoardDao;

public class ReservationController extends SuperClass{
	private Reservation bean = null;
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		super.doGet(request, response);
		String gotopage = "board/reservationFrom.jsp" ;
		super.GotoPage(gotopage);
	}
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		bean = new Reservation();
		
		bean.setName( request.getParameter("name"));
		bean.setRephone(request.getParameter("rephone"));
		bean.setComments(request.getParameter("comments"));
		bean.setRedate(request.getParameter("redate"));
		bean.setSector(request.getParameter("sector"));
		bean.setRedate(request.getParameter("redate"));
		bean.setRehour(request.getParameter("redate"));
		
		String gotopage = "common/main.jsp";
		//DAO 객체를 생성한다.
		BoardDao mdao = new BoardDao();
		int cnt = -99999 ; 			
		//Bean 객체를 이용하여 해당 게시물을 추가한다.
		cnt = mdao.InsertData(bean) ;
		
		super.doPost(request, response);
		super.session.setAttribute( "message" , "예약이 완료되었습니다. 메인 페이지로 이동하겠습니다." );
		// 회원 가입을 성공하면, 바로 로그인되도록 처리해줍니다.
		// doGet() 메소드를 사용하면 안되욧....
		// doPost() 메소드를 호출하여 바로 로그인을 수행합니다.
		super.GotoPage(gotopage);
	}
}
