package controller.member;

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

@Controller // 회원 상세 보기 기능
public class MemberDetailViewController extends SuperClass{
	private final String command = "/detailview.me"; // 요청 커맨드(변경 요망)
	private final String redirect = "redirect:/xxx.me"; // 리다이렉션(변경 요망)
	
	// 뷰에 넘겨줄 ModelAndView 객체
	private ModelAndView mav = null;
	
	@Autowired
	@Qualifier("mdao") // (변경 요망)
	private MemberDao mdao; // (변경 요망)
	
	public MemberDetailViewController() {
		// (변경 요망)
		super("meDetailView", null); // super(getpage, postpage)
		this.mav = new ModelAndView();
	}
	
	@GetMapping(command)
	public ModelAndView doGet(
			@RequestParam(value = "me_id", required = true) String me_id) {
		
		Member bean = this.mdao.SelectDataByPk(me_id);
		
		this.mav.addObject("bean", bean);
		
		this.mav.setViewName(super.getpage);
		return this.mav;
	}
	
//	@PostMapping(command)
//	public ModelAndView doPost() {
//		this.mav.setViewName(super.getpage);
//		return this.mav;
//	}
}
