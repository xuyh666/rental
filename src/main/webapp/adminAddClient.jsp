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
<div class="modal-header" align="center">
	 <h2 class="modal-title" >用户添加</h2>
</div>
<form class="layui-form layui-form-pane" id="addClientForm">
		<div class="layui-form-item">
			<label class="layui-form-label">用户名</label>
			<div class="layui-input-block">
				<input type="text" name="clientUsername" required lay-verify="required"
					placeholder="请输入用户名"  autocomplete="off" class="layui-input" id="clientUsername_add_input">
			    <span style="font-size: 20px" id="clientUsername_span"></span>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">密码</label>
			<div class="layui-input-block">
				<input type="password" name="clientPassword" required lay-verify="required"
					placeholder="请输入密码"  autocomplete="off" class="layui-input" id="clientPassword_add_input">
			    <span style="font-size: 20px;color: red" id="clientUsername_span"></span>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">手机号</label>
			<div class="layui-input-block">
				<input type="text" name="clientPhoneNumber" required lay-verify="required"
					placeholder="请输入手机号"  autocomplete="off" class="layui-input" id="clientPhoneNumber_add_input">
			    <span style="font-size: 20px" id="clientPhoneNumber_span"></span>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">邮箱</label>
			<div class="layui-input-block">
				<input type="text" name="clientEmail" required lay-verify="required"
					placeholder="请输入邮箱"  autocomplete="off" class="layui-input" id="clientEmail_add_input">
			    <span style="font-size: 20px;color: red" id="clientUsername_span"></span>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">用户状态</label>
			 <div class="layui-input-block">
			    <input type="radio" name="clientActivate" value="-1" checked  title="未激活" >
				<input type="radio" name="clientActivate" value="1" title="激活" >
			</div>
		</div>
		 <div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo" id="preserve">保存</button>
				<button type="reset" class="layui-btn layui-btn-primary" id="rst">重置</button>
			</div>
		</div>
	</form>
   
 <script type="text/javascript">
 layui.use('form', function() {
		var form = layui.form;
		form.on('submit(formDemo)', function(data) {
			return false;
		});
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
		//密码验证
		var clientPassword = $("#clientPassword_add_input").val();
		var regClientPassword = /^([a-zA-Z0-9]|[._#]){6,16}$/;
		if(!regClientPassword.test(clientPassword)){
			show_validate_msg("#clientPassword_add_input","error","密码格式为6到16为字母数字符号组合，且符号限制为'._#''");
			return false;
		}else{
			show_validate_msg("#clientPassword_add_input","success","");
		}
		
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
		 formData.append("clientActivate", $("input[name='clientActivate']:checked").val());
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
					 alert("保存成功");
					 $("#addClientForm")[0].reset();
					 $("#addClientForm span").text("");
				 }else{
					 alert("保存失败！！！");
				 }
			 }
		 });
	 });
 </script>
</body>
</html>