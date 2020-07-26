<%@ page contentType="text/html;  charset=UTF-8" %>
 <%@ page import="board1.BoardBean"%>
<% 
	  int num = Integer.parseInt(request.getParameter("num"));
	  String nowPage = request.getParameter("nowPage");
	  BoardBean bean = (BoardBean)session.getAttribute("bean");
	  String subject = bean.getSubject();
	  String name = bean.getName(); 
	  String content = bean.getContent(); 
	  String cPath = request.getContextPath();
		String pwd = (String) session.getAttribute("pwdKey");
		String id = (String) session.getAttribute("idKey");
	  
%>
<html>
<head>
<title>산너머산</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function check() {
		<%System.out.println(pwd);%>
	   if (document.updateFrm.pass.value == "") {
		 alert("수정을 위해 패스워드를 입력하세요." + document.updateFrm.pass.value);
		 document.updateFrm.pass.focus();
		 return false;
		 }
	   document.updateFrm.submit();
	}
</script>
</head>
<body bgcolor="#FFF">
<jsp:include page="../top.jsp"/>
<div class="content">
<div align="center"><br/><br/>
<table width="800px" cellpadding="3">
  <tr>
   <td bgcolor="#71c13c"  height="21" align="center">산게시판 수정하기</td>
  </tr>
</table>
<form name="updateFrm" method="post" action="<%=cPath%>/boardUpdate">
<table width="800px" cellpadding="7" align="center">
	<tr >
     <td>&nbsp;&nbsp;&nbsp;제 목</td>
     <td>
	  <input name="subject" size="80" value="<%=subject%>" maxlength="50">
	 </td>
    <tr>
     <td>&nbsp;&nbsp;&nbsp;내 용</td>
     <td>
	  <textarea name="content" rows="10" cols="80"><%=content%></textarea>
	 </td>
    </tr>
	<tr>
     <td>&nbsp;&nbsp;&nbsp;비밀 번호</td> 
     <td><input type="password" name="pass" size="15" maxlength="15" id="">
      로그인 시 사용한 비밀번호를 입력해주세요.</td>
    </tr>
	<tr>
     <td colspan="2" height="5"><hr/></td>
    </tr>
	<tr align="center">
     <td colspan="2">
	  <input type="button" value="수정완료" onClick="check()"> 
      <input type="reset" value="다시수정"> 
      <input type="button" value="뒤로" onClick="history.go(-1)">
	 </td>
    </tr> 
</table>
 <input type="hidden" name="nowPage" value="<%=nowPage %>">
 <input type='hidden' name="num" value="<%=num%>">
<input type="hidden" name="name" size="10" maxlength="8" value="<%=id%>">
</form> 
</div>
</div>
<jsp:include page="../copy.jsp"/>
</body>
</html>