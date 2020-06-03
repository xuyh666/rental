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
	top: -200px;
	left: 40%;
	z-index: 666;
	box-shadow: darkgrey 10px 10px 30px 5px;
}

</style>
</head>
<body>
    <input type="hidden" id="clientInformation" value="<%=request.getParameter("clientId")%>">   
	<div>
		<ul class="layui-nav" lay-filter="" id="u">
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
	<div class="layui-carousel" id="test1" style="height: 500px">
		<div carousel-item id="test2" style="height: 500px">
			<img src="/imgPath/a.jpg"> 
			<img src="/imgPath/b.jpg">
			<img src="/imgPath/c.jpg">
			<img src="/imgPath/d.jpg">
		</div>
	</div>
<!--登录框  -->
	<div id="parent">
		<h2 >快速选车</h2>
		<br>
		<div id="child">
			<form class="layui-form layui-form-item" id="Form">
		        <div class="layui-form-item" style="width: 86%">
				    <label class="layui-form-label">类别</label>
				    <div class="layui-input-block">
				      <select name="vehicleClassNumber" id="vehicleClassNumber_condition">
				        <option value=""></option>
				      </select>
				    </div>
				  </div>
				  <div class="layui-form-item" style="width: 86%">
				    <label class="layui-form-label">品牌</label>
				    <div class="layui-input-block">
				      <select name="vehicleBrandNumber" id="vehicleBrandNumber_condition">
				        <option value=""></option>
				      </select>
				    </div>
				  </div>
		       <div class="layui-form-item">
			    <div class="layui-inline">
			      <label class="layui-form-label">日租金</label>
			      <div class="layui-input-inline" style="width: 100px;">
			        <input type="text" name="price_min" placeholder="￥" autocomplete="off" class="layui-input" id="price_min"> 
			      </div>
			      <div class="layui-form-mid">-</div>
			      <div class="layui-input-inline" style="width: 100px;">
			        <input type="text" name="price_max" placeholder="￥" autocomplete="off" class="layui-input" id="price_max">
			      </div>
			    </div>
			  </div>
			  <div class="layui-form-item">
					<button type="button"  	class="layui-btn layui-btn-lg" id="findVehicleBycd">查找</button>
		             <button type="reset" class="layui-btn layui-btn-primary" id="resetbtn">重置</button>
		     </div>
	      </form>
	   </div>
	   </div>
     <div id="body">
        <div style="width: 100%; height: 100px;margin-top: -5%">
         <img  src="/imgPath/bg1.png" width="100%">
        </div>
		<div style="background-color: #4DB3B3; width: 30px; height: 8px; border-radius: 5px; margin: auto;margin-top: 20px"></div>
		<div style="font-size: 25px; text-align: center; margin-top: 2%">您想要的豪华车型应有尽有，满足你的不同场景需求</div>
		<div style="width: 100%; height: 500px; padding-left: 14%;vertical-align:middle; margin-top: 20px;background-color: #F2F3F5">
			<div
				style="width:20%; height: 350px; display: inline-block; background-color: #FFFFFF;margin-top: 5%;">
				<div style="font-size: 20px; margin-top: 8%;" align="center">
					<b>汽车</b>
				</div>
				<div  align="center" style="margin-top: 10%;">
				    <img src="/imgPath/cir1.png" width="130px" height="130px">
				</div>
				<div style="font-size: 13px; margin-top: 8%;color: #BDBDBD;" align="center">
					<b>24小时轻松取 /还车</b>
				</div>
				<div style="margin-top: 10%" align="center">
					<button type="button"  	class="layui-btn layui-btn-warm  layui-btn-lg" id="findCar1">查找</button>
				</div>
			</div>
			<div
				style="width:20%; height: 350px;margin-left:2%; display: inline-block;margin-top: 5%; background-color: #FFFFFF">
				<div style="font-size: 20px; margin-top: 8%" align="center">
					<b>摩托车</b>
				</div>
				<div align="center" style="margin-top: 10%;">
				    <img src="/imgPath/cir2.png" width="130px" height="130px">
				</div>
				<div style="font-size: 13px; margin-top: 8%;color: #BDBDBD;" align="center">
					<b>长租一次告别常租</b>
				</div>
				<div style="margin-top: 10%" align="center">
					<button type="button"  	class="layui-btn  layui-btn-lg" id="findCar2">查找</button>
				</div>
			</div>
			<div
				style="width:20%; height: 350px;margin-left:2%; display: inline-block;margin-top: 5%; background-color:#FFFFFF">
				<div style="font-size: 20px; margin-top: 8%" align="center">
					<b>电车</b>
				</div>
				<div align="center" style="margin-top: 10%;">
				    <img src="/imgPath/cir3.png" width="130px" height="130px">
				</div>
				<div style="font-size: 13px; margin-top: 8%;color: #BDBDBD;" align="center">
					<b>企业出行一步搞定</b>
				</div>
				<div style="margin-top: 10%" align="center">
					<button type="button"  	class="layui-btn layui-btn-normal layui-btn-lg" id="findCar3">查找</button>
				</div>
			</div>
			<div
				style="width:20%; height: 350px;margin-left:2%; display: inline-block;margin-top: 5%; background-color: #FFFFFF">
				<div style="font-size: 20px; margin-top: 8%" align="center">
					<b>自行车</b>
				</div>
				<div align="center" style="margin-top: 10%;">
				    <img src="/imgPath/cir4.png" width="130px" height="130px">
				</div>
				<div style="font-size: 13px; margin-top: 8%;color: #BDBDBD;" align="center">
					<b>价格便宜就是任性</b>
				</div>
				<div style=" margin-top: 10%;" align="center">
					<button type="button"  	class="layui-btn layui-btn-danger layui-btn-lg" style="background-color: #5BD1DC" id="findCar4">查找</button>
				</div>
			</div>
		</div>
	</div>
	<div id="body1" style="width: 100%;height:500px;" align="center">
	    <div style="font-size: 32px; text-align: center; margin-top: 4%">热门车大搜罗</div>
		<div id="carousel-example-generic" class="carousel slide" style="width: 70%;margin-top: 3%;"   
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				<li data-target="#carousel-example-generic" data-slide-to="3"></li>
				<li data-target="#carousel-example-generic" data-slide-to="4"></li>
			</ol>
	
			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					   <img src=""  style="height: 350px" id="ppic0" class="finalSteps">
				</div>
			    <div class="item">
					    <img src=""  style="height: 350px" id="ppic1" class="finalSteps">
				</div>
				<div class="item">
					   <img src=""  style="height: 350px" id="ppic2" class="finalSteps">
				</div>
				<div class="item">
					    <img src=""  style="height: 350px" id="ppic3" class="finalSteps">
				</div>
				<div class="item">
					    <img src=""  style="height: 350px" id="ppic4" class="finalSteps">
				</div>
			</div>
		</div>
    <script type="text/javascript">
    $('.carousel').carousel({
    	  interval: 2500
    	})
    </script>
	</div>
	<div style="background-color: #4DB3B3; width: 30px; height: 8px; border-radius: 5px; margin: auto;"></div>
    <div id="foot" style="background-color: #F2F3F5;height: 700px;">
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
	getClasses();
	getBrands();
	var t = $("#clientInformation").val();
	if(t == "null"){
		$("#clientInfo").hide();
	}else{
		$("#loginAndRegister").hide();
		clientFind();
	}
	getWelcomVehicle();
});

