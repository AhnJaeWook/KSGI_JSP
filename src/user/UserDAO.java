package user;

import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.PreparedStatement;

import java.sql.ResultSet;

public class UserDAO {
	
	private Connection conn; // connection:db�������ϰ� ���ִ� ��ü

	private PreparedStatement pstmt;

	private ResultSet rs;
	
	public UserDAO() {	
		try {
	
			String dbURL = "jdbc:mysql://localhost:3306/ksgi_vr?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"; // localhost:3306 ��Ʈ�� ��ǻ�ͼ�ġ�� mysql�ּ�
	
			String id = "root";
	
			String pw = "1234!";
	
			Class.forName("com.mysql.jdbc.Driver");
	
			conn = DriverManager.getConnection(dbURL, id, pw);		
	
		} catch (Exception e) {	
			e.printStackTrace(); // ������ �������� ���	
		}
		
	}
	
	public Connection GetConnection() {
		if(conn != null) {
			return conn;
		}
		return null;
	}
	
}
