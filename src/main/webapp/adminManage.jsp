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
	<input type="hidden" value="<%=request.getParameter("adminId")%>"
		id="a">
	<div  style="position: relative;">
		<ul class="layui-nav layui-nav-tree layui-nav-side" lay-filter="test">
			<li class="layui-nav-item layui-nav-itemed">
			<a href="javascript:;">车具管理</a>
				<dl class="layui-nav-child">
					<dd>
						<a href="adminAddVehicle.jsp" target="IFrame">新增车</a>
					</dd>
					<dd>
						<a href="classManage.jsp" target="IFrame">车类型管理</a>
					</dd>
					<dd>
						<a href="brandManage.jsp" target="IFrame">车品牌管理</a>
					</dd>
				</dl>
			</li>
			<li class="layui-nav-item"><a href="javascript:;">车具列表</a>
				<dl class="layui-nav-child">
					<dd>
						<a href="adminFindCarsWithConditions.jsp" target="IFrame">查找车</a>
					</dd>
				    <dd>
						<a href="adminFindAllVehicle.jsp" target="IFrame">所有车</a>
					</dd>
					<dd>
						<a href="adminFindAllCar.jsp" target="IFrame">汽车</a>
					</dd>
					<dd>
						<a href="adminFindAllMotor.jsp" target="IFrame">摩托车</a>
					</dd>
					<dd>
						<a href="adminFindAllElectricBicycle.jsp" target="IFrame">电车</a>
					</dd>
					<dd>
						<a href="adminFindAllBicycle.jsp" target="IFrame">自行车</a>
					</dd>
				</dl>
			</li>
			<li class="layui-nav-item"><a href="javascript:;">客户管理</a>
				<dl class="layui-nav-child">
					<dd>
						<a href="adminFindAllClient.jsp" target="IFrame">查看所有客户</a>
					</dd>
					<dd>
						<a href="adminFindClientWithConditions.jsp" target="IFrame">查找客户</a>
					</dd>
					<dd>
						<a href="adminAddClient.jsp" target="IFrame">新增客户</a>
					</dd>
				</dl>
			</li>
			<li class="layui-nav-item"><a href="javascript:;">订单管理</a>
				<dl class="layui-nav-child">
					<dd>
						<a href="adminFindAllOrderItem.jsp" target="IFrame">查看所有订单</a>
					</dd>
					<dd>
						<a href="adminAuditvehicle.jsp" target="IFrame">还车审核</a>
					</dd>
					<dd>
						<a href="adminFindOrderItemByCondition.jsp" target="IFrame">查找订单</a>
					</dd>
				</dl>
			</li>
			<li class="layui-nav-item"><a href="javascript:;">客户证件审核</a>
				<dl class="layui-nav-child">
					<dd>
						<a href="adminFindAllCertificateReview.jsp" target="IFrame">所有审核</a>
					</dd>
					<dd>
						<a href="adminFindAllIdCertificateReview.jsp" target="IFrame">身份证审核</a>
					</dd>
					<dd>
						<a href="adminFindAllDriverCertificateReview.jsp" target="IFrame">驾驶证审核</a>
					</dd>
					<dd>
						<a href="adminFindAllDriverCertificateReviewWithCondition.jsp" target="IFrame">查找审核</a>
					</dd>
				</dl>
			</li>
			<li class="layui-nav-item" id="superAdmin"><a href="javascript:;">管理员信息</a>
				<dl class="layui-nav-child">
					<dd>
						<a href="listAllManager.jsp" target="IFrame">查看所有管理员</a>
					</dd>
					<dd>
						<a href="adminAdd.jsp" target="IFrame">新增管理员</a>
					</dd>
					<dd>
						<a href="adminFind.jsp" target="IFrame">管理员查询</a>
					</dd>
				</dl>
			</li>
		</ul>
		<div
			style="width: auto;  background-color: #000000; margin-left: 200px;">
			<ul class="layui-nav">
				<li class="layui-nav-item"><a src="" id="adminInformationMaintenance" target="IFrame">个人信息维护<span
						class="layui-badge-dot"></span></a></li>
				<li class="layui-nav-item">
				    <a href="">
				         <img src="" class="layui-nav-img" id="headPor">
				    </a>
					<dl class="layui-nav-child">
						<dd>
							<a href="adminLogin.jsp">退出登录</a>
						</dd>
					</dl>
				</li>
			</ul>
		</div>
		<div
			style="width: auto; background-color: #ffffff; margin-left: 200px;pa">
               <iframe name="IFrame" width="100%" height="690px" src="background.jsp" > </iframe>
		</div>
	</div>
	<script>
		//注意：导航 依赖 element 模块，否则无法进行功能性操作
		layui.use('element', function() {
			var element = layui.element;

			//…
		});
	</script>
	<script type="text/javascript">
		//获取登录者信息 result.extend.admin.
		var Id = $("#a").val();
		$(function() {
			//为维护个人信息标签添加链接地址
			var jspSrc = "adminInformationMaintenance.jsp?adminId="+Id;
            $("#adminInformationMaintenance").prop("href",jspSrc);			
			//获取登录者信息 result.extend.admin.
			$.ajax({
				url : "${APP_PATH}/findById",
				type : "GET",
				data : {
					adminId : Id
				},
				success : function(result) {
					//显示头像
					$("#headPor").prop("src","/imgPath/"+result.extend.admin.adminHeadportrait).parents("a").append(result.extend.admin.adminUsername);
					
					//判断管理员等级，如果非0,则为超级管理员并且拥有操纵其他管理员功能
					if(result.extend.admin.adminLevel != 1){
						$("#superAdmin").hide();
					}
				}
			});
		});
	</script>
</body>
</html>