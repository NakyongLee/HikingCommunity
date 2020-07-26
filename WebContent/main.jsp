<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>산너머산</title>
<%
   String cPath = request.getContextPath();
%>
<style>

   .class {
      padding-top : 200px;
   }
   * {
            box-sizing: border-box;
        }

        .slideshow-container {
            max-width: 1000px;
            position: relative;
            margin: auto;
        }

        .mySlides {
            display: none;
            
        }
        .content{
           z-index : 20;
           font-family : "고딕";
        }

        .prev,
        .next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            width: auto;
            margin-top: -22px;
            padding: 16px;
            color: white;
            font-weight: bold;
            font-size: 18px;
            transition: 0.6s ease;
            border-radius: 0 3px 3px 0;
        }

        .next {
            right: 0;
            border-radius: 3px 0 0 3px;
        }

        .prev:hover,
        .next:hover {
            background-color: rgba(0, 0, 0, 0.8);
        }

        .text {
            color:#f2f2f2;
            font-size: 15px;
            padding: 8px 12px;
            position: absolute;
            bottom: 8px;
            width: 100%;
            text-align: center;
        }

        .numbertext {
            color:#f2f2f2;
            font-size: 12px;
            padding: 8px 12px;
            position: absolute;
            top: 0;
        }

        .dot {
            cursor: pointer;
            height: 15px;
            width: 15px;
            margin: 0 2px;
            background-color: #bbb;
            border-radius: 50%;
            display: inline-block;
            transition: background-color 0.6s ease;
        }

        .active,
        .dot:hover {
            background-color: #3a3934;
        }

        .fade {
            -webkit-animation-name: fade;
            -webkit-animation-duration: 1.5s;
            animation-name: fade;
            animation-duration: 1.5s;
            
        }

        @-webkit-keyframes fade {
            from {
                opacity: .4;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes fade {
            from {
                opacity: .4;
            }
            to {
                opacity: 1;
            }
        }

input, .content1 {
    display: none;
    background:  #38532e;
    line-height: 25px;
    padding: 5px 25px;
    color: #fff;
    font-family : "고딕";
    min-width: 200px;
    z-index : 50;
}

#one:checked ~ .one,
#two:checked ~ .two,
#three:checked ~ .three,
#four:checked ~ .four {display: block;}

label {
    cursor: pointer;
    background: #999;
    height: 35px;
    padding: 5px 10px;
    display: inline-block;
    text-align: center;
    color: #fff;
    font-family :"고딕";
    font-weight : bold;
    font-size :18px;
    margin-right: -3px;
    transition: background .25s linear;  
}

label:hover, input:checked + label {background:#38532e;}

p {
    text-indent: 25px;
    text-align: justify;
}
.article{
	width : 1000px;
	padding-bottom:100px;
	margin:auto;
}
</style>   


<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFF">
<jsp:include page="top.jsp"/>
<br>
<br>
<div class="content">
  <div class="slideshow-container">
        <div class="mySlides fade">
            <img src="image/003.jpg" alt="가야산" width=1000px; height="620"><!--style="width:100%"-->
            <div class="text">가야산</div> 
        </div>

        <div class="mySlides fade">
           <img src="image/007.jpg" alt="가야산" width=1000px; height="620">
            <div class="text">계룡산</div>
        </div>

        <div class="mySlides fade">
           <img src="image/012.jpeg" alt="금산" width=1000px; height="620">
            <div class="text">금산</div>
        </div>
        
        <div class="mySlides fade">
            <img src="image/014.jpg" alt="금오산" width=1000px; height="620">
            <div class="text">금오산</div>
        </div>
        
        <div class="mySlides fade">
            <img src="image/015.jpg" alt="금장산" width=1000px; height="620">
            <div class="text">금장산</div>
        </div>

        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
        <a class="next" onclick="plusSlides(1)">&#10095;</a>
    </div>

    <br>

    <div style="text-align:center">
        <span class="dot" onclick="currentSlide(1)"></span>
        <span class="dot" onclick="currentSlide(2)"></span>
        <span class="dot" onclick="currentSlide(3)"></span>
        <span class="dot" onclick="currentSlide(4)"></span>
        <span class="dot" onclick="currentSlide(5)"></span>
    </div>
<br><br><br><br>
<div class="article">
<input type="radio" name="nav" id="one" checked="checked"/>
<label for="one">초보자 산행지 선택</label>

<input type="radio" name="nav" id="two"/>
<label for="two">등산의 계획과 준비</label>

<input type="radio" name="nav" id="three"/>
<label for="three">안전 산행 수칙</label>
    
<input type="radio" name="nav" id="four"/>
<label for="four">산악 사고 방지 대책</label>

<article class="content1 one">
    
    <h3>초보자 산행지 선택</h3>
        <h3>1. 산행 목적 정하기</h3>
      <p>
      단순히 건강을 위한 목적인지, 유적과문화답사를 위함인지, 자연의 풍경을 즐기고 싶은 것 인지 등의 한가지 목적을 정하는 것이 좋다. 목적에 따라 산행지가 달라지며, 초보자라면 산에 오르는 것과 동시에 여러가지를 느끼고 오기엔 벅차다.
      그러므로 자신 경험에 비추거나 산행에 경험이 많은 사람들의 조언을 듣고 무리가 없는 산들을 선택하고 그 산중 자신이 정한 목적에 가장 접합한 산을 선택하는 것이 좋겠다.
      </p>
   <h3>2. 교통이 편한 산</h3>
      <p>
      초보자가 산을 선행지를 선택할때 중요한 것 중 하나가 바로 교통이 편한 곳이다. 처음부터 어려운 산행지를 선택하기 보다 가깝고 교통이 편해 접근하기 쉬운 산부터 산행하는 것이 좋다. 같은 산을 또 방문하는 것도 나쁘지 않다. 등산코스를 바꿔 방문한다면 새로운 즐거움을 얻을 수 있으며, 처음에 즐기거나 보지 못했던 또 다른 무언가를 찾아 볼 수 있는 여유가 생기기도 한다.
      </p>
   <h3>3. 등산코스가 무난한 산</h3>
      <p>
      산 중에도 등산로가 험한 곳이 있다. 아무것도 모르고 인터넷에서 '그곳은 좋다. 가볼만하다' 등의 평가만을 보고 무작정 산을 선택해서는 안된다. 등산코스가 어떠한지 그리고 등산로가 어떠한지 탐색한 후에 산행지를 선택해야만 한다. 국립공원에서 지정된 명산은 대부분 국가가 관리하므로 등산로가 잘 정비되어 있다.
      </p>
   <h3>4. 산 공부하기</h3>
      <p>
      등산을 하기전 산에 대한 정보를 수집하는 것 또한 중요하다. 그 산의 특징, 볼만한것, 등산코스 등을 수집하면 산행을 하면서 볼거리를 놓치지 않으며, 산의 기후등에 맞도록 준비하여 출발할 수 있다. 산의 자료를 수집할때 꼭 해야 할 것은 "등산로가 통제되어 있는지 확인하고 계절에 따라 어떤 등산로를 선택해야 하는지, 교통은 어떠한지, 산행중 식수를 구할 수 있는지, 주변의 볼거리, 등산에 적합한 등산화, 의류" 등을 알아 보면 된다. 이런 자료등은 인터넷이나 등산서적으로부터 얻을 수 있다.
      </p>
    
</article>

<article class="content1 two">
    
    <h3>등산의 계획과 준비</h3>
      <p>
      등산은 누구나 마음만 먹으면 할 수 있을까? 산행 중에 안전 사고는 이런 잘못된 생각에서 비롯된다. 실제 등산은 체력을 요구하는 고강도 운동이다. 따라서 개인의 체력에 맞게 산행 준비와 등산 계획을 세워야 한다. 예를 들어, 일반인들이 직장에서, 혹은 온 가족이 단체 산행을 할 때는 산행 목표를 참가자의 연령·체력·평상시 운동 습관·질병 유무 등을 감안하여 가장 약한 사람을 기준으로 등산 속도와 시간, 올라가는 높이를 계획하여야 한다. 노인이나 고혈압･심장병･천식 등 심폐질환이 있는 사람은 등산 전 주치의로부터 산행 속도와 거리에 대한 처방을 받은 뒤 지시에 따라 등산하여야만 한다.
      </p>
      <h4>- 등산을 위한 산과 코스의 선택</h4>
      <p>
      처음으로 등산을 결정할 때는 먼저 등산하려는 사람 자신이 나 동행하는 사람들의 능력에 맞는 산을 선택하는 것이 중요하다. 전혀 경험이 없는 초보자인 경우에는 경험자의 조언을 듣거나 경험자와 함께 등산을 시작하는 것이 좋다. 산을 정하고 코스를 선택할 때, 가장 주의해야 할 점은 산의 높이와 산의 난이도가 반드시 일치하지 않는다는 점이다. 예를 들면, 산의 높이가 그리 높지 않아도 위험한 절벽과 암벽이 많아 코스가 어려우면 초보자에게는 위험하고 어려울 수밖에 없다. 또한 계절에 따라 상황이 달라지기 때문에 같은 산, 같은 코스라 할지라도 그 내용이 완전히 틀리다. 그렇기 때문에 초보자는 처음에는 쉬운 산과 쉬운 코스를 선택하고 경험을 쌓아야 한다. 어느 정도 경험이 쌓이면 점차 어려운 코스도 도전해 보는 것도 즐거운 경험이 될 것이다.
      </p>
      <h4>- 산에 대한 정보수집</h4>
      <p>먼저 등산 목적과 일정, 동행하는 사람 등이 결정된 다음 등 산하고자 하는 산이 결정되면 그 산에 대한 각종 정보를 입수하여 등산 전에 숙지해 두는 것이 필요하다. 일반적으로, 인터넷사이트, 지도, 등산 가이드북이나 등산 잡지 등을 이용해 산의 소재 지부터 산의 지형, 계절적 특징, 등산코스, 접근교통편, 먹거리 등에 이르기까지 그 산에 관한 모든 정보를 얻도록 한다. 특히 등산 전에 지도를 보면서 올라갈 코스와 하산코스를 잡아보고 소요시간 등을 계산하면서 산에 대한 시뮬레이션을 그려 볼 수 있다. 이를 등산용어로 방안에서 등산하는 기분을 낸다하여 인도어 클라이밍(indoor climbing)이라 한다. 물론 산불예방기간, 자연 휴식년제, 군사시설물 등에 의해 출입이 금지된 곳은 아닌지, 산행 중에 식수를 구할 수 있는지 등도 꼼꼼히 살펴보아야한다.
      </p>
      <h3>등산계획서 작성</h3>
      <p>
      등산할 산이 결정되고 산행 일정을 확정한 후, 등산계획을 짜본다. 산행을 시작하기 전에 집합 장소･시간, 교통편을 확인 하고, 코스･소요시간 및 동반자들도 확인해야 한다. 물론 필요 한 장비, 식량, 비용 등도 함께 산행하는 일행들과 의논하며 계획을 짜고, 준비물도 개인･그룹별로 분담하여 준비해야 한다. 산행을 위해 집을 나설 때에는 반드시 가족들에게 산 이름과 귀가시간 그리고 함께 가는 일행들의 연락처 등을 알려야 한다.
      </p>
      <h4>- 구체적인 등산 계획 수립</h4>
      <p>
      1) 사전에 등산 책임자 모임에서 대상 산, 등반 방식, 리더, 등반대원 결정, 안전 대책들을 수립한다.<br>
            2) 실제 참가자 전체 모임에서 임무 분담, 대상지에 대한 상황 조사 및 연구를 진행한다.<br>
      <ul>
         <li>야영 방식을 결정</li>
         <li>기존 자료를 검토하고 등산 계획서를 작성( 기간, 대상산, 대원 명단, 운행･장비･식량･지원･경비･훈련계획 등)</li>
         <li>장비 및 식량 준비</li>
         <li>출발전 재점검</li>
         <li>실제 등반</li>
         <li>기록, 반성 및 보고서 작성</li>
      </ul>
      <h4>- 신체적인 준비</h4>
      <p>
      등산은 먼저 엄청난 에너지를 요구하는 육체적인 활동이다. 아마추어 등산가들의 등반 수준도 과거에 비해 상당히 높아졌 으며 그들 스스로 즐기는 등산을 할 것인지 또는 운동을 위해 할 것인지를 신체적인 능력에 따라 판단하면서 등산을 하고 있다. 물론 중요한 것은 등산객 스스로 또는 동반자들의 체력안배에 따른 안전이 중요하다.
      초급자 또는 아마추어를 벗어난 산악인들이 보다 나은 등반을 위해 매일 체력운동을 한다는 것은 익히 알려진 사실이다. 또한 가까운 산행 코스를 무거운 배낭을 메고 오르는 것도 보다 큰 등반을 위한 기초훈련이 되며, 역기를 드는 근력강화운동과 유연성을 증진시키는 스트레칭도 좋은 트레이닝 방법 중의 하나이다.
      </p>
      <h4>- 정신적인 준비</h4>
      <p>
      신체적인 준비보다 더 중요한 부분이 오히려 정신 자세라고 할 수 있다. 예를 들면, 정신적인 준비가 잘 된 등산가는 등반 중 위기의 순간을 극복하고 올바른 판단으로 산행을 안전하게 마칠 수 있다. 루트가 어떻든 등산에 성공하기 위해서는 자기 자신과의 싸움에서 이기는 길이다.
      </p>
   <h3>지도상에서 운행소요시간 계산하기</h3>
      <p>
      등산의 계획을 세우는데 있어 산행하고자 하는 대상산과 루트 그리고 기간이 결정되면, 루트의 구간별 운행 소요시간을 계산해야 한다. 구간별 소요시간을 계산해 놓지 않은 운행계획은 계획이라고 할 수 없으며, 실제 산행에서 많은 시행착오, 조난 등의 문제가 발생된다.
      구간별 운행 소요시간의 계산을 하게 되면, 휴식을 취할 곳, 야영할 곳들을 착오없이 정할 수 있으며, 귀가해야 할 시간을 맞출 수 있다.
      </p>
</article>

<article class="content1 three">
    <h3>안전산행 수칙</h3>    
   <p>
   등산 중에 발생할 수 있는 만일의 산악사고를 예방하고 안전한 산행을 하기 위해서는 사전에 철저한 계획과 빈틈없는 준비가 필요하다. 산행 중에는 등산에 대한 정확한 지식과 판단, 능숙한 기술 그리고 경험을 넓혀 위험한 상황에 신중하게 대처할 수 있어야 한다. 또한, 사고가 났을 때 곧바로 대처할 수 있도록 응급처치 요령을 기본적으로 알아야하며, 산행을 위해 알맞은 옷과 식량 등을 항상 가지고 다니면서 기상 변화와 부주의로 생길 수 있는 각종 위험에 대비해야 한다. 게다가 안전을 위해서 항상 가지고 다녀야 할 구급약품, 비상식량, 물통, 나침반, 헤드랜턴 등 개인 장비들을 준비하는 것도 잊어서는 안 된다.
   등산 중에 발생할 수 있는 산악사고를 예방하고 안전한 산행을 하기 위해서는 다음과 같은 기본적인 수칙을 반드시 지켜야 한다.
   </p>
      <h3>-등산하기 전에 등산로나 날씨 등 필요한 정보를 충분히 수집하라 .</h3>
      <p>산을 하기 전에 산에 대한 정보를 사전에 충분히 파악해야 한다. 자신의 경험과 체력수준에 맞추어 무리 없이 오를 수 있는 산을 선택하고 이용하고자 하는 등산로가 통제되는지를 확인하여야 한다. 산행에 소요되는 시간, 위험구간, 식수를 구할 수 있는 곳 등 필요한 정보를 미리 파악하고, 산행일정을 세우는 것도 잊지 말아야 한다. 또한 등산하는 당일과 전․후일의 날씨도 반드시 확인하여 날씨가 어떻게 변할지를 파악해 두어야 한다.
      </p>
      <h3>-계획에 알맞은 장비, 의복, 식량을 준비하고 체온유지에 최대한신경을 쓰라 .</h3>
      <p>수시로 날씨가 변하는 산에서는 방수기능이 있는 자켓이나 우의를 준비하고, 체온을 유지할 수 있는 여분의 옷을 준비해야 한다. 산행하다 쉬는 동안 방풍의를 입어 최대한 체온 유지에 신경써야 한다. 등산 중에 물과 음식을 한꺼번에 너무 많이 먹거나 마시지 말고 조금씩 자주 먹거나 마시도록 한다.
      계절과 산행목적에 맞는 장비를 갖추고, 장비에 어떤 문제가 없는지 미리 점검해야 한다. 또한, 산행 중 길을 잃거나 기습 폭우로 고립되는 등 만일의 사태에 대비하여 초콜릿, 미숫가루 등 비상식량을 준비해야 한다.
      안전을 위해서 꼭 가지고 다녀야 할 방수방풍의, 여벌 옷, 헤드랜턴, 비상식량, 통신수단, 지도, 나침반, 의약품 등을 반드시 챙겨 만일의 경우를 항상 대비해야한다.
      </p>
      <h3>-위급상황시 필요한 통신수단을 준비한다.</h3>
      <p>아무리 쉬운 산행이라도 혼자보다는 둘 이상이 함께하는 것이 좋으며, 산행 전에 가족들에게 산행지와 코스를 알려주는게 좋다. 산행준비를 잘해도 운행 중에 위급상황이 발생할 수 있다. 위급상황을 외부에 알릴 수 있는 무전기, 휴대폰 등을 준비하고 산행 전 충분히 충전하거나, 여분의 배터리를 챙기는 것도 잊지 말야야 한다.
      </p>
      <h3>-짐은 적게 하고, 손에 물건을 들지 마라.</h3>
      <p>짐은 꼭 필요한 것만 가지고 가고, 산행시에는 손에 물건을 들지 말아야 미끄러지거나 위험한 상황에서 대처할 수 있다. 또한, 썩은 나뭇가지, 풀, 불안정한 바위 등을 손잡이로 사용할 경우 위험한 상황에 처할 수 있으므로 주의를 기울여야 한다. 배낭을 가볍게 잘 꾸리고 손에는 가능하면 어떠한 물건이라도 들지 않는다. 산에서 가장 무서운 적은 배낭의 무게이다. 가급적 자기 체중의 1/5 ~ 1/4 정도로 가볍게 꾸리도록 한다.
      </p>
      <h3>-자신의 체력과 능력을 과신하지 말라.</h3>
      <p>산행을 할 때 무리하지 않도록 해야 한다. 자신의 체력과 등산기술을 과신해서 무리한 산행을 하게 되면 체력저하나 잠복해 있던 질환으로 위급한 상황을 맞을 수 있다. 산에 오르기 전에는 근육이 놀라지 않도록 땀이 약간 베일 정도로 스트레칭을 하는 등 먼저 근육을 충분히 풀어주어야 한다. 산에서는 걷는 것 못지않게 쉬는 것도 중요하므로 완만한 산행에서는 대략 1시간에 한번 정도 휴식을 취하고, 휴식시간은 대략 5?10분 정도로 한다.
      </p>
      <h3>-해지기 1시간전에는 산행을 마쳐라.</h3>
      <p>산행 전 일출과 일몰시간을 미리 확인하고, 산행은 가능하면 아침 일찍 시작하고 해지기 1시간 전에 마쳐야 한다. 전문가라고 깜깜한 밤에 랜턴 빛만으로 산행을 할 때 위험한 상황에 처할 수 있다. 만일의 경우를 대비해 헤드랜턴과 여분의 건전지를 항상 가지고 다녀야 한다.
      </p>
      <h3>-산행시간은 8시간을 넘지말고, 긴급상황을 대비하여 체력의 3할을 남겨두라.</h3>
      <p>가능한 하루 8시간 이상 무리해서 산행 하지 말고, 최소한 자신의 체력의 3할은 남겨두어야 만일의 긴급 상황에 대처할 여력이 있다.
      </p>
      <h3>-일행중 가장느린 사람을 기준으로 움직여라.</h3>
      <p>여러 사람이 함께 등산을 할 경우에는 일행 중 가장 처지는 사람을 기준으로 산행을 해야 한다.
      </p>
      <h3>-지도를 휴대하고 수시로 위치를 확인하라</h3>
      <p>비록 평소에 잘 알고 있는 산일지라도 지도를 반드시 지참하도록 한다. 리더가 있는 그룹 등산이라 하더라도 지도 없이 등산을 하는 것은 위험하다. 그리고 자신의 현재위치를 수시로 파악해 체력을 안배하고 산행속도를 조절할 필요가 있다. 만약 일행과 떨어져서 길을 잃었을 때에는 반드시 지도를 확인하도록 한다. 길을 잘못 들었다고 판단되면 빨리 되돌아서야 한다.
      </p>
      <h3>-건조한 날씨에 산불을 조심하라.</h3>
      <p>대기가 건조하여 산불이 날 수 있는 계절에 입산시에는 성냥, 담배 등 인화성 물질을 가져가면 안된다. 취사를 하거나 모닥불을 피우는 행위는 허용된 지역에서만 해야 한다. 산행중 산불을 발견했다면 신속히 산림관서(042-481-4119) 또는 소방관서(119) 등에 신고해야 한다. 만약 불길에 휩싸일 경우 당황하지 말고 침착하게 주위를 확인하여 화세가 약한 곳을 찾아 몸을 피하고, 바람의 방향을 확인하여 가급적 빨리 산불의 진행경로에서 벗어나도록 해야한다.
      </p>
</article>
    
<article class="content1 four">

    <h3>산악 사고 방지 대책</h3>
   <p>등산 중에 발생할 수 있는 산악사고를 예방하고 안전한 산행을 하기 위해서는 사전에 철저한 계획과 빈틈없는 준비가 필요하다. 산행 중에는 등산에 대한 정확한 지식과 판단, 능숙한 기술 그리고 경험을 넓혀 위험한 상황에 신중하게 대처할 수 있어야 한다. 또한 사고가 났을 때 곧바로 대처할 수 있도록 응급처치 요령을 기본적으로 알아야하며, 산행을 위해 알맞은 옷과 식량 등을 항상 가지고 다니면서 자연환경의 변화와 등산객의 부주의로 생길 수 있는 각종 위험에 대비해야 한다.
   등산 중에 발생할 수 있는 산악사고를 예방하고 안전한 산행을 하기 위해서는 다음과 같은 예방법이 필요하다.
   </p>
   <h3>(1) 산행장비 확인</h3>
   <p>산행을 시작할 때는 항상 산행목적에 맞게 장비가 갖추어졌는지, 장비에 어떤 문제가 없는지 확인하고 점검하는 습관을 들여야 한다. 안전을 위해서 꼭 가지고 다녀야 할 의약품, 지도, 헤드랜턴, 여벌의 옷가지 등 개인장비들을 단체가 아니라 반드시 각자 자기 배낭에 가지고 다녀야 혼자 떨어져서 조난을 당했을 경우에 사용이 가능하다.
   </p>
   <h3>(2) 저체온증</h3>
   <p>산은 보통 기온이 낮고 바람이 많기 때문에 실제 온도보다 체감온도는 더 낮아진다. 저체온증은 영하의 날씨에서만 걸리는 것이 아니라 이러한 상황에서 급격히 체온을 빼앗기는 경우에 잘 발생한다. 저체온증은 체온이 35℃ 이하로 떨어진 상태로 몸에서 발생하는 열보다 몸 밖으로 빠져나가는 열이 더 많을 때 발생하는데 주요 원인은 악천후와 탈진이라고 할 수 있다. 산행 중에 저체온증을 예방하기 위해서는 될 수 있는 대로 땀이 나지 않도록 옷을 가볍게 입고 천천히 등산하고 갈아 입을 여벌의 옷을 가져가도록 하고 비나 눈에 옷이 젖지 않도 록 주의해야한다.
   </p>
   <h3>(3) 추락 위험 줄이기</h3>
   <p>
   산행 중에 일어나는 추락 사고는 바위붕괴 등의 자연적인 요인으로 인하여 발생할 수도 있다. 또한 방심과 부주의 등으로 미끄러지거나 떨어지는 인위적인 요인에 피로나 음주, 기술 부족이나 무모한 등산 등으로 갑자기 추락할 수 있기 때문에 산행지의 지형을 잘 파악하여 주의 깊게 대처하고, 무모한 행동은 절대로 하지 않아야 한다.
   </p>
   <h3>(4) 산행안전수칙지키기</h3>
   <p>
   안전한 산행을 위하여 철저한 계획을 세우고 빈틈없는 준비가 필수적인 내용이다. 그러나 안전수칙을 미리 알아보고 그 수칙대로 실천한다면 어떠한 행태의 산악사고도 사전에 방지 할 수 있을 것이다. 예를 들면, 암벽등반을 시작할 때에는 항상 장비에 문제가 없는지 반드시 확인하고 새로운 장비를 다룰 때는 장비의 기능이나 정확한 사용 방법을 사전에 숙지하 야 장비사용 미숙으로 인한 사고를 예방할 수 있도록 습관을 가져 한다.
   </p>
</article>
</div>

<script >
let slides = document.querySelectorAll('.mySlides');
let dots = document.querySelectorAll('.dot');
let slideIndex = 1;
let timeoutID;

const showSlides = (n) => {
    let i;

    if (n > slides.length) {
        slideIndex = 1;
    }
    if (n < 1) {
        slideIndex = slides.length;
    }

    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }

    for (i = 0; i < slides.length; i++) {
        dots[i].setAttribute('class', 'dot');
    }


    slides[slideIndex - 1].style.display = 'block';
    dots[slideIndex - 1].setAttribute('class', 'dot active');
    clearTimeout(timeoutID);
    timeoutID = setTimeout(autoSlides, 2000);
};

const plusSlides = (n) => {
    showSlides(slideIndex += n);
};

const currentSlide = (n) => {
    showSlides(slideIndex = n);
};

function autoSlides() {
    let i;

    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }

    slideIndex++;
    if (slideIndex > slides.length) {
        slideIndex = 1;
    }

    for (i = 0; i < slides.length; i++) {
        dots[i].setAttribute('class', 'dot');
    }

    slides[slideIndex - 1].style.display = "block";
    dots[slideIndex - 1].setAttribute('class', 'dot active');
    timeoutID = setTimeout(autoSlides, 2000);
}

autoSlides();
</script>
</div>
<jsp:include page="copy.jsp"/>
</body>
</html>