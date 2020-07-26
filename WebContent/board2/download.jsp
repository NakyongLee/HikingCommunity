<%@page contentType="application; charset=UTF-8"%>
<jsp:useBean id="bMgr" class="board2.BoardMgr2" />
<%
	  bMgr.downLoad(request, response, out, pageContext);
%>