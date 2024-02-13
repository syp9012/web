// DAO(Data Access Object)

package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDBBean {
	
	// 싱글톤 : 객체 생성을 한번만 수행 하는것.
	private static BoardDBBean instance = new BoardDBBean();
	
	public static BoardDBBean getInstance() {	// 정적 메소드
		return instance;
	}
	
	// 커넥션 풀에서 커넥션 구해오는 메소드
	private Connection getConnection() throws Exception{
  		Context init = new InitialContext();
  		DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/orcl");
  		return ds.getConnection();
	}
	
	// 글작성
	public int insert(BoardDataBean board) {
		int result = 0;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = getConnection();
			String sql = "insert into board ";
			sql += "values (board_seq.nextval,?,?,?,?,sysdate,?,?,?)";
			
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, board.getWriter());
			pstmt.setString(2, board.getEmail());
			pstmt.setString(3, board.getSubject());
			pstmt.setString(4, board.getPasswd());
			pstmt.setInt(5, board.getReadcount());	// readcount : 0
			pstmt.setString(6, board.getContent());
			pstmt.setString(7, board.getIp());
			result = pstmt.executeUpdate();	// insert SQL문 실행
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt!=null) pstmt.close();
				if(con!=null) con.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	// 총 데이터 갯수 구하기
	public int getCount() {
		int result=0;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con=getConnection();
			
			String sql = "select count(*) from board";
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();	// select SQL문 실행.
			if(rs.next()) {
//				result = rs.getInt(1);
				result = rs.getInt("count(*)");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(con!=null) con.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	// 게시판 목록 구하기 : 데이터 10개 추출하기.
	public List<BoardDataBean> getList(int start, int end){
		List<BoardDataBean> list = new ArrayList<BoardDataBean>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = getConnection();
			String sql = "select * from (select rownum rnum, board.* from ";
			sql += "(select * from board order by num desc) board)";
			sql += " where rnum >= ? and rnum <= ?";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();
			while(rs.next()) {	// 조건식을 만족한 데이터를 1개씩 가져온다.
				BoardDataBean board = new BoardDataBean();
				
				board.setNum(rs.getInt("num"));		
				board.setWriter(rs.getString("writer"));
				board.setEmail(rs.getString("email"));
				board.setSubject(rs.getString("subject"));
				board.setPasswd(rs.getString("passwd"));
				board.setReg_date(rs.getTimestamp("reg_date"));
				board.setReadcount(rs.getInt("readcount"));
				board.setContent(rs.getString("content"));
				board.setIp(rs.getString("ip"));
				
				list.add(board);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(con!=null) con.close();	
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	
}
