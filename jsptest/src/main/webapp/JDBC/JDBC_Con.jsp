<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.sql.*" %>

<%
  Connection con=null;

  try{

/***************** My-SQL 연결 설정하는 부분 *****************************/
//    String driver = "com.mysql.jdbc.Driver";     // 5.x
//   	String driver = "com.mysql.cj.jdbc.Driver";  // 8.x

//     String jdbcUrl = "jdbc:mysql://localhost:3306/jsptest";
//     String dbId = "jspid";
//     String dbPass = "jsppass"; 
/************************************************************************/	


/**************** Oracle 연결 설정하는 부분 *****************************/
    String driver = "oracle.jdbc.driver.OracleDriver";  	

    String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe";
    String dbId = "scott";
    String dbPass = "tiger";
/************************************************************************/


	Class.forName(driver);  //JDBC 드라이버 로딩 
	con=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
	
	out.println("제대로 연결되었습니다.");

	} catch(Exception e){ 

		e.printStackTrace();

	}
%>
