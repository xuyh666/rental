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
			<h2 class="modal-title" >员工添加</h2>
		</div>
	<form class="layui-form layui-form-pane" id="Form">
		<div class="layui-form-item">
			<label class="layui-form-label">用户名</label>
			<div class="layui-input-block">
				<input type="text" name="adminUsername" required lay-verify="required"
					placeholder="请输入用户名" autocomplete="off" class="layui-input" id="adminUsername_add_input">
					<span style="font-size: 20px" id="span_username"></span>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">密码</label>
			<div class="layui-input-block">
				<input type="password" name="adminPassword" required
					lay-verify="required" placeholder="请输入密码" autocomplete="off"
					class="layui-input" id="adminPassword_add_input">
					<span style="color: red;font-size: 20px"></span>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">性别</label>
			<div class="layui-input-block">
				<input type="radio" name="adminGender" value="男" checked title="男" >
				<input type="radio" name="adminGender" value="女"  title="女" >
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">手机号</label>
			<div class="layui-input-block">
				<input type="text" name="adminPhonenumber" required
					lay-verify="required"  autocomplete="off"
					class="layui-input" id="adminPhonenumber_add_input" >
					<span style="color: red;font-size: 20px"></span>
			</div>
		</div>
		<div class="layui-form-item">
		    <label class="layui-form-label">等级</label>
		    <div class="layui-input-block">
		      <select name="adminLevel" lay-verify="required">
		        <option value="0">0</option>
		        <option value="1">1</option>
		      </select>
		    </div>
       </div>
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo" id="preserve">保存</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</div>
	</form>

	<script>
		layui.use('form', function() {
			var form = layui.form;
			form.on('submit(formDemo)', function(data) {
				return false;
			});
		});
		
		//清楚当前元素的校验状态
		function show_validate_msg(element,status,msg){
        	//去除之前样式
        	$(element).next("span").text("");
			if("success" == status){
				$(element).next("span").text(msg);
				//$(element).next("span").prop("style","color:#00FF00");
				document.getElementById("span_username").style.color="#009688";
			}else if("error" == status){
				$(element).next("span").text(msg);
				document.getElementById("span_username").style.color="red";
			}
		}
		
		//校验表单数据
		function vilidate_add_form(){
			//验证员工用户名
			var adminUsername = $("#adminUsername_add_input").val();
			var regUsername = /(^[a-zA-Z0-9_-]{6,16}$)/;
			if(!regUsername.test(adminUsername)){
				show_validate_msg("#adminUsername_add_input","error","用户名必须为6到16位数字和字母的组合");
				return false;
			}else{
				show_validate_msg("#adminUsername_add_input","success","");
			};
			
			//密码 
			var adminPassword = $("#adminPassword_add_input").val();
			var regPassword = /(^[a-zA-Z0-9_-]{3,16}$)/;
			if(!regPassword.test(adminPassword)){ 
				show_validate_msg("#adminPassword_add_input","error","密码格式必须为3到16位数字和字母的组合");
				return false;
			}else{
				show_validate_msg("#adminPassword_add_input","success","");
			};
			
			//手机号验证
			var adminPhonenumber = $("#adminPhonenumber_add_input").val();
			var regadminPhonenumber = /^1([358][0-9]|4[579]|66|7[0135678]|9[89])[0-9]{8}$/;
			if(!regadminPhonenumber.test(adminPhonenumber)){
				show_validate_msg("#adminPhonenumber_add_input","error","手机号不存在");
				return false;
			}else{
				show_validate_msg("#adminPhonenumber_add_input","success","");
			}
			return true;
		}
		
		//检验用户名是否存在
		$("#adminUsername_add_input").change(function(){
			var value = this.value;
			$.ajax({
				url:"${APP_PATH}/checkAdminUsername",
				type:"POST",
				data:"adminUsername="+value,
				success:function(result){
					if(result.code == 100){
						show_validate_msg("#adminUsername_add_input","success","用户名可用");
        				$("#preserve").attr("ajax-chg","success");
					}else{
						show_validate_msg("#adminUsername_add_input","error",result.extend.va_msg);
        				$("#preserve").attr("ajax-chg","fail");
					}
				}
			});
		});
		
		//点击保存，新增管理员
		$("#preserve").click(function(){
			 //先对提交服务器的数据进行校验
			if(!vilidate_add_form()){
				return false;
			}
			 //判断用户名是否重复
			if($(this).attr("ajax-chg") == "fail"){
				return false;
			}
			//提交数据
			$.ajax({
				url :"${APP_PATH}/saveAdmin",
				type :"POST",
				data :$("#Form").serialize(),
				success :function(result){
					if(result.code == 100){
						alert("添加成功");
						$("#Form")[0].reset();
					}else{
						if(undefined !=result.extend.errorFields.adminUsername){
							show_validate_msg("#adminUsername_add_input","error","用户名必须为6到16位数字和字母的组合");
						}
						if(undefined !=result.extend.errorFields.adminPassword){
							show_validate_msg("#adminPassword_add_input","error","密码格式必须为3到16位数字和字母的组合");
						}
					}
				}
			});
		});
	</script>
</body>
</html>