package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class User_dao {
	
	private Connection conn;			//자바와 데이터베이스 연결
	private PreparedStatement pstmt;	//쿼리문 대기 및 설정
	private ResultSet rs;				//결과값 받아오기
	
	//기본생성자
	public User_dao(){
		try {
			String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			String user = "workout";
			String password = "1234";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, password);		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String UserId, String UserPassword) {
		String sql = "SELECT UserPassword FROM w_MEMBER WHERE UserId=?";
	//	String sql = "select userPassword form user where UserId = ?";
		try {
			//sql 쿼리문 대기 시키기
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, UserId); //첫번째 '?'에 매개변수로 받아온 userId대입
			rs = pstmt.executeQuery(); //쿼리를 실행한 결과를 rs에 저장
			
			if(rs.next()) {
				if(rs.getString(1).equals(UserPassword)) {
					return 1; //로그인성공
				}else
					return 0; //비밀번호 틀림
			}
			return -1; //아이디 없음
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; //오류
	}
	
}