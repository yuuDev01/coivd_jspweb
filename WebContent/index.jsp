<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="index"%>
<%
 String cPath= request.getContextPath(); //프로젝터 경로

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./Resource/css/indexStyle.css">
</head>
<body>
<header>
<div class="top">
 <h1 class="title" id="title">CO_IN</h1>
 <div class="mylogin">
 <index:login />
 </div>
</div>
</header>
<nav>
<div class="navbar">
<form action="main.jsp" method="get" >
 <ul>
		<li><a href="index.jsp" taget="content">INFO</a></li>  <!-- info 클릭시 메인화면으로 이동 -->
		<li><a href="boardList.jsp"  taget="content">SHARE</a></li> <!-- share 클릭시boardList화면으로 이동 -->
		<li><a href="section.jsp"  taget="content">ABOUT</a>  <!-- info 클릭시"section.jsp화면으로 이동 -->
 </ul>
 </form>
</div>
</nav>
<aside>
<div class="sideMenu">
 <index:sidebar />
</div>
</aside>
<section>
<div>
 <jsp:include page="section.jsp"/>  <!-- section 위치에 section.jsp를 포함한다.  -->
</div>
</section>
<div class="footer">
</div>
</body>
</html>