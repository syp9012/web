<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.sql.*" %>

<%
  Connection con=null;

  try{

/***************** My-SQL ���� �����ϴ� �κ� *****************************/
//    String driver = "com.mysql.jdbc.Driver";     // 5.x
//   	String driver = "com.mysql.cj.jdbc.Driver";  // 8.x

//     String jdbcUrl = "jdbc:mysql://localhost:3306/jsptest";
//     String dbId = "jspid";
//     String dbPass = "jsppass"; 
/************************************************************************/	


/**************** Oracle ���� �����ϴ� �κ� *****************************/
    String driver = "oracle.jdbc.driver.OracleDriver";  	

    String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:xe";
    String dbId = "scott";
    String dbPass = "tiger";
/************************************************************************/


	Class.forName(driver);  //JDBC ����̹� �ε� 
	con=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
	
	out.println("����� ����Ǿ����ϴ�.");

	} catch(Exception e){ 

		e.printStackTrace();

	}
%>
