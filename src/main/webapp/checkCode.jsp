<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<script type="text/javascript"
	src="${APP_PATH }/static/js/jquery-1.12.4.min.js"></script>
<link
	href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="${APP_PATH }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link href="${APP_PATH }/static/layui/css/layui.css" rel="stylesheet">
<script src="${APP_PATH }/static/layui/layui.js"></script>
</head>
<body>
  <input type="hidden" name="clientActivateCode" id="clientActivateCode" value="<%= request.getParameter("code")%>">
  <script type="text/javascript">
     $(function(){
    	 $.ajax({
        	 url:"${APP_PATH}/clientActivation",
        	 type:"POST",
        	 data:"clientActivateCode="+$("#clientActivateCode").val(),
        	 success:function(result){
        		 alert("恭喜您,激活成功");
        	 }
         });
     });
  </script>
</body>
</html>