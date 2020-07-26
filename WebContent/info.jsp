<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="mnt.*, java.util.*" %>
<jsp:useBean id="regMgr" class="mnt.RegisterMgrPool3"/>
  <%

	  int num = Integer.parseInt(request.getParameter("num"));
	  num = num-1;
	  Vector<RegisterBean3> vlist = regMgr.getRegisterList();
	  RegisterBean3 regBean = vlist.get(num);
	  
	  
%>
    
<html>
<head>
<meta charset="UTF-8">
<link href="style.css" rel="stylesheet" type="text/css">
<title>산너머산</title>
<style>
.m_list{
	width : 1000px;
	margin : 0 auto;
	border-top: 1px solid #38532e;
    border-collapse: collapse;
}
.m_list td{
	border-bottom: 1px solid #38532e;
    padding: 10px;
}
</style>
</head>
<body bgcolor="#FFF">
<jsp:include page="top.jsp"/>
<div>

</div>
<div class="content">
	
	<table align="center" width="800px" cellpadding="3" class="m_list">
		<tr>
   			<td colspan="2"><h1 align="center"><%=regBean.getM_name()%></h1></td>
   		</tr>
   		<tr>
			<td><strong>이미지</strong></td>
			<td ><img src="<%=regBean.getM_img() %>"></td>
		</tr>
   		<tr>
   			<td width = "120px"><strong>높이</strong></td>
   			<td><%=regBean.getM_height()%></td>
   		</tr>
   		<tr>
  			<td><strong>위치</strong></td>
  			<td><%=regBean.getM_place()%></td>
		</tr>
		
		<tr>
  			<td><strong>산 부제 정보</strong></td>
  			<td><%=regBean.getM_subname()%></td>
		</tr>
		
		<tr>
  			<td><strong>명산 선정 이유</strong></td>
  			<td><%=regBean.getM_reason()%></td>
		</tr>
		
		<tr>
  			<td><strong>간단 개요</strong></td>
  			<td><%=regBean.getM_simple()%></td>
		</tr>
		
		<tr>
  			<td><strong>상세 정보</strong></td>
  			<td><%=regBean.getM_detail()%></td>
		</tr>
		<tr>
			<td><strong>교통 수단</strong></td>
			<td><%=regBean.getM_trans()%></td>
		</tr>
		<tr>
			<td><strong>관광</strong></td>
			<td><%=regBean.getM_trip()%></td>
		</tr>
	</table>
</div>
<jsp:include page="copy.jsp"/>
</body>
</html>