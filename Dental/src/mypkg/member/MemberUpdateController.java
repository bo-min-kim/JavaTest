package mypkg.member;

import java.io.IOException;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mypkg.bean.Member;
//import mypkg.board.BoardListController;
import mypkg.common.SuperClass;
import mypkg.dao.MemberDao;

public class MemberUpdateController extends SuperClass{
	private Member bean = null ;
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 폼에서 넘겨진 파라미터를 챙깁니다.
		bean = new Member();
		bean.setAddress1(request.getParameter("address1")) ;
		bean.setAddress2(request.getParameter("address2")) ;
		bean.setGender(request.getParameter("gender")) ;
		bean.setBirthdate(request.getParameter("birthdate")) ;
		
		bean.setPhone(request.getParameter("phone"));
		bean.setEmail(request.getParameter("email"));
		
		bean.setId(request.getParameter("id")) ;
		
		
		// 마일리지 포인트는 회원이 변경하지 못합니다.
		// bean.setMpoint(Integer.parseInt(request.getParameter("mpoint"))) ;
		
		bean.setName(request.getParameter("name")) ;
		bean.setPassword(request.getParameter("password")) ;
		
		bean.setZipcode(request.getParameter("zipcode")) ;
		
		String gotopage = "" ;
		
		if (this.validate(request) == true) { //유효성 검사 성공
			MemberDao dao = new MemberDao();
			int cnt = -999999 ;//실패의 의미로 작성한 의미 없는 숫자
			cnt = dao.UpdateData(bean) ;
			
			// 게시물 목록을 위한 컨트롤러 객체 생성 후 doGet() 메소드 호출 
			//new BoardListController().doGet(request, response) ;
			request.setAttribute("bean", bean);
			super.doPost(request, response);
			gotopage = "/member/meDetailView.jsp" ;
			super.GotoPage(gotopage);	
			
		}else { //유효성 검사 실패
			
			request.setAttribute("bean", bean);
			super.doPost(request, response);
			gotopage = "/member/meUpdateForm.jsp" ;
			super.GotoPage(gotopage);			
		}
		
		//super.doPost(request, response);		
	}
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		
		MemberDao dao = new MemberDao();
		
		// bean 객체 : 로그인 한 사람의 정보
		Member bean = dao.SelectDataByPk(id);
		
		super.doGet(request, response);
		request.setAttribute("bean", bean);
		
		String gotopage = "/member/meUpdateForm.jsp" ;
		super.GotoPage(gotopage);
	}	
	@Override
	public boolean validate(HttpServletRequest request) {
		boolean isCheck = true ;
		
		if(bean.getId().length() < 4 || bean.getId().length() > 10) {
			request.setAttribute(super.PREFIX + "id", "아이디는 4자리 이상 10자리이어야 합니다.");
			isCheck = false ;
		}
		
		if( bean.getName().length() < 2 || bean.getName().length() > 10 ){
			request.setAttribute( super.PREFIX + "name", "이름은 2자리 이상 10자리 이하이어야 합니다.");
			isCheck = false  ;
		}
		if( bean.getPassword().length() < 4 || bean.getPassword().length() > 10 ){
			request.setAttribute( super.PREFIX + "password", "비밀 번호는 4자리 이상 10자리 이하이어야 합니다.");
			isCheck = false  ;
		}
		if( bean.getGender() == null){
			request.setAttribute( super.PREFIX + "gender", "성별은 반드시 체크가 되어야 합니다.	");
			isCheck = false  ;
		}
		
		if( bean.getPhone().length() < 10 || bean.getPhone().length() > 11 ){
			request.setAttribute( super.PREFIX + "phone", "전화번호는 10자리 이상 11자리 이하이어야 합니다.");
			isCheck = false  ;
		}
		
		if( bean.getEmail().length() < 4 || bean.getEmail().length() > 20 ){
			request.setAttribute( super.PREFIX + "email", "이메일주소를 입력해주세요.");
			isCheck = false  ;
		}
		

		String regex = "\\d{4}[-/]\\d{2}[-/]\\d{2}" ; // 정규 표현식
		if( bean.getBirthdate() == null){
			bean.setBirthdate( "" );
		}
		boolean result = Pattern.matches(regex, bean.getBirthdate());
		if (result == false ) {
			request.setAttribute( super.PREFIX + "birthdate", "날짜는 yyyy/MM/dd 또는 yyyy-MM-dd 형식으로 입력해 주세요.");
			isCheck = false  ;
		}

		if( bean.getZipcode() == null || bean.getZipcode() == ""){
			request.setAttribute( super.PREFIX + "zipcode", "우편 번호는 필수 사항입니다.");
			isCheck = false  ;
		}
		if( bean.getAddress1() == null || bean.getAddress1() == "" ){
			request.setAttribute( super.PREFIX + "address1", "주소는 필수 사항입니다.");
			isCheck = false  ;
		}
		
		return isCheck ;
	}
}











