package controller.review ;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import bean.Review;
import controller.common.SuperClass;
import dao.ReviewDao;
import utility.FlowParameters;
import utility.Paging;

@Controller
public class ReviewListController extends SuperClass{
	private final String command = "/list.rw" ; 
	private ModelAndView mav = null ;
	
	@Autowired
	@Qualifier("rwdao")
	private ReviewDao rwdao ;
	
	public ReviewListController() {
		// getpage, postpage
		super("reviewList", null);
		this.mav = new ModelAndView();
	}
	
	@GetMapping(command)
	public ModelAndView doGet(
			HttpServletRequest request,
			@RequestParam(value = "pageNumber", required = false) String pageNumber, 
			@RequestParam(value = "pageSize", required = false) String pageSize,
			@RequestParam(value = "keyword", required = false) String keyword){
		
		// 페이징과 필드 검색을 위한 파라미터를 우선 챙깁니다.
		FlowParameters parameters 
			= new FlowParameters(pageNumber, pageSize, "all", keyword);
		
		// 파라미터 확인을 위한 출력
		System.out.println(this.getClass() + " : " + parameters.toString());
		
		int totalCount 
		= rwdao.SelectTotalCount(
				parameters.getMode(), 
				parameters.getKeyword());
		
		System.out.println("totalCount : " + totalCount );
		
		String contextpath = request.getContextPath() + "/" ;
		String myurl = contextpath +  this.command ;
		
		Paging pageInfo 
			= new Paging(
					parameters.getPageNumber(), 
					"6", 
					totalCount, 
					myurl, 
					parameters.getMode(), 
					parameters.getKeyword());
		
		List<Review> lists = rwdao.SelectDataList(
				pageInfo.getOffset(),
				pageInfo.getLimit(),
				"all", 
				parameters.getKeyword()) ;
				// "%" 문자열은 like 연산자 때문에 넣었습니다.
		
		// 바인딩해야 할 목록들
		mav.addObject("lists", lists); // 게시물 목록
		
		// 페이징 관련 항목들
		mav.addObject("pagingHtml", pageInfo.getPagingHtml());
		mav.addObject("pagingStatus", pageInfo.getPagingStatus());
		
		// 검색 필드의 상태 값 저장을 위한 항목들  
		mav.addObject("keyword", parameters.getKeyword());
		
		// 상세 보기, 수정, 삭제, 답글 등의 링크에 사용될 parameter list 문자열
		mav.addObject("parameters", parameters.toString());		
			
		this.mav.setViewName(super.getpage);
		return this.mav ;
	}	
}