<%@ page contentType="text/html; charset=UTF-8"%>
<%
      session.invalidate();
%>
<script>
   alert('로그아웃 되었습니다.');
   top.document.location.reload(); 
   location.href="../main.jsp";
</script>