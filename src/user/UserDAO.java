package user;

import java.sql.Connection;
import java.sql.DriverManager;

public class UserDAO {
	public static Connection getMySqlConnection() {
		Connection conn = null; // connection:db�������ϰ� ���ִ� ��ü
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/jspexample"; // localhost:3306 ��Ʈ�� ��ǻ�ͼ�ġ�� mysql�ּ�
	
			String id = "root";
	
			String pw = "1234!";
	
			conn = DriverManager.getConnection(url, id, pw);
	
		} catch (Exception e) {
			e.printStackTrace(); // ������ �������� ���
		}
		return conn;
	}
}
