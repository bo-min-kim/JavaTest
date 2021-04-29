package controller.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import controller.common.SuperClass;
import dao.MemberDao;

@Controller
public class TemplateController extends SuperClass{
	private final String command = "/xxx.me"; // 요청 커맨드(변경 요망)
	private final String redirect = "redirect:/xxx.me"; // 리다이렉션(변경 요망)
	
	// 뷰에 넘겨줄 ModelAndView 객체
	private ModelAndView mav = null;
	
	@Autowired
	@Qualifier("mdao") // (변경 요망)
	private MemberDao mdao; // (변경 요망)
	
	public TemplateController() {
		// (변경 요망)
		super(null, null); // super(getpage, postpage)
		this.mav = new ModelAndView();
	}
	
	@GetMapping(command)
	public ModelAndView doGet() {
		this.mav.setViewName(super.getpage);
		return this.mav;
	}
	
	@PostMapping(command)
	public ModelAndView doPost() {
		this.mav.setViewName(super.getpage);
		return this.mav;
	}
}
