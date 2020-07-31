<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="board" class="board.Board"/> <!-- 자바빈즈 DO -->
<jsp:useBean id="boardDAO" class="board.BoardDAO"/> <!-- 자바빈즈 DAO -->	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("cid") != null) {
			userID = (String) session.getAttribute("cid");
		}	
  %>
	<div class="container">
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="3"
							style="background-color: #eeeeee; text-align: center;">글 보기
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 20%;">글 제목</td>
						<td colspan="2">${board.ctitle }</td>
					</tr>
					<tr>
						<td>작성자</td>
						<td colspan="2">${board.cid }</td>
					</tr>
					<tr>
						<td>작성일</td>
						<td colspan="2">${board.cdate}</td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="2" style="min-height: 200px; text-align: left;">${board.cmsg}</td>
					</tr>
				</tbody>
			</table>
			<a href="bbs.jsp" class="btn btn-primary">목록</a>
<%--  
<%
				//글작성자 본인일시 수정 삭제 가능 
			if ( userID != null && userID.equals()) {
			%>
			<a href="update.jsp?bbsID=<%=bbsID%>" class="btn btn-primary">수정</a>
			<a href="delete.jsp?bbsID=<%=bbsID%>" class="btn btn-primary">삭제</a>
			<%
				}
			%>  --%>
			
		</div>
	</div>


</body>
</html>