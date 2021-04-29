package mypkg.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import mypkg.bean.CustomerSound;

public class CustomerDao extends SuperDao{

	public int SelectTotalCount(String mode, String keyword) {
		// 해당 모드와 키워드를 이용하여 조건에 맞는 데이터의 건수를 구해줍니다.
		Connection conn = null ;
		PreparedStatement pstmt = null ;
		ResultSet rs = null ;		
		
		String sql = " select count(*) as cnt from customersounds " ; 
		if (mode.equalsIgnoreCase("all") == false) { //equalsIgnoreCase는 true, flase로 나옴
			//전체 검색이 아니면
			sql += " where " + mode + " like '%" + keyword + "%' "; //+많을 땐 띄어쓰기 조심
		}
		
		
		int cnt = -999999 ;

		try {
			conn = super.getConnection() ;
			pstmt = conn.prepareStatement(sql) ;
			
			// placeholder 

			rs = pstmt.executeQuery() ; 
			
			if ( rs.next() ) { 
				cnt = rs.getInt("cnt"); //alias 이름 적기
			}
			
		} catch (SQLException e) {			
			e.printStackTrace();
			try {
				conn.rollback(); 
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		} finally{
			try {
				if( rs != null){ rs.close(); } 
				if( pstmt != null){ pstmt.close(); } 
				if(conn != null){conn.close();}
			} catch (Exception e2) {
				e2.printStackTrace(); 
			}
		} 		
		return cnt ;
	}

	public List<CustomerSound> SelectDataList(int beginRow, int endRow, String mode, String keyword) {
		// 랭킹을 이용하여 해당 페이지의 데이터를 컬렉션으로 반환 합니다.
		Connection conn = null ;
		PreparedStatement pstmt = null ;
		ResultSet rs = null ;
		
		//sql 페이징 다시 보기
		String sql = " select no, name, phone, reason, content " ;
	      sql += " from ( " ;
	      sql += " select no, name, phone, reason, content, " ;
	      sql += " rank() over(order by no desc) as ranking " ;
	      sql += " from customersounds " ;
	      
	      if (mode.equalsIgnoreCase("all") == false) {
			sql += " where " + mode + " like '%" + keyword + "%' ";
	      }
	      
	      sql += " ) " ;
	      sql += " where ranking between ?  and ?  " ;
		
		List<CustomerSound> lists = new ArrayList<CustomerSound>();

		try {
			conn = super.getConnection() ;
			pstmt = conn.prepareStatement(sql) ;

			// placeholder
			pstmt.setInt(1, beginRow);
			pstmt.setInt(2, endRow);
			
			rs = pstmt.executeQuery() ;			
			
			while( rs.next() ){
				CustomerSound bean = new CustomerSound();
				
				bean.setNo(rs.getInt("no"));
				bean.setName(rs.getString("name"));
				bean.setPhone(rs.getString("phone"));
				bean.setContent(rs.getString("content"));
				bean.setReason(rs.getString("reason"));
				
				lists.add( bean ) ;
			}
		} catch (Exception e) {
			e.printStackTrace();
			try {
				conn.rollback(); 
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		} finally{
			try {
				if(rs != null){ rs.close(); }
				if(pstmt != null){ pstmt.close(); }
				if(conn != null){conn.close();}
			} catch (Exception e2) {
				e2.printStackTrace(); 
			}
		}
		
		return lists ;
	}

	public int InsertData(CustomerSound bean) {
			// 넘겨진 Bean 데이터를 이용하여 추가합니다.
		String sql = " insert into customersounds(no, name, phone, reason, content) ";
		sql += " values(mycustomersound.nextval, ?, ?, ?, ?) ";  
		
		Connection conn = null ;
		PreparedStatement pstmt = null ;
		int cnt = -999999 ;
		
		try {
			conn = super.getConnection() ;
			pstmt = conn.prepareStatement(sql) ;

			// placeholder
			pstmt.setString(1, bean.getName());
			pstmt.setString(2, bean.getPhone());
			pstmt.setString(3, bean.getReason());
			pstmt.setString(4, bean.getContent());
			
			cnt = pstmt.executeUpdate() ; 
			conn.commit(); 

		} catch (Exception e) {
			e.printStackTrace();
			try {
				conn.rollback(); 
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		} finally{
			try {
				if(pstmt != null){pstmt.close();}
				if(conn != null){conn.close();}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return cnt ;		
						
	}

	public CustomerSound SelectDataByPk(int no) {
		// 해당 게시물 번호의 Bean 객체를 구합니다. 
		CustomerSound bean = null ;
		
		String sql = " select * from customersounds ";
		sql += " where no = ? ";
		
		Connection conn = null ;
		PreparedStatement pstmt = null ;
		ResultSet rs = null ;
		
		try {
			conn = super.getConnection() ;
			pstmt = conn.prepareStatement(sql) ;

			// placeholder			
			pstmt.setInt(1, no);
			
			rs = pstmt.executeQuery() ;
			
			while(rs.next()) {
				bean = new CustomerSound() ;
				
				bean.setContent(rs.getString("content"));
				bean.setNo(rs.getInt("no"));
				bean.setPhone(rs.getString("phone"));
				bean.setReason(rs.getString("reason"));
				bean.setName(rs.getString("name"));

			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) {rs.close();}
				if(pstmt != null) {pstmt.close();}
				if(conn != null) {conn.close();}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return bean ;
	}

	
}
