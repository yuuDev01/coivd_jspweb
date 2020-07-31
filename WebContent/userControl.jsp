<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	// 컨트롤러 요청 action 코드값
	String action = request.getParameter("action");
	// 로그인
     if(action.equals("logout")) {
		// 세션에 저장된 값 초기화
		session.removeAttribute("cid");
		%>
		<script type="text/javascript">
		  alert("로그아웃하셨습니다.");
		  location.href="index.jsp";
		</script>
	<%	//session.removeAttribute("suid");
		//response.sendRedirect("sns_control.jsp?action=getall");		
	}
	
		%>
		