<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="member.Member"/>  <!-- 자바빈즈 DO -->
<jsp:useBean id="memberDAO" class="member.MemberDAO"/> <!-- 자바빈즈 DAO -->
<jsp:setProperty name="member" property="*" />   <!-- member set메소드에 값 넣기 -->
<%
request.setCharacterEncoding("UTF-8");
//login_form에서 id,pwd값 가져오기
String cid = request.getParameter("cid");
String pwd = request.getParameter("pwd");

//사용자 입력값 확인 
int result = memberDAO.loginMem(cid, pwd);
if(result == 0) { //만약 true면 메인화면 이동
	response.sendRedirect("index.jsp");
    session.setAttribute("cid", cid);   //현재 id 세션값 설정

}else if(result == 1){ //비밀번호 불일치
	%>
	<script> 
		alert('비밀번호가 일치하지 않습니다.');
		history.back(); //되돌아가기
	</script>		
	<% } else if(result == 2){
%>
<script> 
		alert('아이디가 존재하지 않습니다..');
		history.back(); //되돌아가기
	</script>	
<% } 	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인확인</title>
</head>
<body>
</body>
</html>