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
  #client_table tbody td{
    width: 100;
  }
</style>
</head>
<body>
<!-- 车具图片修改模态框 -->
	<div class="modal fade" id="clientPicUpdateModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" >车图片修改</h4>
				</div>
				<div class="modal-body">
					<table class="table table-hover">
					   <tr>
							   <td>头像</td>
							   <td><img id="altPic1"  height="50px" width="70px"></td>
							   <td>
							   <form enctype="multipart/form-data">
				                      <a class="btn btn-default"  role="button">
				                             更换图片<input type="file"  style="opacity: 0;display: inline-block; width: 50px" id="altInput1">
				                      </a>
								</form>
								<input type="submit" value="保存" id="imgSub1">
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
	                </table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				</div>
			</div>
		</div>
	</div>

<!-- 图片显示模态框 -->
	<div class="modal fade" id="picShow" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" >用户头像</h4>
				</div>
				<div class="modal-body">
					 <div class="form-group">
						<label class="col-sm-2 control-label"></label>
						<div class="col-sm-10">
							<img  src="" id="pic1" width="400px" height="300px">
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				</div>
			</div>
		</div>
	</div>

<!-- 用户修改模态框 -->
	<div class="modal fade" id="clientUpdateModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" >用户修改</h4>
				</div>
				<div class="modal-body">
					<form class="layui-form layui-form-pane" id="updateClientForm">
					   <div class="layui-form-item">
							<label class="layui-form-label">Id</label>
							<div class="layui-input-block">
								<input type="text" name="clientId"  readonly="readonly" 
									 autocomplete="off" class="layui-input" id="clientId_update_input">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">姓名</label>
							<div class="layui-input-block">
								<input type="text" name="clientRealName"  
									 autocomplete="off" class="layui-input" id="clientRealName_update_input">
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
									 autocomplete="off" class="layui-input" id="clientBirthDate_update_input">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">手机号</label>
							 <div class="layui-input-block">
							   <input type="text" name="clientPhoneNumber"  readonly="readonly" 
									 autocomplete="off" class="layui-input" id="clientPhoneNumber_update_input">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">用户名</label>
							<div class="layui-input-block">
								<input type="text" name="clientUsername"  readonly="readonly" 
									 autocomplete="off" class="layui-input" id="clientUsername_update_input">
							    <span style="font-size: 20px" id="clientUsername_span"></span>
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">密码</label>
							<div class="layui-input-block">
								<input type="text" name="clientPassword" 
									  autocomplete="off" class="layui-input" id="clientPassword_update_input">
							    <span style="font-size: 20px;color: red" id="clientUsername_span"></span>
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">邮箱</label>
							<div class="layui-input-block">
								<input type="text" name="clientEmail" 
									 autocomplete="off" class="layui-input" id="clientEmail_update_input">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">余额</label>
							<div class="layui-input-block">
								<input type="text" name="clientBalance" 
									  autocomplete="off" class="layui-input" id="clientBalance_update_input">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">身份证号</label>
							<div class="layui-input-block">
								<input type="text" name="clientIdNumber" 
									  autocomplete="off" class="layui-input" id="clientIdNumber_update_input">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">驾驶证号</label>
							<div class="layui-input-block">
								<input type="text" name="clientDriverLicenseNumber" 
									  autocomplete="off" class="layui-input" id="clientDriverLicenseNumber_update_input">
							</div>
						</div>
						<div class="layui-form-item">
							<label class="layui-form-label">用户状态</label>
							 <div class="layui-input-block">
							    <input type="radio" name="clientActivate" value="-1"  title="未激活" >
								<input type="radio" name="clientActivate" value="1" title="激活" >
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary" id="client_update_btn">保存</button>
				</div>
			</div>
		</div>
	</div>


