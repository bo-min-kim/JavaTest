package controller.member;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import bean.CheckBean;
import bean.Member;
import controller.common.SuperClass;
import dao.MemberDao;

@Controller
public class MemberInsertController extends SuperClass{
	private final String command = "/insert.me"; // 요청 커맨드
	private final String redirect = "redirect:/login.me"; // 리다이렉션
	
	// 뷰에 넘겨줄 ModelAndView 객체
	private ModelAndView mav = null;
	
	@Autowired
	@Qualifier("mdao") 
	private MemberDao mdao; 
	
	public MemberInsertController() {
		// (변경 요망)
		super("meInsertForm", null); // super(getpage, postpage)
		this.mav = new ModelAndView();
	}
	
	@ModelAttribute("member")
	public Member some() {
		return new Member();
	}
	
//	@ModelAttribute("checklist")
//	public List<CheckBean> aaa(){
//		List<CheckBean> lists = this.mdao.GetList("member", "hobby", "checkbox");
//		return lists;
//	}
//	
//	@ModelAttribute("radiolist")
//	public List<CheckBean> bbb(){
//		List<CheckBean> lists = this.mdao.GetList("member", "gender", "radio");
//		return lists;
//	}
	
	@ModelAttribute("selectlist")
	public List<CheckBean> ccc(){
		List<CheckBean> lists = this.mdao.GetList("member", "me_catagory", "select");
		return lists;
	}
	
	@GetMapping(command)
	public ModelAndView doGet() {
		this.mav.setViewName(super.getpage);
		return this.mav;
	}
	
	@PostMapping(command)
	public ModelAndView doPost(
			@ModelAttribute("member") @Valid Member xxx,
			BindingResult error) {
		
		if (error.hasErrors()) {
			System.out.println("유효성 검사에 문제가 있습니다.");
			this.mav.setViewName(super.getpage);
		}else {
			System.out.println("유효성 검사에 문제가 없습니다.");
			// 회원 가입을 한다음, 로그인 페이지로 다시 이동합니다.
			this.mdao.InsertData(xxx);
			
			this.mav.setViewName(this.redirect);
		}
		
		return this.mav;
	}
}
