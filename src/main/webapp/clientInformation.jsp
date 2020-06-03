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
<div >
<input type="hidden" id="clientInformation" value="<%=request.getParameter("clientId")%>">  

<!-- 用户提现模态框 -->
	<div class="modal fade" id="clientWithdrawModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" >提现</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="withdrawForm">
						<div class="form-group">
							<label class="col-sm-2 control-label">选择银行</label>
							<div class="col-sm-4">
								<select class="form-control" name="bank" >
								     <option>中国银行</option>
								     <option>建设银行</option>
								     <option>农业银行</option>
								     <option>招商银行</option>
								     <option>农村信用社</option>
								     <option>工商银行</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">银行卡号</label>
							<div class="col-sm-7">
								<input type="text"  class="form-control" id="bankCode_withdraw_input">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">提现金额</label>
							<div class="col-sm-7">
								<input type="text"  class="form-control" id="clientBalance_withdraw_input">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">交易密码</label>
							<div class="col-sm-7">
								<input type="password"  class="form-control" id="clientPassword_withdraw_input">
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary" id="withdraw_btn">提现</button>
				</div>
			</div>
		</div>
	</div>

<!-- 用户充值模态框 -->
	<div class="modal fade" id="clientRechargeModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" >充值</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="rechargeForm">
						<div class="form-group">
							<label class="col-sm-2 control-label">选择银行</label>
							<div class="col-sm-4">
								<select class="form-control" name="bank" >
								     <option>中国银行</option>
								     <option>建设银行</option>
								     <option>农业银行</option>
								     <option>招商银行</option>
								     <option>农村信用社</option>
								     <option>工商银行</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">银行卡号</label>
							<div class="col-sm-7">
								<input type="text"  class="form-control" id="bankCode_recharge_input">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">充值金额</label>
							<div class="col-sm-7">
								<input type="text"  class="form-control" id="clientBalance_recharge_input">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">交易密码</label>
							<div class="col-sm-7">
								<input type="password"  class="form-control" id="clientPassword_recharge_input">
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary" id="recharge_btn">充值</button>
				</div>
			</div>
		</div>
	</div>

<!-- 用户验证驾驶证模态框 -->
	<div class="modal fade" id="driverLicenseApproveModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" >驾驶证验证</h4>
				</div>
				<div class="modal-body">
					<form class="layui-form layui-form-pane" id="updateClientForm" enctype="multipart/form-data">
					   <div class="layui-form-item">
							<label class="layui-form-label">Id</label>
							<div class="layui-input-block">
								<input type="text" name="clientId"  readonly="readonly" 
									 autocomplete="off" class="layui-input" id="clientId_approve_input1">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">驾驶证号</label>
							<div class="layui-input-block">
								<input type="text" name="clientDriverLicenseNumber"  
									 autocomplete="off" class="layui-input" id="clientDriverLicenseNumber_approve_input">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">驾驶证图</label>
							<div class="layui-input-block">
							<input type="file" name="clientDriverLicenseImage" class="layui-input" id="clientDriverLicenseImage_approve_input">
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary" id="driverLicense_approve_btn">认证</button>
				</div>
			</div>
		</div>
	</div>

<!-- 用户验证身份模态框 -->
	<div class="modal fade" id="idApproveModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" >身份验证</h4>
				</div>
				<div class="modal-body">
					<form class="layui-form layui-form-pane" id="updateClientForm" enctype="multipart/form-data">
					   <div class="layui-form-item">
							<label class="layui-form-label">Id</label>
							<div class="layui-input-block">
								<input type="text" name="clientId"  readonly="readonly" 
									 autocomplete="off" class="layui-input" id="clientId_approve_input">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">姓名</label>
							<div class="layui-input-block">
								<input type="text" name="clientRealName"  
									 autocomplete="off" class="layui-input" id="clientRealName_approve_input">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">性别</label>
							 <div class="layui-input-block">
							    <input type="radio" name="clientGender" value="男"  title="男 ">
								<input type="radio" name="clientGender" value="女"  title="女" >
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">出生日期</label>
							 <div class="layui-input-block">
							   <input type="text" name="clientBirthDate"   
									 autocomplete="off" class="layui-input" id="clientBirthDate_approve_input">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">身份证号</label>
							<div class="layui-input-block">
								<input type="text" name="clientIdNumber" 
									  autocomplete="off" class="layui-input" id="clientIdNumber_approve_input">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">身份证图</label>
							<div class="layui-input-block">
							<input type="file" name="clientIdImage" class="layui-input" id="clientIdImage_approve_input">
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary" id="id_approve_btn">认证</button>
				</div>
			</div>
		</div>
	</div>
