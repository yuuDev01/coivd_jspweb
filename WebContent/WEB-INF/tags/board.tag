<%@ tag body-content="scriptless" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<form name="sharmenu" method="post" action="user_control.jsp">
<c:choose>
<c:when test="${cid != null}">
   
</c:when>
<c:when test="${menuName == 'About'}">
  co_in은..
</c:when>
<c:when test="${menuName == 'info'}">
  기타 코로나 정보에 관해 공유하는 게시판입니다.</br>
</c:when>
</c:choose>
</form>