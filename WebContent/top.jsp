<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   String id = (String) session.getAttribute("idKey");
   String cPath = request.getContextPath();
   String url1 = "member/member.jsp";
   String url2 = "member/login.jsp";
   String label1 = "회원가입";
   String label2 = "로그인";
   if(id!=null){
      url1 = "member/memberUpdate.jsp";
        url2 = "member/logout.jsp";
        label1 = "마이페이지";
        label2 = "로그아웃";
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
html, body{
   margin-left : 0;
   margin-right : 0;
   padding :0;
   margin :0;
}

#top{
   width : 100%;
   left: 50%;
    transform: translateX(-50%);
   position : fixed;
   background : white;
   z-index:2000;
}
#member_check {
   float : right;
   margin-top : 5px;
   width : 200px;
}

.content{
	padding-top : 150px;
   width : 1300px;
   margin : 0 auto;
}
.menubar{
border:none;
border:0px;
margin:-5px;
padding:-5px;
font: 67.5%;
font-family: 고딕,verdana,tahoma;
font-size:20px;
font-weight:bold;
text-align : center;
}

.menubar ul{
background: #38532e;
height:50px;
list-style:none;
margin:0;
padding:0;
}

.menubar li{
   float:right;
   padding:0px;
   width : 200px;
}

.menubar li a{
background: #38532e;
color:#cccccc;
display:block;
font-weight:normal;
line-height:50px;
margin:0px;
padding:0px 25px;
text-align:center;
text-decoration:none;
}

.menubar li a:hover, .menubar ul li:hover a{
background: #2e7a17;
color:#FFFFFF;
text-decoration:none;
}

.menubar li ul{
background: #38532e;
display:none; /* 평상시에는 드랍메뉴가 안보이게 하기 */
height:auto;
padding:0px;
margin:0px;
border:0px;
position:absolute;
width:200px;
z-index:50000;
/*top:1em;
/*left:0;*/
}

.menubar li:hover ul{
display:block; /* 마우스 커서 올리면 드랍메뉴 보이게 하기 */
}

.menubar li li {
background: #38532e;
display:block;
float:none;
margin:0px;
padding:0px;
width:200px;
}

.menubar li:hover li a{
background:none;
}

.menubar li ul a{
display:block;
height:50px;
font-size:18px;
font-style:normal;
margin:0px;
padding:0px 10px 0px 15px;
text-align:left;
}

.menubar li ul a:hover, .menubar li ul li:hover a{
background:  #2e7a17;
border:0px;
color:#ffffff;
text-decoration:none;
}

.menubar p{
clear:left;
}
    ul, ol, li { list-style:none; margin:0; padding:0; }
    
    ul.myMenu {}
    ul.myMenu > li { display:inline-block; width:80px; padding:5px 10px; background:#eee; text-align:center; }
    ul.myMenu > li ul.submenu { display:none; }
</style>

<title>산너머산</title>
</head>
<body>
   <header id="top">
   <div id="member_check">
      <a href="<%=cPath %>/<%=url1%>"><b><%=label1%></b></a>
      <a href="<%=cPath %>/<%=url2%>"><b><%=label2%></b></a>
   </div>
   <div style="width:500px; margin-bottom:-10px; padding-left : 20px;">
   <a href="<%=cPath %>/main.jsp"><img src = "<%=cPath %>/image/logo_garo3.png" width ="300px"></a>
   </div>
   <br>
   <nav class = "menubar">
      <ul class = "mymenu">
         <li><a href="<%=cPath %>/board/list.jsp"><b>산게시판</b></a></li>
         <li><a href="<%=cPath %>/board2/list.jsp"><b>산갤러리</b></a></li>
         <li><a href="<%=cPath %>/mountain_reco.jsp"><b>산추천</b></a>
            <ul>
               <li><a href="<%=cPath %>/mountain_reco.jsp"><b>계절별</b></a></li>
               <li><a href="<%=cPath %>/mountain_reco2.jsp"><b>테마별</b></a></li>
            </ul>
         </li>
         <li><a href="<%=cPath %>/mountain_info.jsp"><b>산소개</b></a></li>
      </ul>
   </nav>
   </header>
</body>
</html>