//查询所有的类型并显示在下拉列表中 
function getClasses(){
	$.ajax({
		url:"${APP_PATH}/getClasses",
		type:"GET",
		async : false,//ajax异步的问题，append方法在success回调函数里面，在append方法还未执行时,layui.form();已经将表单渲染了
		success:function(result){
			$.each(result.extend.classes,function(){
				var classesOption = $("<option></option>").append(this.vehicleClass).attr("value",this.vehicleClassNumber);
				 classesOption.appendTo("#vehicleClassNumber_condition");						
			});
		}
	});
}
//查询所有的品牌并显示在下拉列表中 
function getBrands(){
	$.ajax({
		url:"${APP_PATH}/getAllBrands",
		type:"GET",
		async : false,//ajax异步的问题，append方法在success回调函数里面，在append方法还未执行时,layui.form();已经将表单渲染了
		success:function(result){
			$.each(result.extend.list,function(){
				var brandOption = $("<option></option>").append(this.vehicleBrand).attr("value",this.vehicleBrandNumber);
				brandOption.appendTo("#vehicleBrandNumber_condition");						
			});
		}
	});
}
//条件查询
$("#findVehicleBycd").click(function(){
	if($("#vehicleClassNumber_condition").val() == null || $("#vehicleClassNumber_condition").val() == ""){
		window.event.returnValue=false;
		if (window.event.preventDefault) window.event.preventDefault();
		window.location.href = "${APP_PATH}/clientFindAllCar.jsp?clientId="+$("#clientInformation").val()+"&vehicleClassNumber=0&vehicleBrandNumber="+$("#vehicleBrandNumber_condition").val()+"&price_min="+$("#price_min").val()+"&price_max="+$("#price_max").val();
	}else{
		window.event.returnValue=false;
		if (window.event.preventDefault) window.event.preventDefault();
		window.location.href = "${APP_PATH}/clientFindAllCar.jsp?clientId="+$("#clientInformation").val()+"&vehicleClassNumber="+$("#vehicleClassNumber_condition").val()+"&vehicleBrandNumber="+$("#vehicleBrandNumber_condition").val()+"&price_min="+$("#price_min").val()+"&price_max="+$("#price_max").val();
	}
	
});

