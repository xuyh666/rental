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
    <input type="hidden" id="vehicleClassNumber" value="<%=request.getParameter("vehicleClassNumber")%>">  
     <input type="hidden" id="brands" value="<%=request.getParameter("vehicleBrandNumber")%>"> 
     <input type="hidden" id="min" value="<%=request.getParameter("price_min")%>"> 
      <input type="hidden" id="max" value="<%=request.getParameter("price_max")%>"> 
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
			      <dd><a href="clientFindAllCar.jsp?vehicleClassNumber=1"">退了</a></dd>
			    </dl>
			  </li>
			 <li class="layui-nav-item"><a style="font-size: 20px">TEL:666-777-8888</a></li>
		</ul>
	</div>
	<div style="width: 100%;height: 100px;padding-top: 30px" align="center">
	     <div style="width:90% ;height:100px ;">
	         <form class="layui-form " id="Form">
			  	<div class="layui-input-inline" style="width: 30%">
				    <label class="layui-form-label">品牌</label>
				    <div class="layui-input-block">
				      <select name="vehicleBrandNumber" id="vehicleBrandNumber_condition">
				        <option value=""></option>
				      </select>
				    </div>
				</div>
				<div class="layui-input-inline" style="width: 30%">
				    <label class="layui-form-label">状态</label>
				    <div class="layui-input-block">
				      <select name="vehicleState" id="vehicleState_condition">
				        <option value=""></option>
				        <option value="1">可租用</option>
				        <option value="-1">不可租用</option>
				      </select>
				    </div>
				</div>
		       <div class="layui-input-inline">
			    <div class="layui-inline">
			      <label class="layui-form-label">日租金</label>
			      <div class="layui-input-inline" style="width: 100px;">
			        <input type="text" name="price_min" placeholder="￥" autocomplete="off" class="layui-input"  id="price_min">
			      </div>
			      <div class="layui-form-mid">-</div>
			      <div class="layui-input-inline" style="width: 100px;">
			        <input type="text" name="price_max" placeholder="￥" autocomplete="off" class="layui-input"  id="price_max">
			      </div>
			    </div>
			  </div>
			  <div class="layui-input-inline">
					<button type="button"  	class="layui-btn layui-btn-lg" id="findVehicleBycd">查找</button>
		            <button type="reset" class="layui-btn layui-btn-primary" id="resetbtn">重置</button>
		     </div>
	      </form>
	     </div>
	</div>
    <div id="body" style="width: 100%;height: 1100px;" align="center">
        <div style="width:70% ;height:900px ;">
            <a href="#">
	            <div style="width:24%;height:300px ;float: left;" id="one0" class="fff">
	                 <div style="width:100%;height:60% ;border-radius:10px 10px 10px 10px ">
	                     <img  src="" width="100%" height="100%" style="border-radius:10px 10px 10px 10px ">
	                 </div>
	                 <div style="width:100%;height:40% ;">
	                     <h3 align="left" style="padding-top: 5%;font-size: 15px"></h3>
	                     <p align="left" style="padding-top: 3%;color: #BDBDBD"></p>
	                     <h3 align="left" style="padding-top: 5%;color: #FF4D3B;font-size: 18px" ></h3>
	                 </div>
	            </div>
            </a>
             <a href="#" >
	            <div style="width:24%;height:300px ;float: left;margin-left:1%" id="one1" class="fff">
	                 <div style="width:100%;height:60% ;border-radius:10px 10px 10px 10px; ">
	                     <img  src="" width="100%" height="100%" style="border-radius:10px 10px 10px 10px ">
	                 </div>
	                 <div style="width:100%;height:40% ;">
	                     <h3 align="left" style="padding-top: 5%;font-size: 15px"></h3>
	                     <p align="left" style="padding-top: 3%;color: #BDBDBD"></p>
	                     <h3 align="left" style="padding-top: 5%;color: #FF4D3B;font-size: 18px" ></h3>
	                 </div>
	            </div>
            </a>
             <a href="#">
	            <div style="width:24%;height:300px ;float: left;margin-left:1%" id="one2" class="fff">
	                 <div style="width:100%;height:60% ;border-radius:10px 10px 10px 10px; ">
	                     <img  src="" width="100%" height="100%" style="border-radius:10px 10px 10px 10px ">
	                 </div>
	                 <div style="width:100%;height:40% ;">
	                     <h3 align="left" style="padding-top: 5%;font-size: 15px"></h3>
	                     <p align="left" style="padding-top: 3%;color: #BDBDBD"></p>
	                     <h3 align="left" style="padding-top: 5%;color: #FF4D3B;font-size: 18px" ></h3>
	                 </div>
	            </div>
            </a>
             <a href="#">
	            <div style="width:24%;height:300px ;float: left;margin-left:1%" id="one3" class="fff">
	                 <div style="width:100%;height:60% ;border-radius:10px 10px 10px 10px; ">
	                     <img  src="" width="100%" height="100%" style="border-radius:10px 10px 10px 10px ">
	                 </div>
	                 <div style="width:100%;height:40% ;">
	                     <h3 align="left" style="padding-top: 5%;font-size: 15px"></h3>
	                     <p align="left" style="padding-top: 3%;color: #BDBDBD"></p>
	                     <h3 align="left" style="padding-top: 5%;color: #FF4D3B;font-size: 18px" ></h3>
	                 </div>
	            </div>
            </a>
        
             <a href="#">
	            <div style="width:24%;height:300px ;float: left;" id="one4" class="fff">
	                 <div style="width:100%;height:60% ;border-radius:10px 10px 10px 10px; ">
	                     <img  src="" width="100%" height="100%" style="border-radius:10px 10px 10px 10px ">
	                 </div>
	                 <div style="width:100%;height:40% ;">
	                     <h3 align="left" style="padding-top: 5%;font-size: 15px"></h3>
	                     <p align="left" style="padding-top: 3%;color: #BDBDBD"></p>
	                     <h3 align="left" style="padding-top: 5%;color: #FF4D3B;font-size: 18px" ></h3>
	                 </div>
	            </div>
            </a>
             <a href="#">
	            <div style="width:24%;height:300px ;float: left;margin-left:1%" id="one5" class="fff">
	                 <div style="width:100%;height:60% ;border-radius:10px 10px 10px 10px; ">
	                     <img  src="" width="100%" height="100%" style="border-radius:10px 10px 10px 10px ">
	                 </div>
	                 <div style="width:100%;height:40% ;">
	                     <h3 align="left" style="padding-top: 5%;font-size: 15px"></h3>
	                     <p align="left" style="padding-top: 3%;color: #BDBDBD"></p>
	                     <h3 align="left" style="padding-top: 5%;color: #FF4D3B;font-size: 18px" ></h3>
	                 </div>
	            </div>
            </a>
             <a href="#">
	            <div style="width:24%;height:300px ;float: left;margin-left:1%" id="one6" class="fff">
	                 <div style="width:100%;height:60% ;border-radius:10px 10px 10px 10px; ">
	                     <img  src="" width="100%" height="100%" style="border-radius:10px 10px 10px 10px ">
	                 </div>
	                 <div style="width:100%;height:40% ;">
	                     <h3 align="left" style="padding-top: 5%;font-size: 15px"></h3>
	                     <p align="left" style="padding-top: 3%;color: #BDBDBD"></p>
	                     <h3 align="left" style="padding-top: 5%;color: #FF4D3B;font-size: 18px" ></h3>
	                 </div>
	            </div>
            </a>
             <a href="#">
	            <div style="width:24%;height:300px ;float: left;margin-left:1%" id="one7" class="fff">
	                 <div style="width:100%;height:60% ;border-radius:10px 10px 10px 10px; ">
	                     <img  src="" width="100%" height="100%" style="border-radius:10px 10px 10px 10px ">
	                 </div>
	                 <div style="width:100%;height:40% ;">
	                     <h3 align="left" style="padding-top: 5%;font-size: 15px"></h3>
	                     <p align="left" style="padding-top: 3%;color: #BDBDBD"></p>
	                     <h3 align="left" style="padding-top: 5%;color: #FF4D3B;font-size: 18px" ></h3>
	                 </div>
	            </div>
            </a>
        
            <a href="#">
	            <div style="width:24%;height:300px ;float: left;" id="one8" class="fff">
	                 <div style="width:100%;height:60% ;border-radius:10px 10px 10px 10px ">
	                     <img  src="/imgPath/0ae4b2one.jpg" width="100%" height="100%" style="border-radius:10px 10px 10px 10px ">
	                 </div>
	                 <div style="width:100%;height:40% ;">
	                     <h3 align="left" style="padding-top: 5%;font-size: 15px"></h3>
	                     <p align="left" style="padding-top: 3%;color: #BDBDBD"></p>
	                     <h3 align="left" style="padding-top: 5%;color: #FF4D3B;font-size: 18px" ></h3>
	                 </div>
	            </div>
            </a>
             <a href="#" >
	            <div style="width:24%;height:300px ;float: left;margin-left:1%" id="one9" class="fff">
	                 <div style="width:100%;height:60% ;border-radius:10px 10px 10px 10px; ">
	                     <img  src="/imgPath/0bd92032.jpg" width="100%" height="100%" style="border-radius:10px 10px 10px 10px ">
	                 </div>
	                 <div style="width:100%;height:40% ;">
	                     <h3 align="left" style="padding-top: 5%;font-size: 15px"></h3>
	                     <p align="left" style="padding-top: 3%;color: #BDBDBD"></p>
	                     <h3 align="left" style="padding-top: 5%;color: #FF4D3B;font-size: 18px" ></h3>
	                 </div>
	            </div>
            </a>
             <a href="#">
	            <div style="width:24%;height:300px ;float: left;margin-left:1%" id="one10" class="fff">
	                 <div style="width:100%;height:60% ;border-radius:10px 10px 10px 10px; ">
	                     <img  src="/imgPath/02aa3a6.jpg" width="100%" height="100%" style="border-radius:10px 10px 10px 10px ">
	                 </div>
	                 <div style="width:100%;height:40% ;">
	                     <h3 align="left" style="padding-top: 5%;font-size: 15px"></h3>
	                     <p align="left" style="padding-top: 3%;color: #BDBDBD"></p>
	                     <h3 align="left" style="padding-top: 5%;color: #FF4D3B;font-size: 18px" ></h3>
	                 </div>
	            </div>
            </a>
             <a href="#">
	            <div style="width:24%;height:300px ;float: left;margin-left:1%" id="one11" class="fff">
	                 <div style="width:100%;height:60% ;border-radius:10px 10px 10px 10px; ">
	                     <img  src="/imgPath/1fc11f41.jpg" width="100%" height="100%" style="border-radius:10px 10px 10px 10px ">
	                 </div>
	                 <div style="width:100%;height:40% ;">
	                     <h3 align="left" style="padding-top: 5%;font-size: 15px"></h3>
	                     <p align="left" style="padding-top: 3%;color: #BDBDBD"></p>
	                     <h3 align="left" style="padding-top: 5%;color: #FF4D3B;font-size: 18px" ></h3>
	                 </div>
	            </div>
            </a>
        </div> 
        <div style="height: 200px;width: 100%;" align="center" >
	        <div style="height: 200px;width: 70%;" align="center">
				 <!-- 分页文字信息 -->
				<!--<div class="col-md-6" id="page_info_area"></div> -->
				<!-- 分页条信息 -->
				<div class="col-md-6" id="page_nav_area" align="center" style="margin-left: 25%;"></div>
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
//全局总记录数
var empTotal,currentPage;
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
	getBrands();
	var t = $("#clientInformation").val();
	if(t == "null"){
		$("#clientInfo").hide();
	}else{
		$("#loginAndRegister").hide();
		clientFind();
	}
	
	//条件查询
    if($("#brands").val() != null && $("#brands").val() != "" && $("#brands").val() != "null"){
    	$("#vehicleBrandNumber_condition").val($("#brands").val());
    }
    if($("#min").val() != null && $("#min").val() != "" && $("#min").val() != "null"){
    	$("#price_min").val($("#min").val());
    }
    if($("#max").val() != null && $("#max").val() != "" && $("#min").val() != "null"){
    	$("#price_max").val($("#max").val());
    } 
    if($("#price_min").val() != null && $("#price_min").val() != "" || $("#price_max").val() != null && $("#price_max").val() != "" || $("#vehicleBrandNumber_condition").val() != null && $("#vehicleBrandNumber_condition").val() != ""){
    	findByCondition(1);
    }else{
    	findAllCar(1,$("#vehicleClassNumber").val());
    }
});


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

