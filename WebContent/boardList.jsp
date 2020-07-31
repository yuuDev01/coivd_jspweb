<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
		<div class = "row">
   <!--  게시판 뷰를 만든다. -->
			<table class="table table-striped" style="text-align:center; border:1px solid #dddddd"> 
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">작성자</th>
						<th style="background-color: #eeeeee; text-align: center;">작성일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>위메프 마스크 개당 1000원</td>
						<td>홍길동</td>
						<td>2020-07-02</td>
					</tr>
				</tbody>
			</table>	
			<a href = "post.jsp" class="btn btn-primary pull-right">글쓰기</a> <!-- 글쓰기 버튼 클릭시 post.jsp로 이동한다. -->
		</div>
</body>
</html>