//DAO(Data Access Object)

package member;

import java.sql.Connection;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	
	// 싱글톤 : 객체 생성을 1번만 수행.
	private static MemberDAO instance = new MemberDAO(); 
	
	public static MemberDAO getInstance() {		//정적메소드
		return instance;
	}
	
	//커넥션 풀에서 커넥션을 구해오는 메소드
	private Connection getConnection() throws Exception {
  		Context init = new InitialContext();
  		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/orcl");
		return ds.getConnection();
	}
	
	// 회원가입
	public int insert(MemberDTO member) {
		int result = 0;
		
		return result;
	}
	
	public int update(MemberDTO member) {
		int result = 0;
		
		return result;
	}
	
	public int delete(MemberDTO member) {
		int result = 0;
		
		return result;
	}
	
//	public ResultSet select(MemberDTO member) {
//		int result = 0;
//		
//		
//	}
	
	
}
