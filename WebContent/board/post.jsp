<%@ page contentType="text/html;  charset=UTF-8" %>
<%
		String cPath = request.getContextPath();
		String pwd = (String) session.getAttribute("pwdKey");
		String id = (String) session.getAttribute("idKey");
		System.out.println(pwd + " " + id);
%>
<html>
<head>
<title>산너머산</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script>
function check() {
    if (document.postFrm.subject.value == "") {
  		alert("제목을 입력하세요.");
  		document.postFrm.subject.focus();
  		return ;
    }
    if (document.postFrm.content.value == "") {
  		alert("내용을 입력하세요.");
  		document.postFrm.content.focus();
  		return ;
    }
    
    
    else{
 		document.postFrm.submit();
    }
}
</script>
</head>
<body bgcolor="#FFF">
<jsp:include page="../top.jsp"/>
<div class="content">
<div align="center">
<br/><br/>
<table width="800px" cellpadding="3">
	<tr>
		<td bgcolor="5bc13c" height="30" align="center"> 산게시판 글쓰기</td>
	</tr>
</table>
<br/>
<form name="postFrm" method="post" action="<%=cPath%>/boardPost" enctype="multipart/form-data">
<table width="800px" cellpadding="3" align="center">
	<tr>
		<td align=center>
		<table align="center">
			<tr>
				<td width="15%"> 제 목</td>
				<td width="90%">
				<input name="subject" size="80" maxlength="30"></td>
			</tr>
			<tr>
				<td>내 용</td>
				<td><textarea name="content" rows="10" cols="80"></textarea></td>
			</tr>
			<tr>
			 <tr>
     			<td>파일찾기</td> 
     			<td><input type="file" name="filename" size="50" maxlength="50"></td>
    		</tr>
 			<tr>
 				<td>내용타입</td>
 				<td> HTML<input type=radio name="contentType" value="HTTP" >&nbsp;&nbsp;&nbsp;
  			 	TEXT<input type=radio name="contentType" value="TEXT" checked>
  			 	</td>
 			</tr>
			<tr>
				<td colspan="5"><hr/></td>
			</tr>
			<tr align="center">
				<td colspan="2" align="center">
					 <input type="button" value="등록" onClick="javascript:check()">
					 <input type="reset" value="다시쓰기">
					 <input type="button" value="리스트" onClick="javascript:location.href='list.jsp'">
				</td>
			</tr>
		</table>
		</td>
	</tr>
</table>
<input type="hidden" name="ip" value="<%=request.getRemoteAddr()%>">
<input type="hidden" name="pass" size="15" maxlength="15" value="<%=pwd%>">
<input type="hidden" name="name" size="10" maxlength="8" value="<%=id%>">
</form>
</div>
</div>
<jsp:include page="../copy.jsp"/>
</body>
</html>