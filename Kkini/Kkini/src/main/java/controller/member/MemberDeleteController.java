package controller.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import bean.Member;
import controller.common.SuperClass;
import dao.MemberDao;

@Controller // 회원 탈퇴를 합니다.
public class MemberDeleteController extends SuperClass{
	private final String command = "/delete.me"; // 요청 커맨드(변경 요망)
	private final String redirect = "redirect:/xxx.me"; // 리다이렉션(변경 요망)
	
	// 뷰에 넘겨줄 ModelAndView 객체
	private ModelAndView mav = null;
	
	@Autowired
	@Qualifier("mdao") // (변경 요망)
	private MemberDao mdao; // (변경 요망)
	
	public MemberDeleteController() {
		super("meLoginForm", null); // super(getpage, postpage)
		this.mav = new ModelAndView();
	}
	
	@GetMapping(command)
	public ModelAndView doGet(
			@RequestParam(value = "me_id", required = true) String me_id,
			HttpSession session) {
		
		Member bean = this.mdao.SelectDataByPk(me_id);
		
		int cnt = -999999;
		cnt = this.mdao.DeleteData(bean);
		
		// 탈퇴하는 사람에 대한 세션 정보를 완전히 비웁니다.
		session.invalidate();
		
		this.mav.setViewName(super.getpage);
		return this.mav;
	}
	
//	@PostMapping(command)
//	public ModelAndView doPost() {
//		this.mav.setViewName(super.getpage);
//		return this.mav;
//	}
}
