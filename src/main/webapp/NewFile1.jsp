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
<!-- web路径：
不以/开始的相对路径，找资源，以当前资源的路径为基准，经常容易出问题。
以/开始的相对路径，找资源，以服务器的路径为标准(http://localhost:3306)；需要加上项目名
		http://localhost:3306/crud
 -->
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
	<div>
		<ul class="layui-nav" lay-filter="">
		    <img src="/imgPath/logo.png" height="10%" width="20%"> 
			<li class="layui-nav-item"><a href="">最新活动</a></li>
			<li class="layui-nav-item layui-this"><a href="">产品</a></li>
			<li class="layui-nav-item"><a href="">大数据</a></li>
			<li class="layui-nav-item"><a href="">社区</a></li>
			  <li class="layui-nav-item">
			    <a href=""><img src="//t.cn/RCzsdCq" class="layui-nav-img">我</a>
			    <dl class="layui-nav-child">
			      <dd><a href="javascript:;">修改信息</a></dd>
			      <dd><a href="javascript:;">安全管理</a></dd>
			      <dd><a href="javascript:;">退了</a></dd>
			    </dl>
			  </li>
		</ul>
	</div>


	<div class="layui-carousel" id="test1" style="height: 500px">
		<div carousel-item id="test2" style="height: 500px">
			<img src="/imgPath/a.jpg"> 
			<img src="/imgPath/b.jpg">
			<img src="/imgPath/c.jpg">
		</div>
	</div>

	<script>
	//注意：导航 依赖 element 模块，否则无法进行功能性操作
	layui.use('element', function() {
		var element = layui.element;
	});
		layui.use('carousel', function() {
			var carousel = layui.carousel;
			//建造实例
			carousel.render({
				elem : '#test1',
				width : '100%',//设置容器宽度
				arrow : 'none',//始终显示箭头
				anim : 'dafault', //切换动画方式
				interval : 2000 //图片切换间隔
			});
		});
	</script>

</body>
</html>