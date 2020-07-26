<%@page contentType="text/html; charset=UTF-8" %>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="mgr" class="mem.MemberMgr"/>
<!-- 첫번 째 설명할 때 -> memberbean을 bean으로 사용해서 -->
<jsp:useBean id="bean" class="mem.MemberBean"/>
<!-- 폼에서 넘어온 모든 애를 setproperty 해줌 : 자바 빈즈할 때 배웠었음 -->
<jsp:setProperty property="*" name="bean"/>
<%
		boolean result = mgr.insertMember(bean);
	 
	  if(result){
%>
<script type="text/javascript">
		alert("회원가입을 하였습니다.");
		location.href="login.jsp";
</script>
<% }else{%>
<script type="text/javascript">
		alert("회원가입에 실패 하였습니다.");
		history.back();
</script>
<%} %>