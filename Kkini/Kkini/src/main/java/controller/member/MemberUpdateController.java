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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import bean.CheckBean;
import bean.Member;
import controller.common.SuperClass;
import dao.MemberDao;

@Controller // 회원 정보 수정하기
public class MemberUpdateController extends SuperClass{
	private final String command = "/update.me"; // 요청 커맨드
	private final String redirect = "redirect:/login.me"; // 리다이렉션
	
	// 뷰에 넘겨줄 ModelAndView 객체
	private ModelAndView mav = null;
	
	@Autowired
	@Qualifier("mdao") 
	private MemberDao mdao; 
	
	public MemberUpdateController() {
		// (변경 요망)
		super("meUpdateForm", null); // super(getpage, postpage)
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
	
	// 회원 가입과는 달리 수정은 이전에 기입했던 정보를 읽어 들이는 부분이 필요합니다.
	@GetMapping(command)
	public ModelAndView doGet(
			@RequestParam(value = "me_id", required = true) String me_id) {
		
		Member member = this.mdao.SelectDataByPk(me_id);
		
		System.out.println(member.toString());
		
		this.mav.addObject("member", member);
		
		this.mav.setViewName(super.getpage);
		return this.mav;
	}
	
	@PostMapping(command)
	public ModelAndView doPost(
			@ModelAttribute("member") @Valid Member xxx,
			BindingResult error) {
		
		if (error.hasErrors()) {
			System.out.println("유효성 검사에 문제가 있습니다.");
			System.out.println(error.toString());
			this.mav.setViewName(super.getpage);
		}else {
			System.out.println("유효성 검사에 문제가 없습니다.");
			
			
			// 회원 정보를 수정하고, 메인 페이지로 이동합니다.
			this.mdao.UpdateData(xxx);
			
			this.mav.setViewName(this.redirect);
		}
		
		return this.mav;
	}
}
