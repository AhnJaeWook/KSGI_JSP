package file; 

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import bbs.Bbs;

public class FileDAO {
	private Connection conn;
	
	public FileDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/FILE";
			String dbID = "root";
			String dbPassword = "1234!";
			Class.forName("com.mysql.jdbc.Driver"); //�ڵ����� ��ü�� �����ǰ� DriverManager�� ��ϵȴ�.
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword); // ����
		}catch(Exception e) { //����ó��
			e.printStackTrace();
		}
	}
	
	public int upload(String fileName, String fileRealName) {
		String SQL = "INSERT INTO FILE VALUES (?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, fileName);
			pstmt.setString(2, fileRealName);
			return pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		return -1;
	}
	
	public FileDTO getBbs(int fileID) { // �������� �ش��ϴ� �̹����� �´��� Ȯ�ο�
		String SQL = "SELECT * FROM FILE WHERE fileID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, fileID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				Bbs bbs = new Bbs();
				bbs.setBbsID(rs.getInt(1));
				bbs.setBbsTitle(rs.getString(2));
				bbs.setUserID(rs.getString(3));
				bbs.setBbsDate(rs.getString(4));
				bbs.setBbsContent(rs.getString(5));
				bbs.setBbsAvailable(rs.getInt(6));
				return bbs;
			} 
		} catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}