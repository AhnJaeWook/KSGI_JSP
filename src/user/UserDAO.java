package user;

import java.sql.Connection;
import java.sql.DriverManager;

public class UserDAO {
	public static Connection getMySqlConnection() {
		Connection conn = null; // connection:db�������ϰ� ���ִ� ��ü
		try {
<<<<<<< HEAD
	
			String dbURL = "jdbc:mysql://localhost:3306/ksgi_vr?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"; // localhost:3306 ��Ʈ�� ��ǻ�ͼ�ġ�� mysql�ּ�
=======
			Class.forName("com.mysql.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/jspexample"; // localhost:3306 ��Ʈ�� ��ǻ�ͼ�ġ�� mysql�ּ�
>>>>>>> refs/remotes/origin/master
	
			String id = "root";
	
			String pw = "1234!";
	
<<<<<<< HEAD
			Class.forName("com.mysql.jdbc.Driver");
	
			conn = DriverManager.getConnection(dbURL, id, pw);		
=======
			conn = DriverManager.getConnection(url, id, pw);
>>>>>>> refs/remotes/origin/master
	
<<<<<<< HEAD
		} catch (Exception e) {	
			e.printStackTrace(); // ������ �������� ���	
=======
		} catch (Exception e) {
			e.printStackTrace(); // ������ �������� ���
>>>>>>> refs/remotes/origin/master
		}
<<<<<<< HEAD
		
	}
	
	public Connection GetConnection() {
		if(conn != null) {
			return conn;
		}
		return null;
=======
		return conn;
>>>>>>> refs/remotes/origin/master
	}
}
