<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<title>list</title>
<style type="text/css">
	#images{
		width: 150px;
		height: 250px;
	}
</style>
</head>
<body>
	
	<table class="table table-bordered table-hover">
		<tr>
			<th>序号</th>
			<th>图片</th>
		</tr>
		<c:forEach items="${lists}" var="product">
			<tr>
				<td>${product.pimage}</td>
				<td>
				<!--${APP_PATH }/img/${product.pimage}  -->
					<c:if test="${product.pimage != null}">
						<img alt="" src="/imgPath/${product.pimage}" id="images">
					</c:if>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>