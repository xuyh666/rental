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
<style type="text/css">
#parent {
	width: 400px;
	height: 250px;
	display: table-cell;
	padding-top: 10px;
	vertical-align: middle;
	text-align: center;
	background-color: #ffffff;
	border-radius: 5px;
	position: relative;
	top: -270px;
	left: 240%;
	z-index: 666;
	box-shadow: darkgrey 10px 10px 30px 5px;
}

#child {
	width: 400px;
	height: 250px;
	display: inline-block;
}

#body {
	width: 100%;
	height: 450px;
	position: relative;
	top: -200px;
}

#foot{
 width: 100%;
 height: 600px;
 background-color:#F7F7F7;
 position: absolute;
}
</style>
</head>
<body>
	<!--轮换图片 -->
	<div class="layui-carousel" id="test1" style="height: 475px">
		<div carousel-item id="test2" style="height: 475px">
			<img src="/imgPath/adminlogin.png"> <img
				src="/imgPath/adminlogin1.jpg"> <img
				src="/imgPath/adminlogin2.jpg">
		</div>
	</div>

	<!--登录框  -->
	<div id="parent">
		<h2 style="color: #66ffcc;">管理员登录</h2>
		<br>
		<div id="child">
			<form class="layui-form"  id="form">
				<div class="layui-form-item">
					<label class="layui-form-label">用户名</label>
					<div class="layui-input-inline">
						<input type="text" name="adminUsername" required
							lay-verify="required" placeholder="请输入用户名" autocomplete="off"
							class="layui-input" id="adminUsername_input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">密 码</label>
					<div class="layui-input-inline">
						<input type="password" name="adminPassword" required
							lay-verify="required" placeholder="请输入密码" autocomplete="off"
							class="layui-input" id="adminPassword_input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">验证码</label>
					<div class="layui-input-inline">
						<input type="text" id="verifyCode" class="layui-input"
							name="verifyCode" placeholder="验证码" maxlength="4">
					</div>
					<div class="layui-form-mid layui-word-aux">
						<span class="code_img"> <img
							src="${APP_PATH}/getVerifyCode" width="110" height="40"
							id="verifyCodeImage" style="position: absolute; top: -1px;">
						</span> </span>
					</div>
				</div> 
				<div class="layui-form-item">
					<div class="layui-input-block" align="left">
						<button id="sub" class="layui-btn" >立即登录</button>
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div id="body">
		<div style="background-color: #4DB3B3; width: 30px; height: 8px; border-radius: 5px; margin: auto;"></div>
		<div style="font-size: 25px; text-align: center; margin-top: 2%">您想要的豪华车型应有尽有，满足你的不同场景需求</div>
		<div style="width: 100%; height: 500px; padding-left: 14%; margin-top: 20px">
			<div
				style="width: 30%; height: 450px; display: inline-block;">
				<img src="/imgPath/ab.jpg" width="350px" height="360px">
				<div style="font-size: 20px; margin-top: 3%">
					<b>自驾出行</b>
				</div>
				<div style="color: #BDBDBD; margin-top: 3%">
					让你享受不同豪车自驾体验，<br> 享受来自超跑的自由驾驶乐趣
				</div>
			</div>
			<div
				style="width: 30%; height: 450px; display: inline-block;">
				<img src="/imgPath/ab1.jpg" width="350px" height="360px">
				<div style="font-size: 20px; margin-top: 3%">
					<b>商务接驾</b>
				</div>
				<div style="color: #BDBDBD; margin-top: 3%">
					高端豪华车型满足你高端接待需求，<br> 助您成功更近一步。
				</div>
			</div>
			<div
				style="width: 30%; height: 450px; display: inline-block;">
				<img src="/imgPath/ab2.jpg" width="350px" height="360px">
				<div style="font-size: 20px; margin-top: 3%">
					<b>豪华婚礼</b>
				</div>
				<div style="color: #BDBDBD; margin-top: 3%">
					提供高端婚庆用车，<br> 满足您高端奢华婚礼定制需求。
				</div>
			</div>
		</div>
	</div>
	<div style="background-color: #4DB3B3; width: 30px; height: 8px; border-radius: 5px; margin: auto;"></div>
    <div id="foot">
      <div style="width: 100%;height: 300px;">
        <div style="width: 16%;height: 300px;display: inline-block;margin-left:18%;" >
           <div style="font-size: 17px; margin-top: 25%"><b>关于租车</b></div>
           <div style="margin-top: 10%;"><a href="#" style="text-decoration: none"><font color="#707070">关于我们</font></a></div>
           <div style="margin-top: 6%;"><a href="#" style="text-decoration: none"><font color="#707070">平台规则</font></a></div>
           <div style="margin-top: 6%;"><a href="#" style="text-decoration: none"><font color="#707070">车主责任/法律解读</font></a></div>
           <div style="margin-top: 6%;"><a href="#" style="text-decoration: none"><font color="#707070">租车会员服务协议</font></a></div>
        </div>
        <div style="width: 16%;height: 300px;display: inline-block;">
           <div style="font-size: 17px; margin-top: 25%"><b>租车服务</b></div>
           <div style="margin-top: 10%;co" ><a href="#" style="text-decoration: none"><font color="#707070">保障服务条款</font></a></div>
           <div style="margin-top: 6%"><a href="#" style="text-decoration: none"><font color="#707070">隐私协议</font></a></div>
           <div style="margin-top: 6%"><a href="#" style="text-decoration: none"><font color="#707070">城市租车</font></a></div>
           <div style="margin-top: 6%"><a href="#" style="text-decoration: none"><font color="#707070">关于我们</font></a></div>
        </div>
        <div style="width: 16%;height: 300px;display: inline-block;">
           <div style="font-size: 17px; margin-top: 25%"><b>联系我们</b></div>
           <div style="margin-top: 10%"><a href="#" style="text-decoration: none"><font color="#707070">客服热线:111111</font></a></div>
           <div style="margin-top: 6%"><a href="#" style="text-decoration: none"><font color="#707070">公司总机:021-61920202</font></a></div>
           <div style="margin-top: 6%"><a href="#" style="text-decoration: none"><font color="#707070">客服邮箱:xuyh@qq.com</font></a></div>
           <div style="margin-top: 6%"><a href="#" style="text-decoration: none"><font color="#707070">联系地址:河南财经政法大学</font></a></div>
        </div>
         <div style="width: 16%;height: 300px;display: inline-block;">
           <div>
              <img src="/imgPath/f.png">
              <img src="/imgPath/f1.png">
           </div>
           <div>
              <img src="/imgPath/f2.png">
              <img src="/imgPath/f4.png">
           </div>
        </div>
        <hr>
      <div style="width: 100%;height: 300px;">
      <div style="margin-top: 1%;margin-left:18%;">
				城市租车:&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">上海租车</font></a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">南京租车</font></a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">杭州租车</font></a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">广州租车</font></a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">深圳租车</font></a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">北京租车</font></a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">武汉租车</font></a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">成都租车</font></a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">青岛租车</font>
        </div>
        <div style="margin-top: 1%;margin-left:18%;">
				友情链接:&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">家用车租车</font></a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">电动租车</font></a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">大众二手车</font></a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">自行车</font></a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">学生</font></a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">电车</font></a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">摩托车</font></a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">电车资源</font></a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">房车之家</font></a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">车子团购</font></a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">新能源</font></a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">摩托车</font></a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">摩托车</font></a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">汽车保养</font></a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">车配件</font></a>&nbsp;&nbsp;&nbsp;<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">自行车</font></a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">学生</font></a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">电车</font></a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">摩托车</font></a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">电车资源</font></a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">房车之家</font></a>&nbsp;&nbsp;&nbsp;
				<a href="#" style="text-decoration: none"><font color="#707070">车配件</font></a>
        </div>
        <div style="margin-top: 1%;margin-left:18%;">
          <span><font color="#707070">©2019 XXXXXXXX有限公司版权所有&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;经营增值电信业务许可：XX通信管自贸[2018]19号</font></span>
          <br>
          <br>
          <span><font color="#707070">豫ICP备10201000号&nbsp;&nbsp;&nbsp; 豫公网安备 41070202000193号 &nbsp;&nbsp;&nbsp;标识编号: 20180329133434646</font></span>
          <br>
          <br>
          <span><font color="#707070">违法和不良信息举报电话：10100111举报邮箱：aaaaaaa@qq.com</font></span>
          <br>
          <br>
          <span><font color="#707070">亲爱的市民朋友，警方反诈劝阻电话“962110”系专门针对避免您财产被骗受损而设，请您一旦收到来电，立即接听</font></span>
          <br>
          <br>
          <span><font color="#707070">扫黑除恶众志成城，平安郑州人人参与。全国扫黑除恶举报电话：010—12389，郑州市扫黑除恶举报电话：110，全国扫黑除恶举报网站：www.12389.gov.cn</font></span>
        </div>
      </div>
      </div>
    </div>

	<script type="text/javascript">

		//轮换图片
		layui.use('carousel', function() {
			var carousel = layui.carousel;
			//建造实例
			carousel.render({
				elem : '#test1',
				width : '100%',//设置容器宽度
				height : '475px',//设置容器高度
				arrow : 'none',//始终显示箭头
				anim : 'fade', //切换动画方式
				interval : 3000
			//图片切换间隔
			});
		});

		function genTimestamp() {
			var time = new Date();
			return time.getTime();
		}
		function changeImage() {
			$("#verifyCodeImage").prop("src",
					"${APP_PATH}/getVerifyCode?timestamp=" + genTimestamp());
		}

		//点击看不清更新验证码
		$(".code_img").click(function() {
			changeImage();
		});
        
		//登录
		$("#sub").click(function(){
			var formData = new FormData();
			formData.append("adminUsername", $("#adminUsername_input").val());
			formData.append("adminPassword", $("#adminPassword_input").val());
			formData.append("verifyCode", $("#verifyCode").val());
			$.ajax({
				type : "GET",
				url : "${APP_PATH}/checkVerifyCode",
				data : $("#form").serialize(),
				async: false,
				success : function(result) {
					if(result.code == 100){
						$.ajax({
							url : "${APP_PATH}/adLogin",
							type : "POST",
							data : formData,
							cache: false,
					        processData: false,
					        contentType: false,
					        async: false,
							success:function(result){
							    if(result.extend.admin != null){
							    	alert("登录成功");
							    	window.event.returnValue=false;
							    	if (window.event.preventDefault) window.event.preventDefault();
							    	window.location.href = "${APP_PATH}/adminManage.jsp?adminId="+result.extend.admin.adminId;
							    }else{
							    	alert("用户名或密码错误");
							    }
							}
						});
					}else{
						alert("验证码错误");
					}
				}
			});
		});
		
	</script>
</body>
</html>