
public class JDBC_Connect01 {

	public static void main(String[] args) {

		/** ORACLE JDBC Driver Test ***************************/
		String driver = "oracle.jdbc.driver.OracleDriver";  
		/******************************************************/

		/** My-SQL JDBC Driver Test **************************/
//		String driver = "com.mysql.jdbc.Driver";     // 5.x 
//		String driver = "com.mysql.cj.jdbc.Driver";  // 8.x
		/*****************************************************/

		try {
			Class.forName(driver); // JDBC Driver Loading 
			System.out.println("JDBC Driver Loading 성공~!!");

		} catch (Exception e) {
			System.out.println("JDBC Driver Loading 실패~!!");
			e.printStackTrace();
		}
	}
}
