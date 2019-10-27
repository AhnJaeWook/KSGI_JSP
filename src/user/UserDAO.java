package user;

import java.sql.Connection;
import java.sql.DriverManager;

public class UserDAO {
	public Connection GetConnection() {
		Connection conn = null; // connection:db에접근하게 해주는 객체
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/ksgi_vr?serverTimezone=UTC"; // localhost:3306 포트는 컴퓨터설치된 mysql주소
	
			String id = "root";
	
			String pw = "1234!";
	
			conn = DriverManager.getConnection(url, id, pw);
			
			return conn;
	
		} catch (Exception e) {
			e.printStackTrace(); // 오류가 무엇인지 출력
		}
		return conn;
	}
}