<%@ page contentType="text/html;  charset=UTF-8" %>
<%@page import="mnt.RegisterBean3"%>
<%@page import="java.util.Vector"%>
<jsp:useBean id="regMgr1" class="mnt.RegisterMgrPool3" />
<%	
	  request.setCharacterEncoding("UTF-8");

	  String keyWord = "", keyField = "";
		Vector<RegisterBean3> vlist = null;
		if (request.getParameter("keyWord") != null) {
			keyWord = request.getParameter("keyWord");
			keyField = request.getParameter("keyField");
		}
		if (request.getParameter("reload") != null){
			if(request.getParameter("reload").equals("true")) {
				keyWord = "";
				keyField = "";
			}
		}
	
	
%>
<html>
<head>
<title>산너머산</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function list() {
		document.listFrm.action = "list.jsp";
		document.listFrm.submit();
	}
	
	
	function read(num){
		document.readFrm.num.value=num;
		document.readFrm.action="info.jsp";
		document.readFrm.submit();
	}
	
	function check() {
	     if (document.searchFrm.keyWord.value == "") {
	   alert("검색어를 입력하세요.");
	   document.searchFrm.keyWord.focus();
	   return;
	     }
	  document.searchFrm.submit();
	 }
</script>
<style>
*{
	font-family : "고딕";
}

.m_list{
	width : 1000px;
	margin : 0 auto;
	/*
	border-top: 1px solid #444444;
    border-collapse: collapse;
    */
}

.m_list td{
	/*border-bottom: 1px solid #444444;*/
    padding: 10px;
}
</style>
</head>
<body bgcolor="#FFF">
<jsp:include page="top.jsp"/>
<div align="center" class="content">
   <br/>
   <h2>산소개</h2>
   <br/>
   <form  name="searchFrm"  method="get" action="mountain_info.jsp">
   <table width="600" cellpadding="4" cellspacing="0">
       <tr>
           <td align="center" valign="bottom">
               <select name="keyField" size="1" >
                <option value="m_name"> 이 름</option>
                <option value="m_place"> 지 역</option>
               </select>
               <input size="16" name="keyWord">
               <input type="button"  value="찾기" onClick="javascript:check()">
               <input type="hidden" name="nowPage" value="1">
           </td>
       </tr>
   </table>
   </form>
   <br>
   <div style="width:80%;">
         <%
               vlist = regMgr1.getBoardList(keyField, keyWord);
              int listSize = vlist.size();//브라우저 화면에 보여질 게시물갯수
              if (vlist.isEmpty()) {
               out.println("등록된 게시물이 없습니다.");
              } else {
         %>
              
               
               <%
               for (int i = 0;i<listSize; i++) {
                     RegisterBean3 bean = vlist.get(i);
                     int id = bean.getM_id();
                     String img = bean.getM_img();
                     String name = bean.getM_name();
                     float height = bean.getM_height();
                     String place = bean.getM_place();
                     
                     
               %>
               <a href="javascript:read('<%=id%>')">
               <div style="border:solid 1px">
               <table width="100%">
               <tr>
                  <td rowspan="3" align = "center" width="50px"><a href="javascript:read('<%=id%>')"><%=id %></a></td>
                  <td rowspan="3" align = "center" height = "250px" width="350px"><img width="300px" height = "200px" src="<%=img%>"></td>
                  <td width = "70px" align="center">이름</td>
                  <td><a href="javascript:read('<%=id%>')"><%=name%></a></td>
               </tr>
               <tr>
                  <td width = "70px" align="center">높이</td>
                  <td><%=height%></td>
               </tr>
               <tr>
                  <td width = "70px" align="center">위치</td>
                  <td><%=place%></td>
               </tr>
               </table>
               </div>
               </a>
               <br>
               <%}%>
             <%
              }
       %>
      </div>
  
   <form name="readFrm" method="get">
      <input type="hidden" name="num">
      <input type="hidden" name="keyField" value="<%=keyField%>"> 
      <input type="hidden" name="keyWord" value="<%=keyWord%>">
   </form>
</div>
<jsp:include page="copy.jsp"/>
</body>
</html>