<form class="layui-form layui-form-pane" id="Form">
         <div class="layui-input-inline">
			<label class="layui-form-label">Id</label>
			<div class="layui-input-block">
				<input type="text" name="clientId"  
					 autocomplete="off" class="layui-input" id="clientId_condition">
			</div>
		</div>
		<div class="layui-input-inline">
			<label class="layui-form-label">姓名</label>
			<div class="layui-input-block">
				<input type="text" name="clientRealName"  
					 autocomplete="off" class="layui-input" id="clientRealName_condition">
			</div>
		</div>
		<div class="layui-input-inline">
			<label class="layui-form-label">出生日期</label>
			 <div class="layui-input-block">
			   <input type="text" name="clientBirthDate"   
					 autocomplete="off" class="layui-input" id="clientBirthDate_condition">
			</div>
		</div>
		<div class="layui-input-inline">
			<label class="layui-form-label">手机号</label>
			 <div class="layui-input-block">
			   <input type="text" name="clientPhoneNumber"  
					 autocomplete="off" class="layui-input" id="clientPhoneNumber_condition">
			</div>
		</div>
		<div class="layui-input-inline">
			<label class="layui-form-label">用户名</label>
			<div class="layui-input-block">
				<input type="text" name="clientUsername"  
					 autocomplete="off" class="layui-input" id="clientUsername_condition">
			</div>
		</div>
		<div class="layui-input-inline">
			<label class="layui-form-label">密码</label>
			<div class="layui-input-block">
				<input type="text" name="clientPassword" 
					  autocomplete="off" class="layui-input" id="_condition">
			</div>
		</div>
		<div class="layui-input-inline">
			<label class="layui-form-label">邮箱</label>
			<div class="layui-input-block">
				<input type="text" name="clientEmail" 
					 autocomplete="off" class="layui-input" id="clientEmail_condition">
			</div>
		</div>
		<div class="layui-input-inline">
			<label class="layui-form-label">身份证号</label>
			<div class="layui-input-block">
				<input type="text" name="clientIdNumber" 
					  autocomplete="off" class="layui-input" id="clientIdNumber_condition">
			</div>
		</div>
		<div class="layui-input-inline">
			<label class="layui-form-label">驾驶证号</label>
			<div class="layui-input-block">
				<input type="text" name="clientDriverLicenseNumber" 
					  autocomplete="off" class="layui-input" id="clientDriverLicenseNumber_condition">
			</div>
		</div>
		<div class="layui-input-inline">
			<label class="layui-form-label">性别</label>
			 <div class="layui-input-block">
			    <input type="radio" name="clientGender" value="男"  title="男 ">
				<input type="radio" name="clientGender" value="女"  title="女" >
			</div>
		</div>
		<div class="layui-input-inline">
			<label class="layui-form-label">用户状态</label>
			 <div class="layui-input-block">
			    <input type="radio" name="clientActivate" value="-1"  title="未激活" >
				<input type="radio" name="clientActivate" value="1" title="激活" >
			</div>
		</div>
	</form>
     <div class="layui-form-item">
			<div class="layui-input-block">
			     <button type="reset" class="layui-btn layui-btn-primary" id="resetbtn">重置</button>
				<button class="layui-btn" lay-submit lay-filter="formDemo" id="findWithCondition">查找</button>
			</div>
	   </div>

 <!-- 搭建显示页面 -->
	<div class="container" style="width: 100%;">
		<!-- 按钮 -->
		<div class="row">
			<div class="col-md-4 col-md-offset-9">
				<button class="btn btn-danger" id="client_delete_all_btn"> 
					<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>删除
				</button>
			</div>
		</div>
		<!-- 显示表格数据 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="client_table" style="table-layout:fixed;word-break:break-all;">
					<thead>
						<tr>
						    <th>
						        <input type="checkbox" id="check_all">
						    </th>
							<th>#</th>
							<th>姓名</th>
							<th>性别</th>
							<th>出生日期</th>
							<th>手机号</th>
							<th>用户名</th>
							<th>密码</th>
							<th>邮箱</th>
							<th>账户余额</th>
							<th>身份证号</th>
							<th>驾驶证号</th>
							<th>证件车租用状态</th>
							<th>激活状态</th>
							<th>状态码</th>
							<th>头像</th>
							<th>操作</th>
						</tr>
					</thead>

					<tbody></tbody>

				</table>
			</div>
		</div>
		<!-- 显示分页信息 -->
		<div class="row">
			<!-- 分页文字信息 -->
			<div class="col-md-6" id="page_info_area"></div>
			<!-- 分页条信息 -->
			<div class="col-md-6" id="page_nav_area"></div>
		</div>
	</div>	   
