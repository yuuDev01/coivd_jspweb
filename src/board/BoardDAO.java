package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import member.MemberDAO;

public class BoardDAO {
	// 데이터베이스 관련 객체 선언
	Connection conn = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	String jdbc_driver = "com.mysql.cj.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://127.0.0.1:3306/jspdb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";

	Logger logger = LoggerFactory.getLogger(MemberDAO.class);

	// DB연결 메서드
	void connect() {
		try {
			Class.forName(jdbc_driver);
			conn = DriverManager.getConnection(jdbc_url, "jspbook", "1234");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// DB연결 종료
	void disconnect() {
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public ArrayList<BoardSet> getAll(int cnt, String cid) {
		ArrayList<BoardSet> datas = new ArrayList<BoardSet>();
		connect();
		String sql;

	try {
		//모든 게시글 데이터 가져오기
		sql = "select * from s_message order by date desc limit 0,?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, cnt);

		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			BoardSet ms = new BoardSet();
			Board m = new Board();

			m.setMid(rs.getInt("mid"));
			m.setCtitle(rs.getString("ctitle"));
			m.setCmsg(rs.getString("cmsg"));
			m.setCdate(rs.getDate("cdate") + " / " + rs.getTime("date"));
			m.setCid(rs.getString("cid"));


			ms.setBoard(m);
			datas.add(ms);
		}
	}catch(

	SQLException e)
	{
		e.printStackTrace();
		System.out.println(e.getErrorCode());
	}finally
	{
		try {
			// rs.close();
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getErrorCode());
		}
	}return datas;
	}

	// 게시글 등록
	public boolean newMsg(Board board) {
		connect();
		String sql = "insert into s_message(cid, ctitle,cmsg, date) values(?,?,?,now())";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, board.getCid());
			pstmt.setString(2, board.getCtitle());
			pstmt.setString(3, board.getCmsg());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getErrorCode());
			return false;
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return true;
	}

	/**
	 * 메시지 삭제
	 * 
	 * @param mid
	 * @return
	 */
	public boolean delMsg(int mid) {
		connect();
		String sql = "delete from s_message where mid = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, mid);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(e.getErrorCode());
			return false;
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return true;
	}
}
