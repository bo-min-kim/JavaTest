package dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import bean.Review;

@Component("rwdao")
public class ReviewDao {
	private final String namespace = "MapperReview." ;	
	
	@Autowired
	SqlSessionTemplate sst;
	
	public ReviewDao() { }

	public int SelectTotalCount(String mode, String _keyword) {
		// 해당 모드와 키워드를 이용하여 조건에 맞는 데이터의 건수를 구해줍니다.
		String keyword = "%" + _keyword + "%" ;		
		return this.sst.selectOne(namespace + "SelectTotalCount", keyword);		
	}	
	
	public List<Review> SelectDataList(int offset, int limit, String mode, String _keyword) {
		// 랭킹을 이용하여 해당 페이지의 데이터를 컬렉션으로 반환합니다.
		RowBounds rowBounds = new RowBounds(offset, limit);
		String keyword = "%" + _keyword + "%" ;	
		return this.sst.selectList(namespace + "SelectDataList", keyword);
	}
	
	public int InsertData(Review bean) {
		// 넘겨진 Bean 데이터를 이용하여 추가합니다.
		System.out.println(this.getClass() + " InsertData 메소드");
		System.out.println(bean.toString());
		return this.sst.insert(namespace + "InsertData", bean);
	}
}