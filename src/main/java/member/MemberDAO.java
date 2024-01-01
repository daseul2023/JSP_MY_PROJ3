package member;

import java.sql.*;

public class MemberDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public MemberDAO() {
		try {
			String dbURL = "jdbc:oracle:thin:@localhost:1521:XE";
			String dbId = "root";
			String dbPassword = "root";
			Class.forName("com.oracle.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbId, dbPassword);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int login (String id, String password) {
		String ORACLE= "select password FROM MEMBER id = ?";
		try {
			pstmt = conn.prepareStatement(ORACLE);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(password)) 
					return 1;
				
				else
					return 0;
			}
			return -1;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -2;
	}
	
	public void join(Member dto) {
		String ORACLE = "INSERT INTO MEMBER VALUES (?,?,?,?,?,?,?)";
		try {
//			conn = 
//			pstmt = conn.prepareStatement(ORACLE);
//			pstmt.setString(1,);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
