<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="mnt.*, java.util.*" %>
<jsp:useBean id="regMgr" class="mnt.RegisterMgrPool4"/>
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
<div class="content" style="padding-top:180px;">
<table align = "center">
<tr>
<td colspan="3">
<h2 style="text-align:center;">테마별산추천</h2><br/>
</td>
</tr>
<tr>
<td>
<div class="control">
<figure class="snip1132">
  <img src="image/history.jpg" width = 400px; height=210px; alt="history" />
  <figcaption>
    <div class="heading">
      <h3><span>역사</span></h3>
    </div>
    <div class="caption">
      <p>산성과 행궁 등 문화유적을 볼 수 있는 산을 소개합니다.</p>
    </div>
  </figcaption>
  <a href="javascript:read('5')"></a>
</figure>
</div>
</td>
<td>
<div class="control">
<figure class="snip1132">
	<img src="image/uksae.jpg" width = 400px; height=210px; alt="uksae" />
  <figcaption>
    <div class="heading">
      <h3><span>억새</span></h3>
    </div>
    <div class="caption">
      <p>하얗게 피어난 억새꽃 장관을 볼 수 있는 산을 소개합니다</p>
    </div>
  </figcaption>
  <a href="javascript:read('10')"></a>
</figure>
</div>
</td>
<td>
<div class="control">
<figure class="snip1132">
	<img src="image/jomang.png" width = 400px; height=210px; alt="jomang" />
  	<figcaption>
    	<div class="heading">
    	  <h3><span>조망</span></h3>
    	</div>
    	<div class="caption">
   	   <p>조망 좋은 산을 소개합니다</p>
   	 </div>
  	</figcaption>
  <a href="javascript:read('7')"></a>
</figure>
</div>
</td>
</tr>
<Tr>
<td>
<div class="control">
<figure class="snip1132">
	<img src="image/sun.jpg" width = 400px; height=210px; alt="sun" />
  	<figcaption>
    	<div class="heading">
    	  <h3><span>일출</span></h3>
    	</div>
    	<div class="caption">
   	   <p>해돋이 일출 명소를 소개합니다</p>
   	 </div>
  	</figcaption>
  <a href="javascript:read('9')"></a>
</figure>
</div>
</td>
<td>
<div class="control">
<figure class="snip1132">
	<img src="image/family.png" width = 400px; height=210px; alt="family" />
  	<figcaption>
    	<div class="heading">
    	  <h3><span>가족</span></h3>
    	</div>
    	<div class="caption">
   	   <p>가족과 함께 오르기 좋은 산을 소개합니다</p>
   	 </div>
  	</figcaption>
  <a href="javascript:read('8')"></a>
</figure>
</div>
</td>
<td>
<div class="control">
<figure class="snip1132">
	<img src="image/dog.jpeg" width = 400px; height=210px; alt="dog" />
  	<figcaption>
    	<div class="heading">
    	  <h3><span>강아지</span></h3>
    	</div>
    	<div class="caption">
   	   <p>강아지 입산가능 산을 소개합니다</p>
   	 </div>
  	</figcaption>
  <a href="javascript:read('6')"></a>
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