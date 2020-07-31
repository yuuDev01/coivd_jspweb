<%@ tag body-content="scriptless" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<form name="sharmenu" method="post" action="board_control.jsp">
<c:choose>
<c:when test="${menuName == 'share'}">
   <ul>
	<li><a href="#">전체보기 </a></li>
	<li><a href="#">마스크 </a></li>
	<li><a href="#">식료퓸</a></li>
	<li><a href="#">향균제품</a></li>
	<li><a href="#">의약품</a></li>
	<li><a href="#">기타소모품</a></li>
  </ul>
</c:when>
<c:when test="${menuName == 'About'}">
  co_in은..
</c:when>
<c:when test="${menuName == 'info'}">
  기타 코로나 정보에 관해 공유하는 게시판입니다.</br>
</c:when>
<c:otherwise>
  

</c:otherwise>
</c:choose>
</form>