<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8" import="board.*,member.*,java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 메시지 처리 빈즈 -->
<jsp:useBean id="msg" class="board.Board" />
<jsp:useBean id="msgdao" class="board.BoardDAO" />

<!-- 프로퍼티 set -->
<jsp:setProperty name="msg" property="*" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<%
    if(request.getAttribute("menu").equals("share")){
    	
    }
	// 컨트롤러 요청 action 코드값
	String action = request.getParameter("action");
//다음 페이지 요청 카운트
	String cnt = request.getParameter("cnt");

	// 특정 회원 게시물 only
	String suid = request.getParameter("suid");
	
	// 홈 URL
	String home;
	
	// 메시지 페이지 카운트
	int mcnt;
	

    //if (action.equals("getall")) {
	//ArrayList<BoardSet> datas = msgdao.getAll(mcnt,suid);

	// 게시글 목록
	//request.setAttribute("datas", datas);


	// 현재 페이지 카운트 정보 저장
	//request.setAttribute("cnt",mcnt);

	//pageContext.forward("sns_main.jsp");
//}
	
		%>
		
</body>
</html>