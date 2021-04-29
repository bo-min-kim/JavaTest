package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import bean.CheckBean;
import bean.Member;

@Component("mdao")
public class MemberDao {
	private final String namespace = "MapperMember." ;	
	
	@Autowired
	SqlSessionTemplate abcd;
	
	public MemberDao() { }	
	
	//아이디와 비번을 사용하여 해당 회원이 존재하나요?
	public Member SelectData(String id, String password) {
		Map<String, String> map = new HashMap<String, String>() ;
		map.put("id", id) ;
		map.put("password", password) ;
		return this.abcd.selectOne(namespace + "SelectData", map);
	}	
	public Member SelectDataByPk(String me_id) {
		// 아이디 정보를 이용하여 회원을 찾아 줍니다.
		return this.abcd.selectOne(namespace + "SelectDataByPk", me_id);
	}
	
	public int InsertData(Member bean) {
		return this.abcd.insert(namespace + "InsertData", bean);
	}	
	
	public List<CheckBean> GetList(String module, String field, String kind) {		
		// 체크 박스, 라디오 버튼, 콤보 박스의 내용들을 가져옵니다.
		Map<String, String> map = new HashMap<String, String>() ;
		map.put("module", module) ;
		map.put("field", field) ;
		map.put("kind", kind) ;
		return this.abcd.selectList(namespace + "GetList", map);	
	}	
	
	public int UpdateData(Member bean) {
		// 회원 정보를 수정합니다.
		return this.abcd.update(namespace + "UpdateData", bean);
	}

	public List<Member> SelectDataList(int beginRow, int endRow) {
		return null ;
	}

	public int SelectTotalCount() {
		return 0 ; 
	}

	public int DeleteData(Member bean) {
		// 회원 탈퇴시 매출 데이터는 set null
		// 
		
		// boards.remark 수정, orders.remark 수정
		// 해당 id를 이용하여 회원 탈퇴를 수행합니다.		
						
		// 탈퇴할 회원이 남긴 게시물 정보의 remark 컬럼 정보를 수정합니다.
		Map<String, String> map = new HashMap<String, String>() ;
		
		// 심형래(sim09)가 회원 탈퇴를 하였습니다.
		String remark = bean.getMe_id() + "(" + bean.getMe_id() + ")가 회원 탈퇴를 하였습니다." ;
		
		map.put("writer", bean.getMe_id()) ;		
		
		map.put("remark", remark) ;
		
		this.abcd.update(namespace + "UpdateBoardRemark", map);			
		
		// orders.remark 수정
		map.clear();
		map.put("remark", remark) ;
		map.put("mid", bean.getMe_id()) ;
		this.abcd.update(namespace + "UpdateOrderRemark", map);

		// 회원 탈퇴하기			
		return this.abcd.delete(namespace + "DeleteData", bean.getMe_id());		
	}
//	public void InsertCartData(Member mem, List<ShoppingInfo> lists) {
//		// 1. 장바구니 테이블에 혹시 남아 있을 수 있는 회원의 행을 모두 삭제합니다. 
//		this.abcd.delete(namespace + "DeleteShoppingInfo", mem.getMe_id());
//		
//		// 2.반복문을 사용하여 테이블에 인서트 합니다.
//		for(ShoppingInfo shpInfo : lists){
//			this.abcd.insert(namespace + "InsertShoppingInfo", shpInfo);
//		}
//	}
//
//	public List<ShoppingInfo> GetShoppingInfo(String id) {
//		// 로그인 하면서 이전에 keep했던 나의 장바구니 정보를 다시 읽어 옵니다.
//		return this.abcd.selectList(namespace + "GetShoppingInfo",id);
//	}

	public List<Member> SelectDataList(int offset, int limit, String mode, String keyword) {
		// 랭킹을 이용하여 해당 페이지의 데이터를 컬렉션으로 반환해 줍니다.
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("mode", mode);
		map.put("keyword", "%" + keyword + "%"); // keyword를 포함하는
		return this.abcd.selectList(namespace + "SelectDataList", map, rowBounds);
	}

	public int SelectTotalCount(String mode, String keyword) {
		// 파라미터 mode와 keyword를 이용하여 총 회원수를 구합니다.
		Map<String, String> map = new HashMap<String, String>();
		map.put("mode", mode);
		map.put("keyword", "%" + keyword + "%"); // keyword를 포함하는
		return this.abcd.selectOne(namespace + "SelectTotalCount", map);
	}
}