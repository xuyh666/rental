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

#foot{
 width: 100%;
 height: 600px;
 background-color:#F7F7F7;
 position: absolute;
}
</style>
</head>
<body>
   <div>
		<ul class="layui-nav" lay-filter="">
		    <img src="/imgPath/logo.png" height="10%" width="20%"> 
		    <img src="/imgPath/welreg1.png" height="2%" width="10%"> 
			<li class="layui-nav-item" layui-this><a href="homePage.jsp">首页</a></li>
			<li class="layui-nav-item"><a href=""></a></li>
			<li class="layui-nav-item"><a href=""></a></li>
			<li class="layui-nav-item"><a href=""></a></li>
			<li class="layui-nav-item"><a href=""></a></li>
			<li class="layui-nav-item"><a href=""></a></li>
			<li class="layui-nav-item"><a href=""></a></li>
			<li class="layui-nav-item"><a href=""></a></li>
			<li class="layui-nav-item"><a href=""></a></li>
			<li class="layui-nav-item"><a href=""></a></li>
			<li class="layui-nav-item"><a href=""></a></li>
			<li class="layui-nav-item"><a href=""></a></li>
			<li class="layui-nav-item" ><a href=""></a></li>
			<li class="layui-nav-item"><a style="font-size: 20px">TEL:666-777-8888</a></li>
		</ul>
	</div>
	<!--背景图片 -->
	<div style="height: 600px;width: 100%;background-color:#F2F3F5;display: inline-block; " align="center">
		<div style="background-color:#FFFFFF;width: 80%;height: 500px;margin-top: 50px" >
			<div style="height: 100%;width: 58%;float: left;">
				 <div align="left" style="margin-top: 10%;margin-left: 16%;">
				      <h2>用户注册</h2>
				     <form class="layui-form layui-form-pane" id="addClientForm" style="margin-top: 5%">
							<div class="layui-form-item" style="width: 70%">
								<label class="layui-form-label">用户名</label>
								<div class="layui-input-block">
									<input type="text" name="clientUsername" required lay-verify="required"
										placeholder="请输入用户名"  autocomplete="off" class="layui-input" id="clientUsername_add_input">
								    <span style="font-size: 15px" id="clientUsername_span"></span>
								</div>
							</div>
							<div class="layui-form-item" style="width: 70%">
								<label class="layui-form-label">密码</label>
								<div class="layui-input-block">
									<input type="password" name="clientPassword" required lay-verify="required"
										placeholder="请输入密码"  autocomplete="off" class="layui-input" id="clientPassword_add_input">
								    <span style="font-size: 15px;color: red" id="clientUsername_span"></span>
								</div>
							</div>
							<div class="layui-form-item" style="width: 70%">
								<label class="layui-form-label">手机号</label>
								<div class="layui-input-block">
									<input type="text" name="clientPhoneNumber" required lay-verify="required"
										placeholder="请输入手机号"  autocomplete="off" class="layui-input" id="clientPhoneNumber_add_input">
								    <span style="font-size: 15px;" id="clientPhoneNumber_span"></span>
								</div>
							</div>
							<div class="layui-form-item" style="width: 70%">
								<label class="layui-form-label" >邮箱</label>
								<div class="layui-input-block">
									<input type="text" name="clientEmail" required lay-verify="required"
										placeholder="请输入邮箱"  autocomplete="off" class="layui-input" id="clientEmail_add_input">
								    <span style="font-size: 15px;color: red" id="clientUsername_span"></span>
								</div>
							</div>
							 <div class="layui-form-item">
								<div class="layui-input-block" >
									<button class="layui-btn layui-btn-lg" lay-submit lay-filter="formDemo" id="preserve">注册</button>
									<button type="button" class="btn btn-default" id="toLogin">已有账号？去登录</button>
								</div>
							</div>
						</form>
				 </div>
			</div>
			<div style="height: 100%;width:2px;float: left; background-color: #F2F3F5" ></div>
			<div style="height: 100%;width: 40%;float: left;" >
			  <div style="width: 80%; height: 350px; float: left;margin-top: 8%;margin-left: 9%" >
					<!-- <img src="/imgPath/ab1.jpg" width="350px" height="350px"> -->
					<div class="layui-carousel" id="test1" style="height: 375px">
						<div carousel-item id="test2" style="height: 375px">
							<img src="/imgPath/ab1.jpg"> 
							<img src="/imgPath/ab2.jpg"> 
							<img src="/imgPath/ab.jpg">
						</div>
					</div>
					<div style="font-size: 20px;  align="center">
						<b>豪华车</b>
					</div>
					<div style="color: #BDBDBD; margin-top: 3%;margin-left: 10%;" >
						提供高端用车，满足您高端奢华定制需求。
					</div>
			  </div>
			</div>
		</div>
	</div>
	<div id="body" >
	     <div style="width: 100%; height: 100px;">
             <img  src="/imgPath/bg1.png" width="100%">
         </div>
	</div>
	<div style="background-color: #4DB3B3; width: 30px; height: 8px; border-radius: 5px; margin: auto;"></div>
    <div id="foot" style="top: 660px;margin-top: 100px">
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
			height : '375px',//设置容器高度
			arrow : 'none',//始终显示箭头
			anim : 'fade', //切换动画方式
			interval : 3000
		//图片切换间隔
		});
	});
	layui.use('element', function() {
		var element = layui.element;
	});
    //点击去登录按钮，到登录界面
	$("#toLogin").click(function(){
		window.location.href = "${APP_PATH}/clientLogin.jsp";
	});
    
	//判断用户名是否重复
	 $("#clientUsername_add_input").change(function(){
	 	var value = this.value;
	 	$.ajax({
	 		url:"${APP_PATH}/checkClientUsername",
	 		type:"POST",
	 		data:"clientUsername="+value,
	 		success:function(result){
	 			if(result.code == 100){
	 				show_validate_msg("#clientUsername_add_input","success","用户名可用");
	 				$("#preserve").attr("ajax-chg","success");
	 			}else{
	 				show_validate_msg("#clientUsername_add_input","error",result.extend.va_msg);
	 				$("#preserve").attr("ajax-chg","fail");
	 			}
	 		}
	 	});
	 });
	 
	 //判断手机号是否重复
	 $("#clientPhoneNumber_add_input").change(function(){
		var value = this.value;
	 	$.ajax({
	 		url:"${APP_PATH}/checkClientPhoneNumber",
	 		type:"POST",
	 		data:"clientPhoneNumber="+value,
	 		success:function(result){
	 			if(result.code == 100){
	 				show_validate_msg("#clientPhoneNumber_add_input","success","手机号可用");
	 				$("#preserve").attr("ajax-chg1","success");
	 			}else{
	 				show_validate_msg("#clientPhoneNumber_add_input","error",result.extend.e_msg);
	 				$("#preserve").attr("ajax-chg1","fail");
	 			}
	 		}
	 	});
	 });
	 
	    //校验表单数据
		function vilidate_add_form(){
			//验证员工姓名
			/* var userName = $("#clientUsername").val();
			var regUserName = /(^[a-zA-Z0-9_-]{6,16}$)/;
			if(!regUserName.test(userName)){
				show_validate_msg("#clientUsername_add_input","error","用户名必须是6到16位数字和字母的组合111");
				return false;
			}else{
				show_validate_msg("#clientUsername_add_input","success","");
			}; */
			
			//密码验证
			var clientPassword = $("#clientPassword_add_input").val();
			var regClientPassword = /^([a-zA-Z0-9]|[._#]){6,16}$/;
			if(!regClientPassword.test(clientPassword)){
				show_validate_msg("#clientPassword_add_input","error","密码格式为6到16为字母数字符号组合，且符号限制为'._#''");
				return false;
			}else{
				show_validate_msg("#clientPassword_add_input","success","");
			}
			
			//手机号验证
			/* var clientPhoneNumber = $("#clientPhoneNumber_add_input").val();
			var regclientPhoneNumber = /^1([358][0-9]|4[579]|66|7[0135678]|9[89])[0-9]{8}$/;
			if(!regclientPhoneNumber.test(clientPhoneNumber)){
				show_validate_msg("#clientPhoneNumber_add_input","error","手机号不存在");
				return false;
			}else{
				show_validate_msg("#clientPhoneNumber_add_input","success","");
			} */
			
			//验证邮箱"邮箱格式错误"
			var clientEmail = $("#clientEmail_add_input").val();
			var regEmail = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
			if(!regEmail.test(clientEmail)){ 
				show_validate_msg("#clientEmail_add_input","error","邮箱格式错误");
				return false;
			}else{
				show_validate_msg("#clientEmail_add_input","success","");
			};
			
			return true;
		}
	 
	  //清楚当前元素的校验状态
		function show_validate_msg(element,status,msg){
		//去除之前样式
		$(element).next("span").text("");
			if("success" == status){
				$(element).next("span").text(msg);
				if(element == "#clientUsername_add_input"){
					document.getElementById("clientUsername_span").style.color="#009688";
				}
				if(element == "#clientPhoneNumber_add_input"){
					document.getElementById("clientPhoneNumber_span").style.color="#009688";
				}
			}else if("error" == status){
				$(element).next("span").text(msg);
				if(element == "#clientUsername_add_input"){
					document.getElementById("clientUsername_span").style.color="red";
				}
				if(element == "#clientPhoneNumber_add_input"){
					document.getElementById("clientPhoneNumber_span").style.color="red";
				}
			}
		}
	  
		//点击保存按钮保存
		 $("#preserve").click(function(){
		    //先对提交服务器的数据进行校验
			if(!vilidate_add_form()){
				return false;
			}
			 //判断用户名是否重复
			if($(this).attr("ajax-chg") == "fail"){
				return false;
			}
			//判断手机号是否重复
			if($(this).attr("ajax-chg1") == "fail"){
				return false;
			}
			//提交数据
			 var formData = new FormData();
			 formData.append("clientUsername", $('#clientUsername_add_input').val());
			 formData.append("clientPassword", $('#clientPassword_add_input').val());
			 formData.append("clientPhoneNumber", $('#clientPhoneNumber_add_input').val());
			 formData.append("clientEmail", $('#clientEmail_add_input').val());
			 $.ajax({
				 url:"${APP_PATH}/saveClient",
				 type:"POST",
				 data:formData,
				 async: false,
				 cache: false,
			     processData: false,
			     contentType: false,
				 success:function(result){
					 if(result.code == 100){
						 alert("注册成功,请到"+$('#clientEmail_add_input').val()+"邮箱下激活！！");
						 $("#addClientForm")[0].reset();
						 $("#addClientForm span").text("");
						 //window.location.href = "";
					 }else{
						 alert("保存失败！！！");
					 }
				 }
			 });
		 });
    </script>
</body>
</html>