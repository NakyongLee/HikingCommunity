<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="mnt.*, java.util.*" %>
<jsp:useBean id="regMgr2" class="mnt.RegisterMgrPool4"/>
  <%
	  request.setCharacterEncoding("UTF-8");
	  int num = Integer.parseInt(request.getParameter("num"));
	  
	  String mySQL = "SELECT m_name, m_height, m_place, m_content FROM mnt_info WHERE m_id = '" + num;
%>
<html>
<head>
<title>산너머산</title>
<link href="style.css" rel="stylesheet" type="text/css"> 

<script>
	function read(num){
		document.readFrm.num.value=num;
		document.readFrm.action="info.jsp";
		document.readFrm.submit();
}
</script>
<style>
.reco_content{
	border : 1px solid;
	padding : 20px;
}
</style>
</head>
<body bgcolor="#FFF">
<jsp:include page="top.jsp"/>
<div class="content">
<h2></h2><br/>

<%
	String rec = "";
	if(num == 1)
		rec="봄";
	else if(num == 2)
		rec="여름";
	else if(num==3)
		rec="가을";
	else if(num==4)
		rec="겨울";
	else if(num==5)
		rec="역사";
	else if(num==10)
		rec="억새";
	else if(num==7)
		rec="조망";
	else if(num==9)
		rec="일출";
	else if(num==8)
		rec="가족";
	else if(num==6)
		rec="강아지";
	else
		;		
%>
<h1 align="center"><%=rec %></h1>
<table align="center" width="800px" cellpadding="3" class="m_list">

<%
	Vector<RegisterBean4> vlist = regMgr2.getRegisterList();
	int counter = vlist.size();
	
	for(int i = 0; i<vlist.size(); i++){
		RegisterBean4 regBean2 = vlist.get(i);
		if(num == regBean2.getM_season()){
%>
	<tr>
		<td>
		<br>
		<div class="reco_content">
		<a href="javascript:read('<%=regBean2.getM_id()%>')">
		<h2 align="center">
		<%=regBean2.getM_name() %>
		</h2>
		<div><%=regBean2.getContent()%></div>
		</a>
		</div>
		<br>
		</td>
	</tr>
<%
   }
}
%>

</table>
<br/>
<br/>
<!-- total records : <%= counter %>  -->
	<form name="readFrm" method="get">
		<input type="hidden" name="num"> 
	</form>
</div>
<jsp:include page="copy.jsp"/>
</body>
</html>