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
	top: -200px;
	left: 40%;
	z-index: 666;
	box-shadow: darkgrey 10px 10px 30px 5px;
}
.layui-nav-tree {
	width: 280px;
	padding: 0;
} 
</style>
</head>
<body>
    <input type="hidden" id="clientInformation" value="<%=request.getParameter("clientId")%>">  
    <input type="hidden" id="cCode" value="<%=request.getParameter("cCode")%>"> 
	<div>
		<ul class="layui-nav" lay-filter="">
		    <img src="/imgPath/logo.png" height="10%" width="20%"> 
		    <li class="layui-nav-item" layui-this><a href="homePage.jsp?clientId=<%=request.getParameter("clientId")%>"">首页</a></li>
		    <li class="layui-nav-item"><a href="clientFindAllCar.jsp?clientId=<%=request.getParameter("clientId")%>&vehicleClassNumber=0">所有车</a></li>
			<li class="layui-nav-item"><a href="clientFindAllCar.jsp?clientId=<%=request.getParameter("clientId")%>&vehicleClassNumber=1">汽车</a></li>
			<li class="layui-nav-item"><a href="clientFindAllCar.jsp?clientId=<%=request.getParameter("clientId")%>&vehicleClassNumber=2">摩托车</a></li>
			<li class="layui-nav-item"><a href="clientFindAllCar.jsp?clientId=<%=request.getParameter("clientId")%>&vehicleClassNumber=3">电车</a></li>
			<li class="layui-nav-item"><a href="clientFindAllCar.jsp?clientId=<%=request.getParameter("clientId")%>&vehicleClassNumber=4">自行车</a></li>
			<li class="layui-nav-item"><a href="clientFindAllCar.jsp?clientId=<%=request.getParameter("clientId")%>&vehicleClassNumber=5">其他车</a></li>
			<li class="layui-nav-item"><a href=""></a></li>
			<li class="layui-nav-item"><a href=""></a></li>
			<li class="layui-nav-item"><a href=""></a></li>
			<li class="layui-nav-item"><a href=""></a></li>

			<li class="layui-nav-item" id="loginAndRegister">
				<div>
					<a style="display:inline-block" href="clientLogin.jsp">登录</a>/
					<a style="display:inline-block" href="clientRegister.jsp">注册</a>
				</div>
			</li>
			<li class="layui-nav-item" ><a href=""></a></li>
			 <li class="layui-nav-item " id="clientInfo">
			    <a href="clientSetting.jsp?cCode=0&clientId=<%=request.getParameter("clientId")%>" id="my"><img src="" class="layui-nav-img"></a>
			    <dl class="layui-nav-child">
			      <dd><a href="clientSetting.jsp?cCode=1&clientId=<%=request.getParameter("clientId")%>">修改信息</a></dd>
			      <dd><a href="clientSetting.jsp?cCode=2&clientId=<%=request.getParameter("clientId")%>">查看订单</a></dd>
			      <dd><a href="homePage.jsp">退了</a></dd>
			    </dl>
			  </li>
			 <li class="layui-nav-item"><a style="font-size: 20px">TEL:666-777-8888</a></li>
		</ul>
	</div>
	<div style="width: 100%;height: 1000px;padding-top: 40px;background-color: #F2F3F5" align="center">
	    <div style="width: 80%;height: 100%;">
	        <div style="margin-left:1%;width:23%;height: 95%;background-color: #ffffff; float: left;">
	            <ul class="layui-nav layui-nav-tree" lay-filter="test" style="background-color: #E1FFFF;">
					  <li class="layui-nav-item"><a href="clientInformation.jsp?clientId=<%=request.getParameter("clientId")%>" target="IFrame" style="color: #000000">个人信息</a></li>
					  <li class="layui-nav-item"><a href="clientFindOrderItem.jsp?clientId=<%=request.getParameter("clientId")%>" target="IFrame" style="color: #000000">我的订单</a></li>
				</ul>
	        </div>
            <div style="margin-left:2%;width:70%;height: 95%;background-color: #ffffff; float: left;">
                 <iframe name="IFrame" width="100%" height="100%" src="" Frameborder=No Border=0  id="IFrame"> 
                 </iframe>
            </div>
	    </div>
	</div>
	
	<div style="background-color: #4DB3B3; width: 30px; height: 8px; border-radius: 5px; margin: auto;"></div>
    <div id="foot" style="height: 600px;">
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
      <div style="width: 100%;height: 250px;">
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


<script>
//注意：导航 依赖 element 模块，否则无法进行功能性操作
layui.use('element', function() {
	var element = layui.element;
});
layui.use('form', function() {
	var form = layui.form;
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

$(function(){
	var t = $("#clientInformation").val();
	if(t == "null" || t == ""){
		$("#clientInfo").hide();
		
	}else{
		$("#loginAndRegister").hide();
		clientFind();
	}
	if($("#cCode").val() == 1){
		$("#IFrame").prop("src","clientInformation.jsp?clientId="+$("#clientInformation").val());
	}else if($("#cCode").val() == 2){
		$("#IFrame").prop("src","clientFindOrderItem.jsp?clientId="+$("#clientInformation").val());
	}
});
function clientFind(){
	$.ajax({
		url:"${APP_PATH}/findOneClient/"+$("#clientInformation").val(),
		type:"GET",
		success:function(result){
			var client = result.extend.client;
			var str = client.clientRealName;
			str = str.substring(1,0)+"**";
			$("#my").append(str);
			$("#my img").attr("src","/imgPath/"+client.clientHeadPortrait);
		}
	});
}
</script>

</body>
</html>