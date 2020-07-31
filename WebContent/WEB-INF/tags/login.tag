<%@ tag body-content="scriptless" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="./Resource/css/indexStyle.css">

<form name="loginform" method="post" action="userControl.jsp">
<c:choose>
<c:when test="${cid != null}">
	<li>${cid}님 </li>
	<input type="hidden" name="action" value="logout">
	<input type="submit" value="로그아웃">
</c:when>
<c:otherwise>
		<a class ="aa" href="loginForm.html">로그인</a>
		<a class="aa" href="signUpForm.html">회원가입</a>
</c:otherwise>
</c:choose>
</form>