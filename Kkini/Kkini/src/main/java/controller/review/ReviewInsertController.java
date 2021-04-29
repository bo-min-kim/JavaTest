package controller.review;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import bean.Review;
import controller.common.SuperClass;
import dao.ReviewDao;
@Controller
public class ReviewInsertController extends SuperClass{
	private final String command = "/insert.rw" ; 
	private ModelAndView mav = null ;
	private String redirect = "redirect:/list.rw" ;
	
	@ModelAttribute("review")
	public Review myreview() {
		System.out.println("@ModelAttribute(\"review\")");
		return new Review();
	}
	
	@Autowired
	@Qualifier("rwdao")
	private ReviewDao rwdao ;
	
	public ReviewInsertController() {
		super("reviewInsert", "reviewList");
		this.mav = new ModelAndView();
	}
	
	@GetMapping(command)
	public ModelAndView doGet(){		
		this.mav.setViewName(super.getpage);
		System.out.println("doGet 메소드");
		return this.mav ;
	}
	
	@PostMapping(command)
	public ModelAndView doPost(
			@ModelAttribute("review") @Valid Review bean,
			BindingResult error,
			HttpServletRequest request){
		
		if ( error.hasErrors() ) {
			System.out.println("유효성 검사에 문제 있슴");
			System.out.println( error );
			this.mav.addObject("bean", bean);	
			this.mav.setViewName(super.getpage);
		} else {
			System.out.println("유효성 검사에 문제 없슴");
			
			MultipartFile multi = bean.getMulti();
			String uploadPath = "/resources/upload" ;
			//realPath :  
			String realPath = request.getRealPath(uploadPath);
			System.out.println(realPath);
			
			try {
				File destination = utility.Utility.getUploadedFileInfo(multi, realPath) ;
				
				multi.transferTo(destination);
				mav.setViewName(this.redirect) ;				
				
				bean.setRw_image(destination.getName());
				
				int cnt = -99999 ; 			
				//Bean 객체를 이용하여 해당 게시물을 추가한다.
				cnt = rwdao.InsertData(bean) ;			
				
				// request 객체의 내용을 보존하면서 목록 보기 페이지로 넘겨 줍니다.
				 System.out.println("업로드 잘됨");
				this.mav.setViewName(this.redirect);
				
			} catch (IllegalStateException e) {				
				e.printStackTrace();
				mav.setViewName(super.getpage) ;
				
			} catch (Exception e) {				
				e.printStackTrace();
				mav.setViewName(super.getpage) ;
			}
		}
		return this.mav ;
	}
}