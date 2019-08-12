package user;

import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.PreparedStatement;

import java.sql.ResultSet;

public class UserDAO {
	
	private Connection conn; // connection:db에접근하게 해주는 객체

	private PreparedStatement pstmt;

	private ResultSet rs;
	
	public UserDAO() {	
		try {
	
			String dbURL = "jdbc:mysql://localhost:3306/ksgi_vr?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"; // localhost:3306 포트는 컴퓨터설치된 mysql주소
	
			String id = "root";
	
			String pw = "1234!";
	
			Class.forName("com.mysql.jdbc.Driver");
	
			conn = DriverManager.getConnection(dbURL, id, pw);		
	
		} catch (Exception e) {	
			e.printStackTrace(); // 오류가 무엇인지 출력	
		}
		
	}
	
	public Connection GetConnection() {
		if(conn != null) {
			return conn;
		}
		return null;
	}
	
}
