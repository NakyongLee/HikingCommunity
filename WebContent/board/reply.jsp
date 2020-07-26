<%@ page contentType="text/html;  charset=UTF-8" %>
<jsp:useBean id="bean" class="board1.BoardBean" scope="session"/>
<%
	  String nowPage = request.getParameter("nowPage");
	  String subject = bean.getSubject();
	  String content = bean.getContent(); 
	  String cPath = request.getContextPath();
	  String pwd = (String) session.getAttribute("pwdKey");
	  String id = (String) session.getAttribute("idKey");
%>
<html>
<head>
<title>산너머산</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFF">
<jsp:include page="../top.jsp"/>
<div class="content">
<div align="center">
<br><br>
 <table width="800px" cellpadding="3">
  <tr>
   <td bgcolor="#71c13c" height="21" align="center">답변하기</td>
  </tr>
</table>
<form method="post" action="<%=cPath%>/boardReply" >
<table width="800px" cellpadding="7">
 <tr>
     <td>&nbsp;&nbsp;&nbsp;제 목</td>
     <td>
	  <input name="subject" size="80" value="답변 : <%=subject%>" maxlength="50"></td> 
    </tr>
	<tr>
     <td>&nbsp;&nbsp;&nbsp;내 용</td>
     <td>
	  <textarea name="content" rows="12" cols="80">
      	<%=content %>
      	========답변 글을 쓰세요.=======
      	</textarea>
      </td>
    </tr>
    <tr>
     <td colspan="2" height="5"><hr/></td>
    </tr>
	<tr align="center"> 
     <td colspan="2" align="center">
	  <input type="submit" value="답변등록" >
      <input type="reset" value="다시쓰기">
      <input type="button" value="뒤로" onClick="history.back()"></td>
    </tr> 
</table>
 <input type="hidden" name="ip" value="<%=request.getRemoteAddr()%>" >
 <input type="hidden" name="nowPage" value="<%=nowPage%>">
 <input type="hidden" name="ref" value="<%=bean.getRef()%>">
 <input type="hidden" name="pos" value="<%=bean.getPos()%>">
 <input type="hidden" name="depth" value="<%=bean.getDepth()%>">
 <input type="hidden" name="pass" size="15" maxlength="15" value="<%=pwd%>">
<input type="hidden" name="name" size="10" maxlength="8" value="<%=id%>">
</form> 
</div>
</div>
<jsp:include page="../copy.jsp"/>
</body>
</html>