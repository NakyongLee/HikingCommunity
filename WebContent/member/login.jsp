<%@ page contentType="text/html; charset=UTF-8"%>
<%
	  request.setCharacterEncoding("UTF-8");
	  String id = (String)session.getAttribute("idKey");
%>
<html>
<head>
<title>로그인</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function loginCheck() {
		if (document.loginFrm.id.value == "") {
			alert("아이디를 입력해 주세요.");
			document.loginFrm.id.focus();
			return;
		}
		if (document.loginFrm.pwd.value == "") {
			alert("비밀번호를 입력해 주세요.");
			document.loginFrm.pwd.focus();
			return;
		}
		document.loginFrm.action = "loginProc.jsp";
		document.loginFrm.submit();
	}
	
	function memberForm(){
		document.loginFrm.action = "member.jsp";
		document.loginFrm.submit();
	}
</script>
</head>
<body bgcolor="#FFF">
<jsp:include page="../top.jsp"/>
<br>
<br>
<div class="content">
<br/><br/>
 <div align="center">
 		<!-- 세션에 id가 있는지 확인 -> 있으면 loginOK에 해당하는 부분(로그아웃 화면 등) -->
 		<!-- 세션에 id가 있는지 확인 -> 없으면 로그인하는 페이지 -->
		<%
			if (id != null) {
		%>
		<b><%=id%></b>님 환영 합니다.
		<p>제한된 기능을 사용 할 수가 있습니다.
		<p>
			<a href="member/logout.jsp">로그아웃</a>
			<%} else {%>
		<form name="loginFrm" method="post" action="member/loginProc.jsp">
			<table>
				<tr>
					<td align="center" colspan="2"><h4>로그인</h4></td>
				</tr>
				<tr>
					<td>아 이 디</td>
					<td><input name="id" value=""></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pwd" value=""></td>
				</tr>
				<tr>
					<td colspan="2">
						<div align="right">
							<input type="button" value="로그인" onclick="loginCheck()">&nbsp;
							<input type="button" value="회원가입" onClick="memberForm()" >
						</div>
					</td>
				</tr>
			</table>
		</form>
		<%}%>
	</div>
</div>
<jsp:include page="../copy.jsp"/>
</body>
</html>