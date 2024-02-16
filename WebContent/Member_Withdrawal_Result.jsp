<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	boolean result = (Boolean)request.getAttribute("result");
%>
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script>
	<% if(result) { %>
		alert("탈퇴되었습니다.");
		location.href = "Controller?command=login_form";
	<% } else { %>
		alert("탈퇴에 실패하였습니다. 잠시 후에 다시 시도해주세요.");
		location.href = "Controller?command=main_page";
	<% } %>
</script>