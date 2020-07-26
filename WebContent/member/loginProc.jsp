<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="mMgr" class="mem.MemberMgr"/>
<%
	  request.setCharacterEncoding("UTF-8");
	  String cPath = request.getContextPath();
	  String id = request.getParameter("id");
	  String pass = request.getParameter("pwd");
	  String url = cPath+"/left.jsp";
	  String msg = "로그인에 실패 하였습니다.";
	  
	  boolean result = mMgr.loginMember(id,pass);
	  if(result){
	    session.setAttribute("idKey",id);
	    session.setAttribute("pwdKey", pass);
	    msg = "로그인에 성공 하였습니다.";
	  }
%>
<script>
	alert("<%=msg%>");
	top.document.location.reload();
	location.href="../main.jsp";
</script>