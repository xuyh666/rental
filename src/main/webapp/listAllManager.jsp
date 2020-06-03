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
</head>
<body>
<!-- 员工修改模态框 -->
	<div class="modal fade" id="adminUpdateModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" >员工修改</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" enctype="multipart/form-data">
					    <div class="form-group">
							<label class="col-sm-2 control-label">adminId</label>
							<div class="col-sm-10">
								<p class="form-control-static" id="adminId_update_input"></p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Username</label>
							<div class="col-sm-10">
								<p class="form-control-static" id="adminUsername_update_input"></p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Password</label>
							<div class="col-sm-10">
								<input type="text" name="adminPassword" class="form-control" id="adminPassword_update_input"
									placeholder="请输入密码">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Gender</label>
							<div class="col-sm-10">
								<label class="radio-inline"> 
								    <input type="radio" name="adminGender"  value="男" checked="checked">男
								</label> 
								<label class="radio-inline"> 
								    <input type="radio" name="adminGender"  value="女">女
								</label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">Phonenumber</label>
							<div class="col-sm-10">
								<input type="text" name="adminPhonenumber" class="form-control" id="adminPhonenumber_update_input">
								<span class="help-block"></span>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary" id="admin_update_btn">保存</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 搭建显示页面 -->
	<div class="container">
		<!-- 标题 -->
		<div class="row">
			<div class="col-md-12">
				<h1>管理员操作</h1>
			</div>
		</div>
		<!-- 按钮 -->
		<div class="row">
			<div class="col-md-4 col-md-offset-9">
				<button class="btn btn-danger" id="admin_delete_all_btn"> 
					<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>批量删除
				</button>
			</div>
		</div>
		<!-- 显示表格数据 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="admin_table">
					<thead>
						<tr>
						    <th>
						        <input type="checkbox" id="check_all">
						    </th>
							<th>#</th>
							<th>adminUsername</th>
							<th>adminPassword</th>
							<th>adminGender</th>
							<th>adminPhonenumber</th>
							<th>adminLevel</th>
							<th>adminHeadportrait</th>
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
	
	 //全局总记录数
	 var empTotal,currentPage;
	
     $(function(){
    	 to_page(1);
     });  
	
	  function to_page(pn){
		  $.ajax({
			  url : "${APP_PATH}/getAllManagers",
			  type : "GET",
			  data : "pn="+pn,
			  success : function(result){
				  //1.解析并显示员工数据 
				  build_admin_table(result);
				  //2.解析并显示分页信息
				  build_page_info(result);
				  //3.解析显示分页条数据
				  build_page_nav(result);
			  }
		  });
	  }
	    //1.解析并显示员工数据 
		function build_admin_table(result) {
			$("#admin_table tbody").empty();
			var admins = result.extend.pageInfo.list;
			$.each(admins, function(index, item) {
				var checkboxTd = $("<td><input type='checkbox' class='check_item'/></td>");
				var adminIdTd = $("<td></td>").append(item.adminId);
				var adminUsernameTd = $("<td></td>").append(item.adminUsername);
				var adminPasswordTd = $("<td></td>").append(item.adminPassword);
				var adminGenderTd = $("<td></td>").append(item.adminGender);
				var adminPhonenumberTd = $("<td></td>").append(item.adminPhonenumber);
				var adminLevelTd = $("<td></td>").append(item.adminLevel);
				var adminHeadportraitTd = $("<td></td>").append(item.adminHeadportrait);
				var editButton = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
				.append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");
				editButton.attr("adminID",item.adminId); 
				var deleteButton = $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
				.append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
				deleteButton.attr("delAdminId",item.adminId);
				var btnTd = $("<td></td>").append(editButton).append(" ").append(deleteButton);
				$("<tr></tr>").append(checkboxTd)
						  	  .append(adminIdTd)
							  .append(adminUsernameTd)
							  .append(adminPasswordTd)
							  .append(adminGenderTd)
							  .append(adminPhonenumberTd)
							  .append(adminLevelTd)
							  .append(adminHeadportraitTd)
							  .append(btnTd)
							  .appendTo("#admin_table tbody");
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
			//通过id获得个人信息
			getAdmin($(this).attr("adminID")); 
			//将员工id传给模态框的更新按钮,
			$("#admin_update_btn").attr("adminID",$(this).attr("adminID"));
			//显示模态框
			 $("#adminUpdateModal").modal({
				backdrop:"static"
			}); 
		});
		
		//通过id获得个人信息
		function getAdmin(id){
			$.ajax({
				url :"${APP_PATH}/getAdminById/"+id,
				type :"GET",
				success :function(result){
					var adminData = result.extend.admin;
					$("#adminId_update_input").text(adminData.adminId);
					$("#adminUsername_update_input").text(adminData.adminUsername);
					$("#adminPassword_update_input").val(adminData.adminPassword);
					$("#adminUpdateModal input[name=adminGender]").val([adminData.adminGender]);
					$("#adminPhonenumber_update_input").val(adminData.adminPhonenumber);
					$("#adminLevel_update_input").val(adminData.adminLevel);
				}
			});
		}
		
		//点击保存按钮将修改的信息保存
		$("#admin_update_btn").click(function(){
			$.ajax({
				url :"${APP_PATH}/updateAdmin/"+$(this).attr("adminID"),
				type :"PUT",
				data:$("#adminUpdateModal form").serialize(),
				success :function(result){
					if(result.code == 100){
						//提示
						alert("修改成功");
						//隐藏模态框
						$("#adminUpdateModal").modal("hide");
						//返回到当前页
						to_page(currentPage);
					}
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
		
		//删除一个管理员
		$(document).on("click",".delete_btn",function(){
			var adminName = $(this).parents("tr").find("td:eq(2)").text();
			if(confirm("确定删除"+adminName+"吗?")){
				$.ajax({
					url:"${APP_PATH}/delAdminByPrimaryKey/"+$(this).attr("delAdminId"),
					type:"DELETE",
					success:function(result){
						alert(result.msg);
						to_page(currentPage);
					}
				});
			}
		});
		//删除多个管理员
		$("#admin_delete_all_btn").click(function(){
			var adminId = "";
			var adminUsernames = "";
			$.each($(".check_item:checked"),function(){
				adminUsernames += $(this).parents("tr").find("td:eq(2)").text() + ",";
				adminId += $(this).parents("tr").find("td:eq(1)").text() + "-";
			});
			adminUsernames = adminUsernames.substring(0,adminUsernames.length-1);
			if(confirm("确定删除"+adminUsernames+"吗?")){
				$.ajax({
					url:"${APP_PATH}/delAdminByPrimaryKey/"+adminId,
					type:"DELETE",
					success :function(result){
						alert(result.msg);
						to_page(currentPage);
					}
				});
			}
		});
	</script>
</body>
</html>