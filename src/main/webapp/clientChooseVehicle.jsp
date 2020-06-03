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

</style>
</head>
<body>
    <input type="hidden" id="clientInformation" value="<%=request.getParameter("clientId")%>">  
    <input type="hidden" id="vehicleId" value="<%=request.getParameter("vehicleId")%>">
    <input type="hidden" id="clientLevel" >
    <input type="hidden" id="driverLicense" >    
    <input type="hidden" id="vehicleClassId" >
    <input type="hidden" id="carState" >
    <input type="hidden" id="clientId" >
    <input type="hidden" id="clientRealName" >
    <input type="hidden" id="clientIdNumber" >
    <input type="hidden" id="clientPhoneNumber" >
    <input type="hidden" id="clientBalance" >
    <input type="hidden" id="vehiclePlateNumber" >
    <input type="hidden" id="vehicleDailyRent" >
    <input type="hidden" id="vehicleCashPledge" >
     <input type="hidden" id="clientCarRentalState" > 
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
			      <dd><a href="clientChooseVehicle.jsp?vehicleId=<%=request.getParameter("vehicleId")%>">退了</a></dd>
			    </dl>
			  </li>
			 <li class="layui-nav-item"><a style="font-size: 20px">TEL:666-777-8888</a></li>
		</ul>
	</div>
	<div style="width: 100%;height: 1200px;padding-top: 40px" align="center">
	     <div style="width: 65%;height: 450px;">
	          <div style="width: 60%;height:100%;float: left;">
	              <div class="layui-carousel" id="test1" style="height: 450px">
						<div carousel-item id="test2" style="height: 450px" >
							<img src=""> 
							<img src="">
							<img src="">
							<img src="">
						</div>
					</div>
	          </div>
	          <div style="width: 38%;height:100%;border: 1px solid #F2F3F5;float: left;margin-left: 2%" id="rightArea">
	              <h3 align="left" style="padding-top: 8%;margin-left:4%;color: #FF4D3B;font-size: 20px" ></h3>
	              <h3 align="left" style="padding-top: 8%;margin-left:4%;color: #FF4D3B;font-size: 20px" ></h3>
	              <h3 align="left" style="padding-top: 7%;margin-left:4%;font-size: 22px"></h3>
	              <div style="margin-top: 10%">
	                  <form class="layui-form layui-form-pane" id="updateClientForm">
	                       <div class="layui-form-item">
							<label class="layui-form-label">借车日期</label>
							 <div class="layui-input-block">
							   <input type="text" name="clientBirthDate"   readonly="readonly"
									 autocomplete="off" class="layui-input" id="vehicleRentDate_input">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">还车日期</label>
							 <div class="layui-input-block">
							   <input type="text" name="clientBirthDate"   required lay-verify="required"
									 autocomplete="off" class="layui-input" id="vehicleReturnDate_input">
							</div>
						</div>
						 <div class="layui-form-item">
								<button type="button" id="bookBtn" class=""></button>
					     </div>
	                  </form>
	              </div>
	          </div>
	     </div>
         <div style="width: 100%;height: 700px;" align="center">
              <div style="height:700px ;width:65% ;">
                   <div style="height:700px ;width:60% ;float: left;" >
                         <h3 align="left" style="padding-top: 5%;margin-left:4%;font-size: 22px" id="vName"></h3>
                         <div style="margin-top: 6%; margin-left: 5%;" id="bottomArea">
                            <span class="glyphicon  glyphicon-ok-circle" aria-hidden="true;" style="float: left;"></span><p style="display: inline;float: left;margin-left: 2%"></p>
                            <span class="glyphicon  glyphicon-signal" aria-hidden="true" style="float: left;margin-left: 5%"></span><p style="display: inline;float: left;margin-left: 2%"></p>
                            <span class="glyphicon  glyphicon glyphicon-time" aria-hidden="true" style="float: left;margin-left: 5%"></span><p style="display: inline;float: left;margin-left: 2%">日均300KM</p>
                            <span class="glyphicon glyphicon-thumbs-up" aria-hidden="true" style="float: left;margin-left: 5%"></span><p style="display: inline;float: left;margin-left: 2%" id="stat">日均300KM</p>
                         </div>
                         <hr width="100%" color="#F2F3F5" >
                         <span class=" glyphicon glyphicon-map-marker " aria-hidden="true;" style="float: left; margin-left:4%;margin-top: 5%"></span><p style="float: left;margin-left: 2%;margin-top: 5%;margin-bottom: 5%;">取车地址:河南财经政法大学（龙子湖校区）</p>
                         <hr width="100%" color="#F2F3F5" >
                          <span class="glyphicon glyphicon-hand-right" aria-hidden="true;" style="float: left; margin-left:4%;"></span><p style="float: left;margin-left: 2%;margin-bottom: 5%;">车描述</p>
                          <div style="margin-top: 8%;margin-bottom:5%;width: 100%;height: 90px;background-color: #F2F3F5" >
                               <p style="float: left;margin-top: 5%" id="vDescribe"></p>
                          </div>
                          <hr width="100%" color="#F2F3F5" >
                          <span class="glyphicon glyphicon-cog" aria-hidden="true;" style="float: left; margin-left:4%;"></span><p style="float: left;margin-left: 2%;margin-bottom: 5%;">车配置</p>
                          <div style="margin-top: 8%;margin-bottom:5%;width: 100%;height: 100px;background-color: #F2F3F5" id="finalArea">
                              <div style="width: 100%;height: 40px">
                               <p style="float: left;margin-top: 3%">车龄&nbsp;&nbsp;&nbsp;</p><b style="float: left;margin-top: 3%"></b>
                               <p style="float: left;margin-top: 3%;margin-left: 5%;">排量&nbsp;&nbsp;&nbsp;</p><b style="float: left;margin-top: 3%"></b>
                               <p style="float: left;margin-top: 3%;margin-left: 5%;">类型&nbsp;&nbsp;&nbsp;</p><b style="float: left;margin-top: 3%"></b>
                               <p style="float: left;margin-top: 3%;margin-left: 5%;">品牌&nbsp;&nbsp;&nbsp;</p><b style="float: left;margin-top: 3%"></b>
                              </div>
                              <div style="width: 100%;height: 40px">
                               <p style="float: left;margin-top: 3%;margin-left: 16%;">油型/电动&nbsp;&nbsp;&nbsp;</p><b style="float: left;margin-top: 3%"></b>
                               <p style="float: left;margin-top: 3%;margin-left: 5%;">容量&nbsp;&nbsp;&nbsp;</p><b style="float: left;margin-top: 3%"></b>
                               <p style="float: left;margin-top: 3%;margin-left: 5%;">座椅数&nbsp;&nbsp;&nbsp;</p><b style="float: left;margin-top: 3%"></b>
                              </div>
                          </div>
                          <hr width="100%" color="#F2F3F5" >
                          <span class="glyphicon glyphicon-list-alt" aria-hidden="true;" style="float: left; margin-left:4%;"></span><p style="float: left;margin-left: 2%;margin-bottom: 5%;">用车规则</p>
                          <div style="margin-top: 8%;margin-bottom:5%;width: 100%;height: 100px;background-color: #F2F3F5" >
                              <div style="width: 100%;height: 40px">
                               <p style="float: left;margin-top: 3%">日均限行&nbsp;&nbsp;&nbsp;</p><b style="float: left;margin-top: 3%">300KM</b>
                               <p style="float: left;margin-top: 3%;margin-left: 20%;">租期要求&nbsp;&nbsp;&nbsp;</p><b style="float: left;margin-top: 3%">一天起租</b>
                              </div>
                              <div style="width: 100%;height: 40px">
                               <p style="float: left;margin-top: 3%;margin-left: 18%;">不便交车&nbsp;&nbsp;&nbsp;</p><b style="float: left;margin-top: 3%">每天 22:00-次日08:00</b>
                               <p style="float: left;margin-top: 3%;margin-left: 5%;">燃油政策&nbsp;&nbsp;&nbsp;</p><b style="float: left;margin-top: 3%">建议原油位返还</b>
                              </div>
                          </div>
                   </div>
              </div>
         </div>
	</div>
	
	<div style="background-color: #4DB3B3; width: 30px; height: 8px; border-radius: 5px; margin: auto;"></div>
    <div id="foot" style="background-color: #F2F3F5;height: 600px;">
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
var a = $("#vehicleReturnDate_input").val();
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
layui.use('laydate', function(){
	  var laydate = layui.laydate;
	  //执行一个laydate实例
	  laydate.render({
	    elem: '#vehicleReturnDate_input' //指定元素 
	    ,format: 'yyyy-MM-dd'
	    ,min:'nowTime'
	  });
});

