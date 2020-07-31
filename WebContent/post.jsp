<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 뷰포트 -->
<meta name="viewport" content="width=device-width" initial-scale="1">
<title>jsp 게시판 웹사이트</title>
</head>
<body>
	<%
		//cid값 가져오기
	String userID = null;
	if (session.getAttribute("cid") != null) {
		userID = (String) session.getAttribute("cid");
	}
	%>
	<div class="container">
		<div class="row">
			<form class="m_form" method="post" action="boardControl.jsp?action=newmsg">
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd">
					<tr>
						<th colspan="2"
							style="background-color: #eeeeee; text-align: center;">게시판
							글쓰기 양식</th>
					</tr>

					</thead>

					<tbody>

						<tr>
							<td><input type="text" class="form-control"
								placeholder="글 제목" name="ctitle" maxlength="50" /></td>
						</tr>
						<tr>
							<td><textarea class="form-control" placeholder="글 내용"
									name="cmsg" maxlength="2048" style="height: 350px;"></textarea></td>
						</tr>
					</tbody>
				</table>
				<input type="submit" class="postAct" value="글쓰기" />
			</form>
		</div>
	</div>

</body>

</html>
