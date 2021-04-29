package controller.member;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import bean.Member;
import bean.Product;
import controller.common.SuperClass;
import dao.MemberDao;
import dao.ProductDao;
import shopping.MyCartList;
import shopping.ShoppingInfo;

@Controller
public class MemberLogoutController extends SuperClass{
	private final String command = "/logout.me"; // 요청 커맨드
	private final String redirect = "redirect:/xxx.me"; // 리다이렉션(변경 요망)
	
	// 뷰에 넘겨줄 ModelAndView 객체
	private ModelAndView mav = null;
	
	@Autowired
	@Qualifier("mdao") 
	private MemberDao mdao; 
	
	@Autowired
	@Qualifier("pdao") 
	private ProductDao pdao; 
	
	public MemberLogoutController() {
		super("meLoginForm", null); // super(getpage, postpage)
		this.mav = new ModelAndView();
	}
	
	@GetMapping(command) // 사용자가 로그 아웃을 시도함
	public ModelAndView doGet(
			HttpSession session) {
		// 세션 공간에 장바구니의 wish list가 있다면 
		// ShoppingInfos 테이블에 저장하는 루틴 코딩 요망
		MyCartList mycart = (MyCartList) session.getAttribute("mycart");
		
		if (mycart != null) {
			Map<Integer, Integer> maplists = mycart.GetAllOrderLists();
			
			System.out.println("지금 로그 아웃 중 이시군요");
			System.out.println("장바구니 품목 개수 : " + maplists.size());
			
			Member mem = (Member) session.getAttribute("loginfo");
					
			Set<Integer> keylist = maplists.keySet();
			
			List<ShoppingInfo> lists = new ArrayList<ShoppingInfo>();
			
			// pnum은 상품 번호(map 키), value는 구매 수량
			for(Integer pnum : keylist) {
				Product bean = this.pdao.SelectDataByPk(pnum);
				
				ShoppingInfo shpInfo = new ShoppingInfo();
				shpInfo.setMid(mem.getId()); // 고객의 아이디
				shpInfo.setPnum(pnum); // 상품 번호
				shpInfo.setPname(bean.getName()); // 상품명
				
				int qty = maplists.get(pnum);
				shpInfo.setQty(qty); // 구매한 수량
				shpInfo.setPrice(bean.getPrice()); // 구매 단가
				shpInfo.setImage(bean.getImage()); // 관련 이미지
				shpInfo.setPoint(bean.getPoint()); // 적립시켜 줄 포인트
				
				lists.add(shpInfo);
			}
			
			// 차후 로그인시 읽어 오기 위하여 ShoppingInfos 테이블에 데이터를 추가합니다.
			mdao.InsertCartData(mem, lists);
		}
		
		// 세션 영역의 모든 정보를 휘발 시킵니다.
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
