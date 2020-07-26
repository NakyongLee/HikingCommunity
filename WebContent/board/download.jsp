<%@page contentType="application; charset=UTF-8"%>
<jsp:useBean id="bMgr" class="board1.BoardMgr" />
<%
	  bMgr.downLoad(request, response, out, pageContext);
%>