$("#findVehicleBycd").click(function(){
	findByCondition(1)
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

function findAllCar(pn,classid){
	if(classid == 5){
		$.ajax({
			url:"${APP_PATH}/selectVehicleByConditionss/"+pn,
			type:"POST",
			data:"vehicleClassNumber="+classid,
			success:function(result){
				var vehicle = result.extend.pageInfo.list;
			    for(var i=0;i<12;i++){
			    	if(vehicle[i] != null){
			    		var imgsr = "/imgPath/"+vehicle[i].vehicleImage1;
						var name = vehicle[i].vehicleName+" "+vehicle[i].vehicleColor+" "+vehicle[i].vehicleSeatNum+"座";
					    var plateNumber = vehicle[i].vehiclePlateNumber;
					    plateNumber = plateNumber.substring(5,0)+"***";
					    var dailyRent = vehicle[i].vehicleDailyRent;
					    var a = "#one"+i+" img";
					    var b = "#one"+i;
					    $(a).prop("src",imgsr);
					    $(b).attr("vehicleId",vehicle[i].vehicleId);
					    $(b).attr("clientId",$("#clientInformation").val());
					    $(b).find("div:eq(1)").find("h3:eq(0)").text(name);
					    $(b).find("div:eq(1)").find("p").text(plateNumber);
					    $(b).find("div:eq(1)").find("h3:eq(1)").text(dailyRent+"元/天");
					    $(b).show();
			    	}else{
			    		var a = "#one"+i+" img";
					    var b = "#one"+i;
					    $(a).prop("src","");
					    $(b).find("div:eq(1)").find("h3:eq(0)").text("");
					    $(b).find("div:eq(1)").find("p").text("");
					    $(b).find("div:eq(1)").find("h3:eq(1)").text("");
					    $(b).hide();
			    	}
			    }
				//2.解析显示分页条数据
				build_page_nav(result);
			}
		});
	}else{
		$.ajax({
			url:"${APP_PATH}/selectVehicleByConditions/"+pn,
			type:"POST",
			data:"vehicleClassNumber="+classid,
			success:function(result){
				var vehicle = result.extend.pageInfo.list;
			    for(var i=0;i<12;i++){
			    	if(vehicle[i] != null){
			    		var imgsr = "/imgPath/"+vehicle[i].vehicleImage1;
						var name = vehicle[i].vehicleName+" "+vehicle[i].vehicleColor+" "+vehicle[i].vehicleSeatNum+"座";
					    var plateNumber = vehicle[i].vehiclePlateNumber;
					    plateNumber = plateNumber.substring(5,0)+"***";
					    var dailyRent = vehicle[i].vehicleDailyRent;
					    var a = "#one"+i+" img";
					    var b = "#one"+i;
					    $(a).prop("src",imgsr);
					    $(b).attr("vehicleId",vehicle[i].vehicleId);
					    $(b).attr("clientId",$("#clientInformation").val());
					    $(b).find("div:eq(1)").find("h3:eq(0)").text(name);
					    $(b).find("div:eq(1)").find("p").text(plateNumber);
					    $(b).find("div:eq(1)").find("h3:eq(1)").text(dailyRent+"元/天");
					    $(b).show();
			    	}else{
			    		var a = "#one"+i+" img";
					    var b = "#one"+i;
					    $(a).prop("src","");
					    $(b).find("div:eq(1)").find("h3:eq(0)").text("");
					    $(b).find("div:eq(1)").find("p").text("");
					    $(b).find("div:eq(1)").find("h3:eq(1)").text("");
					    $(b).hide();
			    	}
			    }
				//2.解析显示分页条数据
				build_page_nav(result);
			}
		});
	}
}	
	//解析并显示分页信息
	function build_page_info(result) {
		$("#page_info_area").empty();
		$("#page_info_area").append("当前第" 
				        + result.extend.pageInfo.pageNum + "页,总"
						+ result.extend.pageInfo.pages + "页,总"
						+ result.extend.pageInfo.total + "辆车");
		empTotal = result.extend.pageInfo.total;
		currentPage = result.extend.pageInfo.pageNum;
	}

	//2.解析显示分页条数据
	function build_page_nav(result) {
		$("#page_nav_area").empty();
		var ul = $("<ul></ul>").addClass("pagination");
		var firstPageLi = $("<li></li>")
		.append($("<a></a>").append("首页").attr("href", "#"));
		var prePageLi = $("<li></li>")
		.append($("<a></a>").append("&laquo;"));
		if (result.extend.pageInfo.hasPreviousPage == false) {
			firstPageLi.addClass("disabled");
			prePageLi.addClass("disabled");
		} else {
			firstPageLi.click(function() {
				findAllCar(1,$("#vehicleClassNumber").val());
			});
			prePageLi.click(function() {
				findAllCar(result.extend.pageInfo.pageNum - 1,$("#vehicleClassNumber").val());
			});
		}
		var nextPageLi = $("<li></li>").append(
				$("<a></a>").append("&raquo;"));
		var lastPageLi = $("<li></li>").append(
				$("<a></a>").append("尾页").attr("href", "#"));
		if (result.extend.pageInfo.hasNextPage == false) {
			nextPageLi.addClass("disabled");
			lastPageLi.addClass("disabled");
		} else {
			nextPageLi.click(function() {
				findAllCar(result.extend.pageInfo.pageNum + 1,$("#vehicleClassNumber").val());
			});
			lastPageLi.click(function() {
				findAllCar(result.extend.pageInfo.pages,$("#vehicleClassNumber").val());
			});
		}
		ul.append(firstPageLi).append(prePageLi);
		$.each(result.extend.pageInfo.navigatepageNums, function(index,item) {
			var numLi = $("<li></li>").append($("<a></a>").append(item));
			if (result.extend.pageInfo.pageNum == item) {
				numLi.addClass("active");
			}
			numLi.click(function() {
				findAllCar(item,$("#vehicleClassNumber").val());
			});
			ul.append(numLi);
		});
		ul.append(nextPageLi).append(lastPageLi);
		var nav = $("<nav></nav>").append(ul);
		nav.appendTo("#page_nav_area");
	}


//条件查询
function findByCondition(pn){
	var formData = new FormData();
	formData.append("pn", pn);
	formData.append("vehicleClassNumber", $("#vehicleClassNumber").val());
	formData.append("vehicleBrandNumber", $("#vehicleBrandNumber_condition").val());
	formData.append("vehicleState", $("#vehicleState_condition").val());
	formData.append("priceMin", $("#price_min").val());
	formData.append("priceMax", $("#price_max").val());
	$.ajax({
		url:"${APP_PATH}/clientFindVehiicleByConditions",
		type:"POST",
		data:formData,
		cache: false,
	    processData: false,
	    contentType: false,
	    success:function(result){
			var vehicle = result.extend.pageInfo.list;
		    for(var i=0;i<12;i++){
		    	if(vehicle[i] != null){
		    		var imgsr = "/imgPath/"+vehicle[i].vehicleImage1;
					var name = vehicle[i].vehicleName+" "+vehicle[i].vehicleColor+" "+vehicle[i].vehicleSeatNum+"座";
				    var plateNumber = vehicle[i].vehiclePlateNumber;
				    plateNumber = plateNumber.substring(5,0)+"***";
				    var dailyRent = vehicle[i].vehicleDailyRent;
				    var a = "#one"+i+" img";
				    var b = "#one"+i;
				    $(a).prop("src",imgsr);
				    $(b).attr("vehicleId",vehicle[i].vehicleId);
				    $(b).attr("clientId",$("#clientInformation").val());
				    $(b).find("div:eq(1)").find("h3:eq(0)").text(name);
				    $(b).find("div:eq(1)").find("p").text(plateNumber);
				    $(b).find("div:eq(1)").find("h3:eq(1)").text(dailyRent+"元/天");
				    $(b).show();
		    	}else{
		    		var a = "#one"+i+" img";
				    var b = "#one"+i;
				    $(a).prop("src","");
				    $(b).find("div:eq(1)").find("h3:eq(0)").text("");
				    $(b).find("div:eq(1)").find("p").text("");
				    $(b).find("div:eq(1)").find("h3:eq(1)").text("");
				    $(b).hide();
		    	}
		    }
			//2.解析显示分页条数据
			build_page1_nav(result);
		}
	});
}

function build_page1_nav(result) {
	$("#page_nav_area").empty();
	var ul = $("<ul></ul>").addClass("pagination");
	var firstPageLi = $("<li></li>")
	.append($("<a></a>").append("首页").attr("href", "#"));
	var prePageLi = $("<li></li>")
	.append($("<a></a>").append("&laquo;"));
	if (result.extend.pageInfo.hasPreviousPage == false) {
		firstPageLi.addClass("disabled");
		prePageLi.addClass("disabled");
	} else {
		firstPageLi.click(function() {
			findByCondition(1);
		});
		prePageLi.click(function() {
			findByCondition(result.extend.pageInfo.pageNum - 1);
		});
	}
	var nextPageLi = $("<li></li>").append(
			$("<a></a>").append("&raquo;"));
	var lastPageLi = $("<li></li>").append(
			$("<a></a>").append("尾页").attr("href", "#"));
	if (result.extend.pageInfo.hasNextPage == false) {
		nextPageLi.addClass("disabled");
		lastPageLi.addClass("disabled");
	} else {
		nextPageLi.click(function() {
			findByCondition(result.extend.pageInfo.pageNum + 1);
		});
		lastPageLi.click(function() {
			findByCondition(result.extend.pageInfo.pages);
		});
	}
	ul.append(firstPageLi).append(prePageLi);
	$.each(result.extend.pageInfo.navigatepageNums, function(index,item) {
		var numLi = $("<li></li>").append($("<a></a>").append(item));
		if (result.extend.pageInfo.pageNum == item) {
			numLi.addClass("active");
		}
		numLi.click(function() {
			findByCondition(item);
		});
		ul.append(numLi);
	});
	ul.append(nextPageLi).append(lastPageLi);
	var nav = $("<nav></nav>").append(ul);
	nav.appendTo("#page_nav_area");
}


$(document).on("click",".fff",function(){
	window.event.returnValue=false;
	if (window.event.preventDefault) window.event.preventDefault();
	window.location.href = "${APP_PATH}/clientChooseVehicle.jsp?clientId="+$(this).attr("clientId")+"&vehicleId="+$(this).attr("vehicleId");
});
$("#resetbtn").click(function(){
	   $("#Form")[0].reset();
	　  layui.form.render();
	});
</script>
</body>
</html>