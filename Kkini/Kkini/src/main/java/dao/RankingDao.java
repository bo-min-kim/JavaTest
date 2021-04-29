package dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import bean.Ranking;

@Component("rdao")
public class RankingDao {
	private final String namespace = "MapperRanking." ;	
	
	@Autowired
	SqlSessionTemplate sst;
	
	public RankingDao() { }	
	
	public List<Ranking> SelectDataList(String rk_id) {
		// 랭킹 테이블에서 자신의 아이디에 해당하는 데이터만 가져옴니다.
		return this.sst.selectList(namespace + "SelectDataList", rk_id);
	}
}