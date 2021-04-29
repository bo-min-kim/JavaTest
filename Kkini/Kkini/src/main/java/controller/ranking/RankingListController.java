package controller.ranking ;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import bean.Member;
import bean.Ranking;
import controller.common.SuperClass;
import dao.RankingDao;

@Controller
public class RankingListController extends SuperClass{
	private final String command = "/main.rk" ; 
	private ModelAndView mav = null ;
	private String redirect = "redirect:/list.bo" ;
	
	@Autowired
	@Qualifier("rdao")
	private RankingDao rdao ;
	
	public RankingListController() {
		// getpage, postpage
		super("main", null);
		this.mav = new ModelAndView();
	}
	
	@GetMapping(command)
	public ModelAndView doGet(HttpSession session) {
		
		Member bean = (Member)session.getAttribute("loginfo");
		
		List<Ranking> lists = rdao.SelectDataList(bean.getMe_id());
		
		// 바인딩해야 할 목록들
		mav.addObject("lists", lists); // 랭킹 목록
		
		this.mav.setViewName(super.getpage);
		return this.mav ;
	}	
}