<script type="text/javascript">
layui.use('form', function() {
	var form = layui.form;
	form.on('submit(formDemo)', function(data) {
		return false;
	});
	//为每个编辑绑定时间
	$(document).on("click",".edit_btn",function(){
		getClient($(this).attr("clientId"));
		//将员工id传给模态框的更新按钮,
		$("#client_update_btn").attr("clientId",$(this).attr("clientId"));
		//显示模态框
		$("#clientUpdateModal").modal({
			backdrop:"static"
		});
	});

	function getClient(id){
		$.ajax({
			url:"${APP_PATH}/findOneClient/"+id,
			type:"GET",
			success:function(result){
				var client = result.extend.client;
				$("#clientId_update_input").val(client.clientId );
				$("#clientRealName_update_input").val(client.clientRealName );
				$("#clientUpdateModal input[name=clientGender]").val([client.clientGender] );
				$("#clientBirthDate_update_input").val(client.clientBirthDate );
				$("#clientPhoneNumber_update_input").val(client.clientPhoneNumber );
				$("#clientUsername_update_input").val(client.clientUsername );
				$("#clientPassword_update_input").val(client.clientPassword );
				$("#clientEmail_update_input").val(client.clientEmail );
				$("#clientBalance_update_input").val(client.clientBalance );
				$("#clientIdNumber_update_input").val(client.clientIdNumber );
				$("#clientDriverLicenseNumber_update_input").val(client.clientDriverLicenseNumber );
				$("#clientUpdateModal input[name=clientActivate]").val([client.clientActivate] );
				form.render();
			}
		});
	}
});
  layui.use('laydate', function(){
	  var laydate = layui.laydate;
	  
	  //执行一个laydate实例
	  laydate.render({
	    elem: '#clientBirthDate_condition' //指定元素 clientBirthDate_update_input
	    ,format: 'yyyy-MM-dd'
	  });
});
  layui.use('laydate', function(){
	  var laydate = layui.laydate;
	  
	  //执行一个laydate实例
	  laydate.render({
	    elem: '#clientBirthDate_update_input' //指定元素 
	    ,format: 'yyyy-MM-dd'
	  });
});
  
  $("#findWithCondition").click(function(){
		to_page(1);
	});
  $("#resetbtn").click(function(){
	   $("#Form")[0].reset();
	  layui.form.render();
	});
  function to_page(pn) {
		$.ajax({
			url : "${APP_PATH}/selectClientByConditions/"+pn,
			data : $("#Form").serialize(),
			type : "POST",
			success : function(result) {
				//1.解析并显示员工数据
				build_emps_table(result);
				//2.解析并显示分页信息
				build_page_info(result);
				//3.解析显示分页条数据
				build_page_nav(result);
				
				$("#check_all").prop("checked",false);
			}
		});
  }
  
