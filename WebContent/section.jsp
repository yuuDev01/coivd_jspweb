<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./Resource/css/sectionStyle.css">
</head>
<body>
<div class="about">
<% 
 String menu = request.getParameter("menu");  //menu의 파라미터값을 가져온다.
 
if(menu == null||menu.equals("INFO")){  //만약 INFO와 같으면 홈페이지 정보를 보여준다.
 %>

  코로나 관련 필수 소모품</br>의약품 정보 공유 사이트<br/>
 
 <a href="signUpForm.html">signup!</a> 
 <% }else if(menu.equals("share")){  //만약 SHARE와 같으면 속성값에 meue를 추가한다.
	 request.setAttribute("menu", menu);	 
	 %>
 <% }%>

</body>
</html>