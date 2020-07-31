package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class MemberDAO {
	// 데이터베이스 관련 객체 선언
		Connection conn = null;
		Statement stmt = null;
		PreparedStatement pstmt = null;
		String jdbc_driver = "com.mysql.cj.jdbc.Driver";
		String jdbc_url = "jdbc:mysql://127.0.0.1:3306/jspdb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"; 
		
		
		// DB연결 메서드
			void connect() {
				try {
					Class.forName(jdbc_driver);
					conn = DriverManager.getConnection(jdbc_url,"jspbook","1234");
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			
			//DB연결 종료
			void disconnect() {
				if(pstmt != null) {
					try {
						pstmt.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				} 
				if(conn != null) {
					try {
						conn.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
			}
					
		//아이디 중복 확인
		public boolean checkId(String id) {
			boolean flag = false;
				
			return flag;
			}
		
		//회원가입 - 회원정보 넣기
		public boolean insertMem(Member bean) {
			connect();
			// sql 문자열 , 아이디,이름,비밀번호 입력		
			String sql ="insert into cmember(cid,cname,cpassword) values(?,?,?)";
			
			try {
				//memberbean에서 id,name,pwd값 가져와서 db에 넣기
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,bean.getCid());
				pstmt.setString(2,bean.getCname());
				pstmt.setString(3,bean.getCpassword());
				pstmt.executeUpdate();
			} catch (SQLException e) {
				//예외 발생시 false 리턴
				e.printStackTrace();
				return false;
			}
			finally {
				//연결 종료
				disconnect();
			}
			//sql문 성공 - true 리턴
			return true;
		}
		
		//로그인
		public int loginMem(String id, String pwd) {
			boolean flag = false;  //flag에 false값 넣기
			connect();
			ResultSet rs = null;
			//cmember에서 입력한 id,pwd값과 일치하는 id가 있는지 sql 검색
			String sql = "select cpassword from cmember where cid=?";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					if(rs.getString(1).equals(pwd)) {
						return 0;  //로그인 성공
				}else {
					return 1; //비밀번호 불일치
				 }
				}
				return 2; // id 없음
			}catch (SQLException e) {
				//예외(입력값과 db값 불일치) - false
				e.printStackTrace();
			}
			return 3;
			
		
	}
}
