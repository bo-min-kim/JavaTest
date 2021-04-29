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

@Controller
public class MemberIdcheckController extends SuperClass{
	private final String command = "/idcheck.me"; // 요청 커맨드
	private final String redirect = "redirect:/xxx.me"; // 리다이렉션(변경 요망)
	
	// 뷰에 넘겨줄 ModelAndView 객체
	private ModelAndView mav = null;
	
	@Autowired
	@Qualifier("mdao")
	private MemberDao mdao;
	
	public MemberIdcheckController() {
		// (변경 요망)
		super("idCheck", null); // super(getpage, postpage)
		this.mav = new ModelAndView();
	}
	
	@GetMapping(command) // 파라미터 id를 이용하여 테이블에 존재하는지 파악합니다.
	public ModelAndView doGet(
			@RequestParam(value = "me_id", required = true) String me_id) {
		//System.out.println("idcheck");
		
		Member bean = this.mdao.SelectDataByPk(me_id);
		
		// "isCheck"의 값이 true이면 사용 가능한 아이디
		if (bean != null) { // 회원이 존재함
			if (bean.getMe_id().equalsIgnoreCase("admin")) {
				this.mav.addObject("message", "admin은(는) <font color='red'><b>사용 불가능</b></font>한 아이디입니다.<br>관리자를 위한 아이디입니다.");
				this.mav.addObject("isCheck", false);
			}else {
				this.mav.addObject("message", me_id + "은(는) 이미 <font color='red'><b>사용중</b></font>인 아이디입니다.");
				this.mav.addObject("isCheck", false);
			}
		}else { // 존재하지 않는 회원
			this.mav.addObject("message", me_id + "은(는) <font color='blue'><b>사용 가능</b></font>한 아이디입니다.");
			this.mav.addObject("isCheck", true);
		}
		
		this.mav.setViewName(super.getpage);
		return this.mav;
	}
	
	@PostMapping(command)
	public ModelAndView doPost() {
		this.mav.setViewName(super.getpage);
		return this.mav;
	}
}
