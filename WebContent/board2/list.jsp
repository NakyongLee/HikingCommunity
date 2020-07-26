<%@ page contentType="text/html;  charset=UTF-8" %>
<%@page import="board1.BoardBean"%>
<%@page import="java.util.Vector"%>
<jsp:useBean id="bMgr" class="board2.BoardMgr2" />
<%	
	  request.setCharacterEncoding("UTF-8");
	  
      int totalRecord=0; //전체레코드수
	  int numPerPage=9; // 페이지당 레코드 수 
	  int pagePerBlock=15; //블럭당 페이지수 
	  
	  int totalPage=0; //전체 페이지 수
	  int totalBlock=0;  //전체 블럭수 

	  int nowPage=1; // 현재페이지
	  int nowBlock=1;  //현재블럭
	  
	  int start=0; //디비의 select 시작번호
	  int end=9; //시작번호로 부터 가져올 select 갯수
	  
	  int listSize=0; //현재 읽어온 게시물의 수

	  String keyWord = "", keyField = "";
		Vector<BoardBean> vlist = null;
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
	
	if (request.getParameter("nowPage") != null) {
		nowPage = Integer.parseInt(request.getParameter("nowPage"));
	}
	 start = (nowPage * numPerPage)-numPerPage;
	 end = numPerPage;
	 
	 totalRecord = bMgr.getTotalCount(keyField, keyWord);
	totalPage = (int)Math.ceil((double)totalRecord / numPerPage);  //전체페이지수
	nowBlock = (int)Math.ceil((double)nowPage/pagePerBlock); //현재블럭 계산
	  
	totalBlock = (int)Math.ceil((double)totalPage / pagePerBlock);  //전체블럭계산
	String id = (String)session.getAttribute("idKey");

	String cPath = request.getContextPath();
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
	
	function pageing(page) {
		document.readFrm.nowPage.value = page;
		document.readFrm.submit();
	}
	
	function block(value){
		 document.readFrm.nowPage.value=<%=pagePerBlock%>*(value-1)+1;
		 document.readFrm.submit();
	} 
	
	function read(num){
		document.readFrm.num.value=num;
		document.readFrm.action="read.jsp";
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
<!--  
<style>
	td{
		padding : 10px;
	}
</style>
-->
</head>
<body bgcolor="#FFF">
<jsp:include page="../top.jsp"/>
<div class="content" align="center">
	<br/>
	<h2>산갤러리</h2>
	<br/>
	<table align="center" width="800px">
			<tr>
				<td>Total : <%=totalRecord%>Articles(<font color="red">
				<%=nowPage%>/<%=totalPage%>Pages</font>)</td>
			</tr>
	</table>
	<table  class="m_list" align="center" width="800px" cellpadding="3">
		<tr>
			<td align="center" colspan="2">
			<%
				  vlist = bMgr.getBoardList(keyField, keyWord, start, end);
				  listSize = vlist.size();//브라우저 화면에 보여질 게시물갯수
				  if (vlist.isEmpty()) {
					out.println("등록된 게시물이 없습니다.");
				  } else {
			%>
				  <table  class="m_list" width="100%" cellpadding="2" cellspacing="0">
					
					<tr>
					<%
						String []file_array = new String[listSize];
						  for (int i = 0;i<numPerPage; i++) {
							if (i == listSize) break;
							BoardBean bean = vlist.get(i);
							int num = bean.getNum();
							String name = bean.getName();
							String subject = bean.getSubject();
							String regdate =bean.getRegdate();
							int count = bean.getCount();
							String filename = bean.getFilename();
							String picture = cPath+"/fileupload/"+ filename;
							file_array[i] = picture;
							
							if(i%3 != 0){
					
					%>
						
						<td align="left">
							<%if (id != null){%>
							<a href="javascript:read('<%=num%>')">
							<div class="gallery">	
							<div>
							<img src="<%=picture %>" width="300px" height="200px">
							</div>
							<div>
							제목 : <%=subject %>
							</div>
							<div>
							작성자 : <%=name %>
							</div>
							<div>
							조회수 : <%=count %>
							</div>
							</div>
							</a>
							<%}else{ %>
							<a href="../member/login.jsp" onClick="alert('로그인이 필요한 페이지입니다.');">
							<div class="gallery">
							<div>
							<img src="<%=picture %>" width="300px" height="200px">
							</div>
							<div>
							제목 : <%=subject %>
							</div>
							<div>
							작성자 : <%=name %>
							</div>
							<div>
							조회수 : <%=count %>
							</div>
							</div>
							</a>
							<%} %>
						</td>
						
					
					<%}else{%>
						</tr>
						<tr>
						<td align="left">
							<%if (id != null){%>
							<a href="javascript:read('<%=num%>')">
							<div class="gallery">	
							<div>
							<img src="<%=picture %>" width="300px" height="200px">
							</div>
							<div>
							제목 : <%=subject %>
							</div>
							<div>
							작성자 : <%=name %>
							</div>
							<div>
							조회수 : <%=count %>
							</div>
							</div>
							</a>
							<%}else{ %>
							<a href="../member/login.jsp" onClick="alert('로그인이 필요한 페이지입니다.');">
							<div class="gallery">
							<div>
							<img src="<%=picture %>" width="300px" height="200px">
							</div>
							<div>
							제목 : <%=subject %>
							</div>
							<div>
							작성자 : <%=name %>
							</div>
							<div>
							조회수 : <%=count %>
							</div>
							</div>
							</a>
							<%} %>
						</td>
					<%}
				}//for%>
				</table> <%
 			}//if
 		%>
			</td>
		</tr>
		<tr>
			<td colspan="2"><br /><br /></td>
		</tr>
		<tr>
			<td>
			<!-- 페이징 및 블럭 처리 Start--> 
			<%
   				  int pageStart = (nowBlock -1)*pagePerBlock + 1 ; //하단 페이지 시작번호
   				  int pageEnd = ((pageStart + pagePerBlock ) <= totalPage) ?  (pageStart + pagePerBlock): totalPage+1; 
   				  //하단 페이지 끝번호
   				  if(totalPage !=0){
    			  	if (nowBlock > 1) {%>
    			  		<a href="javascript:block('<%=nowBlock-1%>')">prev...</a><%}%>&nbsp; 
    			  		<%for ( ; pageStart < pageEnd; pageStart++){%>
     			     	<a href="javascript:pageing('<%=pageStart %>')"> 
     					<%if(pageStart==nowPage) {%><font color="blue"> <%}%>
     					[<%=pageStart %>] 
     					<%if(pageStart==nowPage) {%></font> <%}%></a> 
    					<%}//for%>&nbsp; 
    					<%if (totalBlock > nowBlock ) {%>
    					<a href="javascript:block('<%=nowBlock+1%>')">.....next</a>
    				<%}%>&nbsp;  
   				<%}%>
 				<!-- 페이징 및 블럭 처리 End-->
				</td>
				<td align="right">
					<%if(id != null) {%>
					<a href="post.jsp" >[글쓰기]</a> 
					<%}else{ %>
					<a href="../member/login.jsp" onClick="alert('로그인 해주세요');">[글쓰기]</a>
					<%} %>
					<a href="javascript:list()">[처음으로]</a>
				</td>
			</tr>
		</table>
	<hr width="900"/>
	<form  name="searchFrm"  method="post" action="list.jsp">
	<table width="800px" cellpadding="4" cellspacing="0">
 		<tr>
  			<td align="center" valign="bottom">
   				<select name="keyField" size="1" >
    				<option value="name"> 이 름</option>
    				<option value="subject"> 제 목</option>
    				<option value="content"> 내 용</option>
   				</select>
   				<input size="16" name="keyWord">
   				<input type="button"  value="찾기" onClick="javascript:check()">
   				<input type="hidden" name="nowPage" value="1">
  			</td>
 		</tr>
	</table>
	</form>
	<form name="listFrm" method="post">
		<input type="hidden" name="reload" value="true"> 
		<input type="hidden" name="nowPage" value="1">
	</form>
	<form name="readFrm" method="get">
		<input type="hidden" name="num"> 
		<input type="hidden" name="nowPage" value="<%=nowPage%>"> 
		<input type="hidden" name="keyField" value="<%=keyField%>"> 
		<input type="hidden" name="keyWord" value="<%=keyWord%>">
	</form>
</div>
<jsp:include page="../copy.jsp"/>
</body>
</html>