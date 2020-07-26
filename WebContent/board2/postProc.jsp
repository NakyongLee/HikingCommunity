<%@ page contentType="text/html;  charset=UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="bMgr" class="board2.BoardMgr2"/>
<%
	  bMgr.insertBoard(request);
	  response.sendRedirect("list.jsp");
%>