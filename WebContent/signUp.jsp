<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<jsp:useBean id="member" class="member.Member"/> <!-- 자바빈즈 DO -->
<jsp:useBean id="memberDAO" class="member.MemberDAO"/> <!-- 자바빈즈 DAO -->
<jsp:setProperty name="member" property="*" /> <!-- member set메소드에 값 넣기 -->

<% 
   boolean result = memberDAO.insertMem(member);  //mMgr에 MemberBean 객체 파라미터 전달 
   if(result){   //리턴값이 true면 회원가입 성공 - login_from으로 이동
%>
<script type="text/javascript">
  alert("회원가입 성공");
  location.href="index.jsp";
</script>
<%}else{  //로그인 실패%>
<script type= "text/javascript">
  alert("회원가입 실패");
  history.back();
</script>
<%} %>