//1.解析并显示员工数据 
	function build_emps_table(result) {
		$("#client_table tbody").empty();
		var clients = result.extend.pageInfo.list;
		$.each(clients, function(index, item) {
			var checkboxTd = $("<td><input type='checkbox' class='check_item'/></td>");
			var clientIdTd = $("<td></td>").append(item.clientId);
			var clientRealNameTd = $("<td></td>").append(item.clientRealName);
			var clientGenderTd = $("<td></td>").append(item.clientGender);
			var clientBirthDateTd = $("<td></td>").append(item.clientBirthDate);
			var clientPhoneNumberTd = $("<td></td>").append(item.clientPhoneNumber);
			var clientUsernameTd = $("<td></td>").append(item.clientUsername);
			var clientPasswordTd = $("<td></td>").append(item.clientPassword);
			var clientEmailTd = $("<td></td>").append(item.clientEmail);
			var clientBalanceTd = $("<td></td>").append(item.clientBalance);
			var clientIdNumberTd = $("<td></td>").append(item.clientIdNumber);
			var clientDriverLicenseNumberTd = $("<td></td>").append(item.clientDriverLicenseNumber);
			var clientCarRentalStateTd = $("<td></td>").append(item.clientCarRentalState);
			var clientActivateTd = $("<td></td>").append(item.clientActivate);
			var clientActivateCodeTd = $("<td></td>").append(item.clientActivateCode);
			var clientHeadPortraitTd = $("<td></td>").append(item.clientHeadPortrait);
			
			var imageButton = $("<button></button>").addClass("btn btn-primary btn-sm btn-info pic_btn")
			.append($("<span></span>").addClass("glyphicon glyphicon-search")).append("查看");
			imageButton.attr("clientId",item.clientId); 
			var imageAltButton = $("<button></button>").addClass("btn btn-warning btn-sm pic_alt_btn")
			.append($("<span></span>").addClass("glyphicon glyphicon-cog")).append("修改");
			imageAltButton.attr("clientId",item.clientId); 
			var vehicleImagesTd = $("<td></td>").append(imageButton).append(" ").append(imageAltButton);
			
			var editButton = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
			.append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");
			editButton.attr("clientId",item.clientId); 
			var deleteButton = $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
			.append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
			deleteButton.attr("delClientId",item.clientId);
			var btnTd = $("<td></td>").append(editButton).append(" ").append(deleteButton);
			$("<tr></tr>").append(checkboxTd)
					  	  .append(clientIdTd)
						  .append(clientRealNameTd)
						  .append(clientGenderTd)
						  .append(clientBirthDateTd)
						  .append(clientPhoneNumberTd)
						  .append(clientUsernameTd)
						  .append(clientPasswordTd)
						  .append(clientEmailTd)
						  .append(clientBalanceTd)
						  .append(clientIdNumberTd)
						  .append(clientDriverLicenseNumberTd)
						  .append(clientCarRentalStateTd)
						  .append(clientActivateTd)
						  .append(clientActivateCodeTd)
						  .append(vehicleImagesTd)
						  .append(btnTd)
						  .appendTo("#client_table tbody");
		});
	}

	//2.解析并显示分页信息
	function build_page_info(result) {
		$("#page_info_area").empty();
		$("#page_info_area").append("当前第" 
				        + result.extend.pageInfo.pageNum + "页,总"
						+ result.extend.pageInfo.pages + "页,总"
						+ result.extend.pageInfo.total + "条记录");
		empTotal = result.extend.pageInfo.total;
		currentPage = result.extend.pageInfo.pageNum;
	}

	//3.解析显示分页条数据
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
				to_page(1);
			});
			prePageLi.click(function() {
				to_page(result.extend.pageInfo.pageNum - 1);
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
				to_page(result.extend.pageInfo.pageNum + 1);
			});
			lastPageLi.click(function() {
				to_page(result.extend.pageInfo.pages);
			});
		}
		ul.append(firstPageLi).append(prePageLi);
		$.each(result.extend.pageInfo.navigatepageNums, function(index,item) {
			var numLi = $("<li></li>").append($("<a></a>").append(item));
			if (result.extend.pageInfo.pageNum == item) {
				numLi.addClass("active");
			}
			numLi.click(function() {
				to_page(item);
			});
			ul.append(numLi);
		});
		ul.append(nextPageLi).append(lastPageLi);
		var nav = $("<nav></nav>").append(ul);
		nav.appendTo("#page_nav_area");
	}

	//为每个编辑绑定时间
	$(document).on("click",".edit_btn",function(){
		getClient($(this).attr("clientId"));
		//将员工id传给模态框的更新按钮,
		$("#client_update_btn").attr("clientId",$(this).attr("clientId"));
		//显示模态框
		$("#clientUpdateModal").modal({
			backdrop:"static"
		});
	});

	function getClient(id){
		$.ajax({
			url:"${APP_PATH}/findOneClient/"+id,
			type:"GET",
			success:function(result){
				var client = result.extend.client;
				$("#clientId_update_input").val(client.clientId );
				$("#clientRealName_update_input").val(client.clientRealName );
				$("#clientUpdateModal input[name=clientGender]").val([client.clientGender] );
				$("#clientBirthDate_update_input").val(client.clientBirthDate );
				$("#clientPhoneNumber_update_input").val(client.clientPhoneNumber );
				$("#clientUsername_update_input").val(client.clientUsername );
				$("#clientPassword_update_input").val(client.clientPassword );
				$("#clientEmail_update_input").val(client.clientEmail );
				$("#clientBalance_update_input").val(client.clientBalance );
				$("#clientIdNumber_update_input").val(client.clientIdNumber );
				$("#clientDriverLicenseNumber_update_input").val(client.clientDriverLicenseNumber );
				$("#clientUpdateModal input[name=clientActivate]").val([client.clientActivate] );
			}
		});
	}

	//用户数据更新
	$("#client_update_btn").click(function(){
		//alert($("#updateClientForm").serialize());
		$.ajax({
			url:"${APP_PATH}/updateClient",
			type:"POST",
			data:$("#updateClientForm").serialize(),
			success:function(result){
				alert(result.msg);
				$("#clientUpdateModal").modal('hide');
				to_page(currentPage);
			}
		});
	});

	//全选 全不选
	$("#check_all").click(function(){
		//prop修改和读取原生属性的值，attr获取自定义属性的值
		$(".check_item").prop("checked",$(this).prop("checked"));
	});
	//check_item
	$(document).on("click",".check_item",function(){
		var flag = $(".check_item:checked").length == $(".check_item").length;
		$("#check_all").prop("checked",flag);
	});

	//为每个删除绑定时间
	$(document).on("click",".delete_btn",function(){
		var clientName = $(this).parents("tr").find("td:eq(2)").text();
		if(confirm("确定要删除"+clientName+"吗")){
			$.ajax({
				url:"${APP_PATH}/delClient",
				type:"POST",
				data:{"clientId":$(this).attr("delClientId")},
				success:function(result){
					alert(result.msg);
					to_page(currentPage);
				}
			});
		}
	});
	$("#client_delete_all_btn").click(function(){
		var clientIds = "";
		var clientNames = "";
		$.each($(".check_item:checked"),function(){
			clientIds += $(this).parents("tr").find("td:eq(1)").text()+"-";
			clientNames += $(this).parents("tr").find("td:eq(2)").text()+",";
		});
		clientNmaes = clientNames.substring(0,clientNames.length-1);
		if(confirm("确定要删除"+clientNmaes+"吗")){
			$.ajax({
				url:"${APP_PATH}/delClient",
				type:"POST",
				data:{"clientId":clientIds},
				success:function(result){
					alert(result.msg);
					to_page(currentPage);
				}
			});
		}
	});
	//为每个查看按钮绑定时间
	$(document).on("click",".pic_btn",function(){
		$("#picShow").modal({
			backdrop : "static"
		});
		$.ajax({
			url:"${APP_PATH}/findOneClient/"+$(this).attr("clientId"),
			type:"GET",
			success:function(result){
				var client = result.extend.client;
				$("#pic1").prop("src","/imgPath/"+client.clientHeadPortrait);
			}
		});
	});

	//点击更改图片
	$(document).on("click",".pic_alt_btn",function(){
		$.ajax({
			url:"${APP_PATH}/findOneClient/"+$(this).attr("clientId"),
			type:"GET",
			success:function(result){
				var client = result.extend.client;
				$("#altPic1").prop("src","/imgPath/"+client.clientHeadPortrait);
				$("#altbtn1").prop("value",client.clientId);
				$("#imgSub1").attr("clientId",client.clientId);
			}
		});
		$("#clientPicUpdateModal").modal({
			backdrop : "static"
		});
	});

	function getPicAgain(ele){
		$.ajax({
			url:"${APP_PATH}/findOneClient/"+$(ele).attr("clientId"),
			type:"GET",
			success:function(result){
				var client = result.extend.client;
				$("#altPic1").prop("src","/imgPath/"+client.clientHeadPortrait);
			}
		});
	}

	$("#imgSub1").click(function(){
		if($("#altInput1").get(0).files[0]){
			var formData = new FormData();
			formData.append("clientId", $(this).attr("clientId"));
			formData.append("file", $("#altInput1")[0].files[0]);
			$.ajax({
				url:"${APP_PATH}/altHeadPortrait",
				type:"POST",
				data:formData,
				cache: false,
			    processData: false,
			    contentType: false,
				success:function(result){
					alert("保存成功");
					getPicAgain("#imgSub1");
				}
			});
			}else{
				alert("图片为空，请选择图片");
			}
	});

</script>
</body>
</html>