<!-- 信息显示 -->
<input type="hidden" id="ccc" value="">  
	<table class="table table-hover" id="tb">
	   <tr>
	      <div class="layui-form-item">
			   <td><label class="layui-form-label">头像</label></td>
			   <td align="center">
			       <div class="layui-input-block">
			       <img  src="" id="adminHead" class="img-circle" height="50px" width="50px">
					</div>
			   </td>
			   <td>
			   <form  enctype="multipart/form-data">
				   <input type="hidden" value="<%=request.getParameter("adminId")%>" name="adminId">
	                      <a class="btn btn-default" href="#" role="button" id="inp">
	                           选择图片<input type="file" name="file" style="opacity: 0;display: inline-block; width: 50px" id="i">
	                      </a>
				</form>
				<button  id="changeHeadPic" >保存</button>
			   </td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			</div>
		 </tr>
		 <tr>
		 <div class="layui-form-item">
			   <td><label class="layui-form-label">编号</label></td>
			   <td>
                    <div class="layui-input-block">
						<input type="text" name="clientId"  readonly="readonly" 
							 autocomplete="off" class="layui-input" id="clientId_update_input">
					</div>		   
			   </td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
		 </div>	   
		 </tr>
		 <tr>
		 <div class="layui-form-item">
			   <td><label class="layui-form-label">姓名</label></td>
			   <td>
			       <div class="layui-input-block">
						<input type="text" name="clientRealName"  readonly="readonly" 
							 autocomplete="off" class="layui-input" id="clientRealName_update_input">
					</div>
			   </td>
			   <td><label class="layui-form-label approve"  ></label></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			 </div>
			 </tr>
		 <tr>
		 <div class="layui-form-item">
			   <td><label class="layui-form-label">性别</label></td>
			   <td id="adminPassword">
			   <div class="layui-input-block">
			       <input type="text" name="clientGender"  readonly="readonly" 
					 autocomplete="off" class="layui-input" id="clientGender_update_input">
			   </div>
			   </td>
			   <td><label class="layui-form-label approve"></label></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			 </tr>
			 <tr>
		 <div class="layui-form-item">
			   <td><label class="layui-form-label">生日</label></td>
			   <td id="adminPassword">
			   <div class="layui-input-block">
			      <input type="text" name="clientBirthDate"  readonly="readonly" 
					 autocomplete="off" class="layui-input" id="clientBirthDate_update_input">
			   </div>
			   </td>
			   <td><label class="layui-form-label approve" ></label></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			 </tr>
			 <tr>
			  <div class="layui-form-item">
			   <td><label class="layui-form-label">身份证</label></td>
			   <td id="adminPassword">
			   <div class="layui-input-block">
			       <input type="text" name="clientIdNumber" readonly="readonly" 
					  autocomplete="off" class="layui-input" id="clientIdNumber_update_input">
			   </div>
			   </td>
			   <td><label class="layui-form-label approve" ></label></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			 </tr>
			 <tr>
		       <div class="layui-form-item">
			   <td><label class="layui-form-label">手机号</label></td>
			   <td id="adminPassword">
			   <div class="layui-input-block">
			      <input type="text" name="clientPhoneNumber"  readonly="readonly" 
					 autocomplete="off" class="layui-input" id="clientPhoneNumber_update_input">
			   </div>
			   </td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			 </tr>
			 <tr>
		       <div class="layui-form-item">
			   <td><label class="layui-form-label">用户名</label></td>
			   <td id="adminPassword">
			   <div class="layui-input-block">
			      <input type="text" name="clientUsername"  readonly="readonly" 
					 autocomplete="off" class="layui-input" id="clientUsername_update_input">
			   </div>
			   </td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			 </tr>
			 <tr>
			  <div class="layui-form-item">
			   <td><label class="layui-form-label">密码</label></td>
			   <td id="adminPassword">
			   <div class="layui-input-block">
			       <input type="text" name="clientPassword"  
					 autocomplete="off" class="layui-input" id="clientPassword_update_input">
			   </div>
			   </td>
			   <td> <button type="button" class="layui-btn layui-btn-lg layui-btn-danger" id="altPassword">修改密码</button></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			 </tr>
			 <tr>
			  <div class="layui-form-item">
			   <td><label class="layui-form-label">邮箱</label></td>
			   <td id="adminPassword">
			   <div class="layui-input-block">
			       <input type="text" name="clientEmail" readonly="readonly" 
					 autocomplete="off" class="layui-input" id="clientEmail_update_input">
			   </div>
			   </td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			 </tr>
			 <tr>
			  <div class="layui-form-item">
			   <td><label class="layui-form-label">余额</label></td>
			   <td id="adminPassword">
			   <div class="layui-input-block">
			       <input type="text" name="clientBalance" readonly="readonly" 
					  autocomplete="off" class="layui-input" id="clientBalance_update_input">
			   </div>
			   </td>
			   <td>
			        <button type="button" class="layui-btn layui-btn-lg"  id="recharge">充值</button>
			        <button type="button" class="layui-btn layui-btn-lg layui-btn-warm"  id="withdraw">提现</button>
			   </td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			 </tr>
			 <tr>
			  <div class="layui-form-item">
			   <td><label class="layui-form-label">驾驶证</label></td>
			   <td id="adminPassword">
			   <div class="layui-input-block">
			       <input type="text" name="clientDriverLicenseNumber"  readonly="readonly" 
					  autocomplete="off" class="layui-input" id="clientDriverLicenseNumber_update_input">
			   </div>
			   </td>
			   <td><label class="layui-form-label approve1" style="color: red"></label></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			 </tr>
			 <tr>
			  <div class="layui-form-item">
			   <td></td>
			    <td>
					<button type="button" class="layui-btn layui-btn-lg" style="background-color: #5BD1DC" id="idApprove" >身份认证</button>
				    <button type="button" class="layui-btn layui-btn-lg" id="driverLicenseApprove">驾驶证认证</button>
			    </td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			   <td></td>
			 </tr>
	</table>
	