//查新客户信息
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
$("#findCar1").click(function(){
	window.event.returnValue=false;
	if (window.event.preventDefault) window.event.preventDefault();
	window.location.href = "${APP_PATH}/clientFindAllCar.jsp?clientId="+$("#clientInformation").val()+"&vehicleClassNumber="+"1";
});
$("#findCar2").click(function(){
	window.event.returnValue=false;
	if (window.event.preventDefault) window.event.preventDefault();
	window.location.href = "${APP_PATH}/clientFindAllCar.jsp?clientId="+$("#clientInformation").val()+"&vehicleClassNumber="+"2";
});
$("#findCar3").click(function(){
	window.event.returnValue=false;
	if (window.event.preventDefault) window.event.preventDefault();
	window.location.href = "${APP_PATH}/clientFindAllCar.jsp?clientId="+$("#clientInformation").val()+"&vehicleClassNumber="+"3";
});
$("#findCar4").click(function(){
	window.event.returnValue=false;
	if (window.event.preventDefault) window.event.preventDefault();
	window.location.href = "${APP_PATH}/clientFindAllCar.jsp?clientId="+$("#clientInformation").val()+"&vehicleClassNumber="+"4";
});
$("#resetbtn").click(function(){
	   $("#Form")[0].reset();
	});
function getWelcomVehicle(){
	$.ajax({
		url:"${APP_PATH}/selectWelcomVehicle",
		type:"GET",
		success:function(result){
			var vehicle = result.extend.list;
			for(var i=0;i<5;i++){
				$("#ppic"+i).prop("src","/imgPath/"+vehicle[i].vehicleImage1);
				$("#ppic"+i).attr("vehicleId",vehicle[i].vehicleId);
			}
		}
	});
}	
$(document).on("click",".finalSteps",function(){
	window.event.returnValue=false;
	if (window.event.preventDefault) window.event.preventDefault();
	window.location.href = "${APP_PATH}/clientChooseVehicle.jsp?clientId="+<%=request.getParameter("clientId")%>+"&vehicleId="+$(this).attr("vehicleId");
});
</script>
</body>
</html>