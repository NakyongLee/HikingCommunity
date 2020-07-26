<%@ page contentType="text/html; charset=UTF-8" %>
<!-- usebean -->
<jsp:useBean id="mMgr" class="mem.MemberMgr" />
<%
	request.setCharacterEncoding("UTF-8");
	//URL로 넘겨준 id 받아서 
	String id = request.getParameter("id");
	//checkId 메소드 호출
	boolean result = mMgr.checkId(id);
%>
<html>
<head>
<title>ID 중복체크</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFF">
	<div align="center">
		<br/><b><%=id%></b>
		<%
			if (result) {
				out.println("는 이미 존재하는 ID입니다.<p/>");
			} else {
				out.println("는 사용 가능 합니다.<p/>");
			}
		%>
		<a href="#" onClick="self.close()">닫기</a>
	</div>
</body>
</html>