<script type="text/javascript">
layui.use('form', function() {
	var form = layui.form;
	
});
layui.use('laydate', function(){
	  var laydate = layui.laydate;
	  //执行一个laydate实例
	  laydate.render({
	    elem: '#clientBirthDate_approve_input' //指定元素
	    ,format: 'yyyy-MM-dd'
	  });
});
$(function(){
	 clientFind();
	 certificateFind();
});

function AAA(){
	 clientFind();
	 certificateFind();
}
//获取用户信息并显示到表格中
function clientFind(){
	$.ajax({
		url:"${APP_PATH}/findOneClient/"+$("#clientInformation").val(),
		type:"GET",
		success:function(result){
			var client = result.extend.client;
			$("#withdraw_btn").attr("clientId",client.clientId);
		    $("#recharge_btn").attr("clientId",client.clientId);
			$("#clientId_approve_input").val(client.clientId);
			$("#clientId_approve_input1").val(client.clientId);
			$("#tb").find("tr:eq(0)").find("td:eq(1)").find("img").prop("src","/imgPath/"+client.clientHeadPortrait);
		    $("#clientId_update_input").val(client.clientId);
		    if(client.clientRealName == null || client.clientRealName == ""){
		    	$(".approve").text("未认证");
		    	$(".approve").css({color:"red"});
		    }else{
		    	$(".approve").text("已认证");
		    	$("#clientRealName_update_input").val(client.clientRealName);
			    $("#clientGender_update_input").val(client.clientGender);
			    $("#clientBirthDate_update_input").val(client.clientBirthDate);
			    $("#clientIdNumber_update_input").val(client.clientIdNumber);
			    $(".approve").css({color:"#009688"});
		    }
		    $("#clientPhoneNumber_update_input").val(client.clientPhoneNumber);
		    $("#clientUsername_update_input").val(client.clientUsername);
		    $("#clientPassword_update_input").val(client.clientPassword);
		    $("#clientEmail_update_input").val(client.clientEmail);
		    $("#clientBalance_update_input").val(client.clientBalance);
		    if(client.clientDriverLicenseNumber == null || client.clientDriverLicenseNumber == ""){
		    	$(".approve1").text("未认证");
		    	$(".approve1").css({color:"red"});
		    }else{
		    	$("#clientDriverLicenseNumber_update_input").val(client.clientDriverLicenseNumber);
		    	$(".approve1").text("已认证");
		    	$(".approve1").css({color:"#009688"});
		    }
		}
	});
}
//获取验证
function certificateFind(){
	$.ajax({
		url:"${APP_PATH}/findOneCfrById",
		type:"POST",
		data:"clientId="+$("#clientInformation").val(),
		success:function(result){
			//alert(result.msg);
			if(result.code == 100){
				if(result.extend.certificateReview.clientIdCardVerify == -1){
					$(".approve").text("审核中");
					$(".approve").css({color:"red"});
				    $("#idApprove").attr('disabled',true);  
				}else if(result.extend.certificateReview.clientIdCardVerify == null){
					$(".approve").text("未认证");
			    	$(".approve").css({color:"red"});
				}else if(result.extend.certificateReview.clientIdCardVerify == -2){
					$(".approve").text("信息不匹配！");
			    	$(".approve").css({color:"red"});
				}else{
					$(".approve").text("已认证");
					$(".approve").css({color:"#009688"});
					$("#idApprove").attr('disabled',true);
				}
				if(result.extend.certificateReview.clientDriverLicenseVerify == -1){
					$(".approve1").text("审核中");
					$(".approve1").css({color:"red"});
					$("#driverLicenseApprove").attr('disabled',true);  
				}else if(result.extend.certificateReview.clientDriverLicenseVerify == null){
					$(".approve1").text("未认证");
					$(".approve1").css({color:"red"});
				}else if(result.extend.certificateReview.clientDriverLicenseVerify == -2){
					$(".approve1").text("信息不匹配！");
					$(".approve1").css({color:"red"});
				}else{
					$(".approve1").text("已认证");
					$(".approve1").css({color:"#009688"});
					$("#driverLicenseApprove").attr('disabled',true);
				}
			}
		}
	});
}
	//修改头像
	$("#changeHeadPic").click(function(){
		//alert($("#i").val());
		if($("#i").get(0).files[0]){
			var formData = new FormData();
			formData.append("clientId", $("#clientId_update_input").val());
			formData.append("file", $("#i")[0].files[0]);
			$.ajax({
				url:"${APP_PATH}/altHeadPortrait",
				type:"POST",
				data:formData,
				cache: false,
			    processData: false,
			    contentType: false,
				success:function(result){
					alert("保存成功");
					AAA();
				}
			});
		}else{
			alert("图片为空，请选择图片");
		}
	});

  //修改密码
  $("#altPassword").click(function(){
	  var pwd = $("#clientPassword_update_input").val();
	  if(pwd == null || pwd == ""){
		  alert("密码不能为空");
		  clientFind();
		  return false;
	  }
	  var regClientPassword = /^([a-zA-Z0-9]|[._#]){6,16}$/;
	  if(!regClientPassword.test(pwd)){
		  alert("密码格式为6到16为字母数字符号组合，且符号限制为'._#''");
		  clientFind();
		  return false;
	  }
	  var formData = new FormData();
	  formData.append("clientId", $("#clientId_update_input").val());
	  formData.append("clientPassword", $("#clientPassword_update_input").val());
	  $.ajax({
			url:"${APP_PATH}/updateClientPassword",
			type:"POST",
			data:formData,
			cache: false,
		    processData: false,
		    contentType: false,
			success:function(result){
				alert(result.msg);
				clientFind();
			}
	  });
  });
  //点击身份认证，认证身份
  $("#idApprove").click(function(){
	//显示模态框
  	 $("#idApproveModal").modal({
  		backdrop:"static"
  	 });
  });
  //点击上传驾驶证
  $("#driverLicenseApprove").click(function(){
		//显示模态框
	  	 $("#driverLicenseApproveModal").modal({
	  		backdrop:"static"
	  	 });
	  });
  //点击认证,上传认证
  $("#id_approve_btn").click(function(){
	  var formData = new FormData();
	  formData.append("clientId", $("#clientId_approve_input").val());
	  formData.append("clientRealName", $("#clientRealName_approve_input").val());
	  formData.append("clientGender", $("#idApproveModal input[name=clientGender]:checked").val());
	  formData.append("clientBirthDate", $("#clientBirthDate_approve_input").val());
	  formData.append("clientIdNumber", $("#clientIdNumber_approve_input").val());
	  formData.append("file", $("#clientIdImage_approve_input")[0].files[0]);
	  //alert($("#clientBirthDate_approve_input").val());
	  $.ajax({
		  url:"${APP_PATH}/addCertificateReview",
		  type:"POST",
		  data:formData,
		  cache: false,
	      processData: false,
	      contentType: false,
		  success:function(result){
			  alert("上传成功,请等待审核");
			  $("#idApproveModal").modal('hide');
			  AAA();
		  }
	  });
  });
  //点击上传驾驶证信息
  $("#driverLicense_approve_btn").click(function(){
	  var formData = new FormData();
	  formData.append("clientId", $("#clientId_approve_input").val());
	  formData.append("clientDriverLicenseNumber", $("#clientDriverLicenseNumber_approve_input").val());
	  formData.append("file", $("#clientDriverLicenseImage_approve_input")[0].files[0]);
	  $.ajax({
		  url:"${APP_PATH}/addDriverLicense",
		  type:"POST",
		  data:formData,
		  cache: false,
	      processData: false,
	      contentType: false,
		  success:function(result){
			  alert("上传成功,请等待审核");
			  $("#driverLicenseApproveModal").modal('hide');
			  AAA();
		  }
	  });
  });
  //用户充值
  $("#recharge").click(function(){
	  $("#clientBalance_recharge_input").attr("placeholder","当前账户余额为"+$("#clientBalance_update_input").val()+"元");
	  $("#rechargeForm")[0].reset();
	  //alert(1);
	  $("#clientRechargeModal").modal({
	  		backdrop:"static"
	  	 });
  });
  $("#recharge_btn").click(function(){
	  if($("#bankCode_recharge_input").val() == null || $("#bankCode_recharge_input").val() == ""){
		  alert("请输入银行卡号");
		  return false;
	  }
	  if($("#clientBalance_recharge_input").val() == null || $("#clientBalance_recharge_input").val() == ""){
		  alert("请输入充值金额");
		  return false;
	  }
      if($("#clientPassword_recharge_input").val() == null || $("#clientPassword_recharge_input").val() == ""){
		  alert("请输入支付密码");
		  return false;
	  }
	  var formData = new FormData();
		formData.append("clientId", $("#recharge_btn").attr("clientId"));
		formData.append("clientPassword", $("#clientPassword_recharge_input").val());
		formData.append("balance", $("#clientBalance_recharge_input").val());
		$.ajax({
			url:"${APP_PATH}/clientRecharge",
			type:"POST",
			data:formData,
			cache: false,
		    processData: false,
		    contentType: false,
			success:function(result){
				if(result.code == 100){
					alert("充值成功");
					$("#clientRechargeModal").modal('hide');
					clientFind();
				}else{
					alert("交易密码错误,请重新输入");
					$("#rechargeForm")[0].reset();
				}
			}
		});
		
  });
  
  //提现操作
  $("#withdraw").click(function(){
	  $("#clientBalance_withdraw_input").attr("placeholder","最多可提取"+$("#clientBalance_update_input").val()+"元");
	  $("#withdrawForm")[0].reset();
	  $("#clientWithdrawModal").modal({
	  		backdrop:"static"
	  	 });
  });
  $("#clientBalance_withdraw_input").change(function(){
	  var a = parseFloat($("#clientBalance_withdraw_input").val());
	  var b = parseFloat($("#clientBalance_update_input").val());
	  if(b<a){
		  alert("最多可提取"+$("#clientBalance_update_input").val()+"元,请重新输入");
		  $("#withdrawForm")[0].reset();
	  }
  });
  $("#withdraw_btn").click(function(){
  if($("#bankCode_withdraw_input").val() == null || $("#bankCode_withdraw_input").val() == ""){
	  alert("请输入银行卡号");
	  return false;
  }
  if($("#clientBalance_withdraw_input").val() == null || $("#clientBalance_withdraw_input").val() == ""){
	  alert("请输入提现金额");
	  return false;
  }
  if($("#clientPassword_withdraw_input").val() == null || $("#clientPassword_withdraw_input").val() == ""){
	  alert("请输入支付密码");
	  return false;
  }
  var formData = new FormData();
	formData.append("clientId", $("#withdraw_btn").attr("clientId"));
	formData.append("clientPassword", $("#clientPassword_withdraw_input").val());
	formData.append("balance", -$("#clientBalance_withdraw_input").val());
	$.ajax({
		url:"${APP_PATH}/clientRecharge",
		type:"POST",
		data:formData,
		cache: false,
	    processData: false,
	    contentType: false,
		success:function(result){
			if(result.code == 100){
				alert("成功提现到银行卡号"+$("#bankCode_withdraw_input").val());
				$("#clientWithdrawModal").modal('hide');
				clientFind();
			}
		}
	});
});
</script>
</div>
</body>
</html>