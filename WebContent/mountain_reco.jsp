<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="mnt.*, java.util.*" %>
<jsp:useBean id="regMgr2" class="mnt.RegisterMgrPool4"/>

<html>
<head>
<title>산너머산</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script>
function read(num){
	document.readFrm.num.value=num;
	document.readFrm.action="reco_page.jsp";
	document.readFrm.submit();
}
</script>
<style>
.control{
	display:inline-block;
}

figure.snip1132 {
  position: relative;
  overflow: hidden;
  margin: 10px;
  min-width: 400px;
  max-width: 400px;
  max-height: 700px;
  width: 100%;
  color: #ffffff;
  background: #000000;
  text-align: center;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
}

figure.snip1132 * {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: all 0.45s ease-in-out;
  transition: all 0.45s ease-in-out;
}

figure.snip1132 img {
  max-width: 100%;
  position: relative;
  opacity: 1;
}

figure.snip1132 figcaption {
  position: absolute;
  top: 20px;
  left: 20px;
  right: 20px;
  bottom: 20px;
  border: 1px solid white;
  border-width: 0 1px;
}

figure.snip1132 .heading {
  overflow: hidden;
  -webkit-transform: translateY(-50%);
  transform: translateY(-50%);
  font-family:"고딕";
  color:"white";
}

figure.snip1132 .caption {
  overflow: hidden;
  -webkit-transform: translateY(50%);
  transform: translateY(50%);
  position: absolute;
  width: 100%;
  bottom: 0;
  font-family:"고딕";
  color:"white";
}


figure.snip1132 h3,
figure.snip1132 p {
  display: table;
  margin: 0 auto;
  padding: 0 10px;
  position: relative;
  text-align: center;
  width: auto;
  font-weight: 400;
}

figure.snip1132 h3 span,
figure.snip1132 p span {
  font-weight: 800;
}

figure.snip1132 h3:before,
figure.snip1132 p:before,
figure.snip1132 h3:after,
figure.snip1132 p:after {
  position: absolute;
  display: block;
  width: 1000%;
  height: 1px;
  content: '';
  background: white;
}

figure.snip1132 h3:before,
figure.snip1132 p:before {
  left: -1000%;
}

figure.snip1132 h3:after,
figure.snip1132 p:after {
  right: -1000%;
}

figure.snip1132 h3:before,
figure.snip1132 h3:after {
  top: 50%;
}

figure.snip1132 p {
  font-size: 0.8em;
  font-weight: 500;
}

figure.snip1132 p:before,
figure.snip1132 p:after {
  bottom: 50%;
}

figure.snip1132 a {
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  position: absolute;
  z-index: 1;
}

figure.snip1132:hover img,
figure.snip1132.hover img {
  opacity: 0.35;
  -webkit-transform: scale(1.15);
  transform: scale(1.15);
}

</style>
</head>
<body bgcolor="#FFF">
<jsp:include page="top.jsp"/>
<div class="content" style="padding-top:180px; padding-bottom:0px;">
<table align = "center">
<tr>
<td colspan="2">
<h2 style="text-align : center;">계절별 산추천</h2><br/>
</td>
<tr>
<td><div class="control">
<figure class="snip1132">
  <img src="image/spring.jpg" width = 400px; height=210px; alt="spring" />
  <figcaption>
    <div class="heading">
      <h3><span>봄</span></h3>
    </div>
    <div class="caption">
      <p>꽃내음 가득한 산을 추천해드릴께요</p>
    </div>
  </figcaption>
  <a href="javascript:read('1')"></a>
</figure>
</div>
</td>
<td>
<div class="control">
<figure class="snip1132">
	<img src="image/summer4.jpg" width = 400px; height=210px; alt="summer" />
  <figcaption>
    <div class="heading">
      <h3><span>여름</span></h3>
    </div>
    <div class="caption">
      <p>시원한 계곡이 있는 산을 추천해드릴께요</p>
    </div>
  </figcaption>
  <a href="javascript:read('2')"></a>
</figure>
</div>
</td>
</tr>
<tr>
<td>
<div class="control">
<figure class="snip1132">
	<img src="image/fall.jpg" width = 400px; height=210px; alt="fall" />
  	<figcaption>
    	<div class="heading">
    	  <h3><span>가을</span></h3>
    	</div>
    	<div class="caption">
   	   <p>울긋불긋 단풍이 멋들어진 산을 추천해드릴께요</p>
   	 </div>
  	</figcaption>
  <a href="javascript:read('3')"></a>
</figure>
</div>
</td>
<td>
<div class="control">
<figure class="snip1132">
	<img src="image/winter.jpg" width = 400px; height=210px; alt="winter" />
  	<figcaption>
    	<div class="heading">
    	  <h3><span>겨울</span></h3>
    	</div>
    	<div class="caption">
   	   <p>눈꽃이 아름다운 산을 추천해드릴께요</p>
   	 </div>
  	</figcaption>
  <a href="javascript:read('4')"></a>
</figure>
</div>
</td>
</Tr>
</table>
<br/>
<script>
$(".hover").mouseleave(
	function () {
		$(this).removeClass("hover");
 	}
);
</script>
<form name="readFrm" method="get">
		<input type="hidden" name="num"> 
	</form>
</div>
<jsp:include page="copy.jsp"/>
</body>
</html>