$(function(){
	var t = $("#clientInformation").val();
	vehicleFind();
	if(t == "null" || t == ""){
		$("#clientInfo").hide();
		
	}else{
		$("#loginAndRegister").hide();
		clientFind();
	}
	$("#vehicleRentDate_input").val(getNowFormatDate());
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
			$("#clientLevel").val(client.clientRealName);
			$("#driverLicense").val(client.clientDriverLicenseNumber);
			$("#clientId").val(client.clientId);
			$("#clientRealName").val(client.clientRealName);
			$("#clientIdNumber").val(client.clientIdNumber);
			$("#clientPhoneNumber").val(client.clientPhoneNumber);
			$("#clientBalance").val(client.clientBalance);
			$("#clientCarRentalState").val(client.clientCarRentalState);
			//alert($("#clientCarRentalState").val());
		}
	});
}

function vehicleFind(){
	$("#bookBtn").text("");
	$.ajax({
		url:"${APP_PATH}/getOneVehicle/"+$("#vehicleId").val(),
		type:"GET",
		success:function(result){
			//alert(result.extend.vehicle.vehicleId);
			var vehicle = result.extend.vehicle;
			$("#vehicleClassId").val(vehicle.vehicleClassNumber);
			$("#carState").val(vehicle.vehicleState);
			$("#vehiclePlateNumber").val(vehicle.vehiclePlateNumber);
			$("#vehicleDailyRent").val(vehicle.vehicleDailyRent);
			$("#vehicleCashPledge").val(vehicle.vehicleCashPledge);
			$("#stat").text("已被租用"+vehicle.vehicleRentalStatistic+"次");
			$("#test2").find("img:eq(0)").prop("src","/imgPath/"+vehicle.vehicleImage1);
			$("#test2").find("img:eq(1)").prop("src","/imgPath/"+vehicle.vehicleImage2);
			$("#test2").find("img:eq(2)").prop("src","/imgPath/"+vehicle.vehicleImage3);
			$("#test2").find("img:eq(3)").prop("src","/imgPath/"+vehicle.vehicleImage4);
			$("#rightArea").find("h3:eq(0)").text("￥ "+vehicle.vehicleDailyRent+"元/天");
			$("#rightArea").find("h3:eq(1)").text("￥ "+vehicle.vehicleCashPledge+"元(押金可退)");
			$("#rightArea").find("h3:eq(2)").text(vehicle.vehicleName+" "+vehicle.vehicleColor);
			$("#vName").text(vehicle.vehicleName+" "+vehicle.vehicleDisplacement+" "+vehicle.vehicleColor);
			var plateNumber = vehicle.vehiclePlateNumber;
		    plateNumber = plateNumber.substring(5,0)+"***";
			$("#bottomArea").find("span:eq(0)").text(" "+plateNumber);
			$("#bottomArea").find("span:eq(1)").text(" 车龄"+vehicle.vehicleAge+"年");vDescribe
			$("#vDescribe").text(vehicle.vehicleIntroduction);
			
			$("#finalArea").find("div:eq(0)").find("b:eq(0)").text(vehicle.vehicleAge+"年");
			$("#finalArea").find("div:eq(0)").find("b:eq(1)").text(vehicle.vehicleDisplacement);
			$("#finalArea").find("div:eq(0)").find("b:eq(2)").text(vehicle.vehicleClass.vehicleClass);
			$("#finalArea").find("div:eq(0)").find("b:eq(3)").text(vehicle.vehicleBrand.vehicleBrand);
			$("#finalArea").find("div:eq(1)").find("b:eq(0)").text(vehicle.vehicleOilType);
			$("#finalArea").find("div:eq(1)").find("b:eq(1)").text(vehicle.vehicleOilCapacity);
			$("#finalArea").find("div:eq(1)").find("b:eq(2)").text(vehicle.vehicleSeatNum+"座");
			if(vehicle.vehicleState == "-1"){
				$("#bookBtn").addClass("layui-btn layui-btn-danger").append("已被租用");
			}else{
				$("#bookBtn").addClass("layui-btn layui-btn-lg").append("租用");
			}
		}
	});
}
$("#bookBtn").click(function(){
	var t = $("#clientInformation").val();
	//1.先判断是否登录
	if(t == "null" || t == ""){
		if(confirm("您还未登录,是否要去登录？")){
			window.event.returnValue=false;
	    	if (window.event.preventDefault) window.event.preventDefault();
	    	window.location.href = "${APP_PATH}/clientLogin.jsp";
		}
	}else{
		//2.判断是否实名
		if($("#clientLevel").val() == null || $("#clientLevel").val() == ""){
			if(confirm("您还未实名认证,请先去认证？")){
				window.event.returnValue=false;
		    	if (window.event.preventDefault) window.event.preventDefault();
		    	window.location.href = "${APP_PATH}/clientSetting.jsp?cCode=1&clientId=<%=request.getParameter("clientId")%>";
			}
		}else{
			//4.判断车辆是否被人租用
			if($("#carState").val() == "1"){
				//3.判断是否选择还车日期
				if($("#vehicleReturnDate_input").val() != a){
					var idClass = $("#vehicleClassId").val();
					var clientBalance = parseFloat($("#clientBalance").val())//用户账户余额
					var rt = $("#vehicleRentDate_input").val();//租出日期
					var rn = $("#vehicleReturnDate_input").val();//归还日期
					var vehicleDailyRent = parseFloat($("#vehicleDailyRent").val());//日租金
					var vehicleCashPledge = parseFloat($("#vehicleCashPledge").val());//押金
					var days = diy_time(rt,rn);//计算天数
					var payMoney = ((days+1)*vehicleDailyRent+vehicleCashPledge).toFixed(2);//租金+押金
					//5.判断车型，如果是电车自行车则可以直接预定，不需要驾驶证
					if(idClass == "3" || idClass == "4"){
						//alert(money+clientBalance);
						if(confirm("您好，您的租用日期为"+rt+"至"+rn+"共"+(days+1)+"天,"+"需支付(租金+押金)共计"+payMoney+"元,点击确定下单")){
							if(clientBalance>=payMoney){
								addOrderItem(payMoney);
							}else{
								alert("对不起,您的账户余额不足,请先充值!");
							}
						}
					}else{
						//6.判断驾驶证，没驾驶证不能开摩托车汽车
						if($("#driverLicense").val() == null || $("#driverLicense").val() == ""){
							if(confirm("您还未上传驾驶证信息,请先去上传？")){
								window.event.returnValue=false;
						    	if (window.event.preventDefault) window.event.preventDefault();
						    	window.location.href = "${APP_PATH}/clientSetting.jsp?cCode=1&clientId=<%=request.getParameter("clientId")%>";
							}
						}else{
							//7.判断是否在租汽车
							if($("#clientCarRentalState").val() == -1){
								alert("您现在正在租用汽车或摩托车，在租用时间内只能租用一辆汽车或摩托车");
							}else{
								if(confirm("您好，您的租用日期为"+rt+"至"+rn+"共"+(days+1)+"天,"+"需支付(租金+押金)共计"+payMoney+"元,点击确定下单")){
									if(clientBalance>=payMoney){
										addOrderItem(payMoney);
									}else{
										alert("对不起,您的账户余额不足,请先充值!");
									}
								}
							}
							
						}
					}
				}else{
					alert("请选择还车日期！");
				}
			}else{
				
				alert("此辆车正在被人租用");
			}
		} 
	}
});
//获取当前时间
function getNowFormatDate() {
    var date = new Date();
    var seperator1 = "-";
    var year = date.getFullYear();
    var month = date.getMonth() + 1;
    var strDate = date.getDate();
    if (month >= 1 && month <= 9) {
        month = "0" + month;
    }
    if (strDate >= 0 && strDate <= 9) {
        strDate = "0" + strDate;
    }
    var currentdate = year + seperator1 + month + seperator1 + strDate;
    return currentdate;
}
//计算两个时间段的天数
function diy_time(time1,time2){
    time1 = Date.parse(new Date(time1));
    time2 = Date.parse(new Date(time2));
    return time3 = Math.abs(parseInt((time2 - time1)/1000/3600/24));
}
//新增订单
function addOrderItem(payMoney){
	var days = diy_time($("#vehicleRentDate_input").val(),$("#vehicleReturnDate_input").val());//计算天数
	//alert(days+1);
	var formData = new FormData();
	formData.append("clientId", $("#clientId").val());
	formData.append("clientRealName", $("#clientRealName").val());
	formData.append("clientIdNumber", $("#clientIdNumber").val());
	formData.append("clientPhoneNumber", $("#clientPhoneNumber").val());
	formData.append("vehicleId", $("#vehicleId").val());
	formData.append("vehiclePlateNumber", $("#vehiclePlateNumber").val());
	formData.append("vehicleDailyRent", $("#vehicleDailyRent").val());
	formData.append("vehicleCashPledge", $("#vehicleCashPledge").val());
	formData.append("vehicleRentTime", $("#vehicleRentDate_input").val());
	formData.append("vehicleReturnTime", $("#vehicleReturnDate_input").val());
	formData.append("payMoney", payMoney);
	formData.append("clientBalance", $("#clientBalance").val());
	formData.append("rentalDays", days+1);
	$.ajax({
		url:"${APP_PATH}/addOrderItem",
		type:"POST",
		data:formData,
		cache: false,
	    processData: false,
	    contentType: false,
		success:function(result){
			alert("预定成功");
			vehicleFind();
		}
	});
}
</script>

</body>
</html>