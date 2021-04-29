package controller.roadmap ;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import controller.common.SuperClass;
import dao.RankingDao;

@Controller
public class RoadMapController extends SuperClass{
	private final String command = "/roadmap.rd" ; 
	private ModelAndView mav = null ;
	private String redirect = "redirect:/list.bo" ;
	
//	@Autowired
//	@Qualifier("cdao")
//	private RankingDao cdao ;
	
	public RoadMapController() {
		// getpage, postpage
		super("map", null);
		this.mav = new ModelAndView();
	}
	
	@GetMapping(command)
	public ModelAndView doGet(){
		this.mav.setViewName(super.getpage);
		return this.mav ;
	}	
}