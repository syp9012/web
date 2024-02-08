//DAO(Data Access Object)

package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
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
		
		Connection con = null;
		PreparedStatement pstmt =null;
		
		
		try{
			// 커넥션 풀에서 커넥션을 구해온다.
			con= getConnection();
			String sql = "insert into member ";
				   sql+= "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,sysdate)";
				   
		   pstmt=con.prepareStatement(sql);
		   pstmt.setString(1, member.getId());
		   pstmt.setString(2, member.getPasswd());
		   pstmt.setString(3,member.getName());
		   pstmt.setString(4,member.getJumin1());
		   pstmt.setString(5,member.getJumin2());
		   pstmt.setString(6,member.getMailid());
		   pstmt.setString(7,member.getDomain());
		   pstmt.setString(8,member.getTel1());
		   pstmt.setString(9,member.getTel2());
		   pstmt.setString(10,member.getTel3());
		   pstmt.setString(11,member.getPhone1());
		   pstmt.setString(12,member.getPhone2());
		   pstmt.setString(13,member.getPhone3());
		   pstmt.setString(14,member.getPost());
		   pstmt.setString(15,member.getAddress());
		   pstmt.setString(16,member.getGender());
		   pstmt.setString(17,member.getHobby());
		   pstmt.setString(18,member.getIntro());
		   
		   result = pstmt.executeUpdate();	// insert SQL문 실행
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			try {
				if(pstmt!= null) pstmt.close();
				if(con!=null) con.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	//ajax로 ID 중복검사
	public int memberAuth(String id) {
		int result = 0;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = getConnection();	// 커넥션 풀에서 커넥션을 호출
			String sql = "select * from member where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();	// select SQL문 실행.
			if(rs.next()) {	// 조건식을 만족하는 데이터 1개를 구해온다.
				result = 1;	// 중복 ID
			}else {
				result = -1;// 사용 가능한 ID
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(con!=null) con.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return result;
	}
	
	public int memberCheck(MemberDTO member) {
		int result = 0;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		
		try {
			con=getConnection();
			
			String sql = "select * from member where id=?";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			rs = pstmt.executeQuery();	//select SQL문 실행
			
			if(rs.next()) {	// 아이디 일치
				if(rs.getString("passwd").equals(member.getPasswd())) {
					result = 1;	// 아이디, 비밀번호 일치(회원 인증 성공)
				}else {
					result = -1; // 아이디 일치, 비밀번호 불일치
				}
			}else {			// 아이디 불일치
				result = -2;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	//회원 수정 폼 : 한 사람의 상세 정보 구하기
	public MemberDTO getMember(String id) {
		MemberDTO member = new MemberDTO();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con=getConnection();
			
			String sql = "select * from member where id=?";
			
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();	// select SQL문 실행
			
			if(rs.next()) {	//조건식을 만족하는 데이터 1개를 가져온다.
				member.setId(rs.getString("id"));
				member.setPasswd(rs.getString("passwd"));
				member.setName(rs.getString("name"));
				member.setJumin1(rs.getString("jumin1"));
				member.setJumin2(rs.getString("jumin2"));
				member.setMailid(rs.getString("mailid"));
				member.setDomain(rs.getString("domain"));
				member.setTel1(rs.getString("tel1"));
				member.setTel2(rs.getString("tel2"));
				member.setTel3(rs.getString("tel3"));
				member.setPhone1(rs.getString("phone1"));
				member.setPhone2(rs.getString("phone2"));
				member.setPhone3(rs.getString("phone3"));
				member.setPost(rs.getString("post"));
				member.setAddress(rs.getString("address"));
				member.setGender(rs.getString("gender"));
				member.setHobby(rs.getString("hobby"));
				member.setIntro(rs.getString("intro"));
				member.setRegister(rs.getTimestamp("register"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(con!=null) con.close();				
			}catch(Exception e) {
				e.printStackTrace();;
			}
		}
		return member;
	}
	
	
}
