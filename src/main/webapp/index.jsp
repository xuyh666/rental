<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<!-- 员工修改模态框 -->
	<div class="modal fade" id="empUpdateModal" tabindex="-1" role="dialog"
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
					<form class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-2 control-label">empName</label>
							<div class="col-sm-10">
								<p class="form-control-static" id="empName_update_input"></p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">email</label>
							<div class="col-sm-10">
								<input type="text" name="email" class="form-control" id="email_update_input"
									placeholder="email@qq.com">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">gender</label>
							<div class="col-sm-10">
								<label class="radio-inline"> 
								    <input type="radio" name="gender1" id="gender1_update_input" value="M" checked="checked">男
								</label> 
								<label class="radio-inline"> 
								    <input type="radio" name="gender1" id="gender2_update_input" value="F">女
								</label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">deptName</label>
							<div class="col-sm-4">
								<select class="form-control" name="dId" id="dept_update_select">
								</select>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary" id="emp_update_btn">保存</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 员工添加模态框 -->
	<div class="modal fade" id="empAddModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">员工添加</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-2 control-label">empName</label>
							<div class="col-sm-10">
								<input type="text" name="empName" class="form-control" id="empName_add_input"
									placeholder="empName">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">email</label>
							<div class="col-sm-10">
								<input type="text" name="email" class="form-control" id="email_add_input"
									placeholder="email@qq.com">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">gender</label>
							<div class="col-sm-10">
								<label class="radio-inline"> 
								    <input type="radio" name="gender" id="gender1_add_input" value="M" checked="checked">男
								</label> 
								<label class="radio-inline"> 
								    <input type="radio" name="gender" id="gender2_add_input" value="F">女
								</label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">deptName</label>
							<div class="col-sm-4">
								<select class="form-control" name="dId" id="dept_add_select">
								</select>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary" id="emp_save_btn">添加</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 搭建显示页面 -->
	<div class="container">
		<!-- 标题 -->
		<div class="row">
			<div class="col-md-12">
				<h1>SSM-CRUD</h1>
			</div>
		</div>
		<!-- 按钮 -->
		<div class="row">
			<div class="col-md-4 col-md-offset-9">
				<button class="btn btn-primary" id="emp_add_modal_btn">
					<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>新增
				</button>
				<button class="btn btn-danger" id="emp_delete_all_btn"> 
					<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>删除
				</button>
			</div>
		</div>
		<!-- 显示表格数据 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="emp_table">
					<thead>
						<tr>
						    <th>
						        <input type="checkbox" id="check_all">
						    </th>
							<th>#</th>
							<th>empName</th>
							<th>gender</th>
							<th>email</th>
							<th>deptName</th>
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
	
		$(function() {
			to_page(1);
		});

		function to_page(pn) {
			$.ajax({
				url : "${APP_PATH}/emps",
				data : "pn=" + pn,
				type : "GET",
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
			$("#emp_table tbody").empty();
			var emps = result.extend.pageInfo.list;
			$.each(emps, function(index, item) {
				var checkboxTd = $("<td><input type='checkbox' class='check_item'/></td>");
				var empIdTd = $("<td></td>").append(item.empId);
				var empNameTd = $("<td></td>").append(item.empName);
				var genderTd = $("<td></td>").append(item.gender == 'M' ? "男" : "女");
				var emailTd = $("<td></td>").append(item.email);
				var deptNameTd = $("<td></td>").append(item.department.deptName);
				var editButton = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
				.append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");
				editButton.attr("empID",item.empId); 
				var deleteButton = $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
				.append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
				deleteButton.attr("delEmpId",item.empId);
				var btnTd = $("<td></td>").append(editButton).append(" ").append(deleteButton);
				$("<tr></tr>").append(checkboxTd)
						  	  .append(empIdTd)
							  .append(empNameTd)
							  .append(genderTd)
							  .append(emailTd)
							  .append(deptNameTd)
							  .append(btnTd)
							  .appendTo("#emp_table tbody");
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
		
		//清空表单样式及内容
		function reset_form(ele){
			$(ele)[0].reset();
			//清空表单样式
			$(ele).find("*").removeClass("has-error has-success");
			$(ele).find(".help-block").text("");
		}

		//点击新增按钮，弹出模态框
		$("#emp_add_modal_btn").click(function() {
			//清空表单样式及内容
	    	reset_form("#empAddModal form");
			//发送ajax请求，查出部门信息，显示在下拉列表中
			getDepts("#dept_add_select");
			//弹出模态框
			$("#empAddModal").modal({
				backdrop : "static"
			});
		});
		
		//查出所有部门信息并显示在下拉列表中
		function getDepts(ele){
			//清空表内数据
			$(ele).empty();
			$.ajax({
               url:"${APP_PATH}/depts",
               type:"GET",
               success:function(result){
            	   //console.log(result);
            	   $.each(result.extend.depts,function(){
            		   var deptOption = $("<option></option>").append(this.deptName).attr("value",this.deptId);
            		   deptOption.appendTo(ele);
            	   });
               }
			});
		}
		
		//校验表单数据
		function vilidate_add_form(){
			//验证员工姓名
			var empName = $("#empName_add_input").val();
			var regName = /(^[a-zA-Z0-9_-]{6,16}$)|(^[\u2E80-\u9FFF]{2,5})/;
			if(!regName.test(empName)){
				//alert("用户名可以是6到16位数字和字母的组合，也可以是2到5位数字");
				//$("#empName_add_input").parent().addClass("has-error");
				//$("#empName_add_input").next("span").text("用户名可以是6到16位数字和字母的组合，也可以是2到5位数字");
				show_validate_msg("#empName_add_input","error","用户名可以是6到16位数字和字母的组合，也可以是2到5位数字");
				return false;
			}else{
				//$("#empName_add_input").parent().addClass("has-success");
				//$("#empName_add_input").next("span").text("");
				show_validate_msg("#empName_add_input","success","");
			};
			
			//验证邮箱"邮箱格式错误"
			var email = $("#email_add_input").val();
			var regEmail = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
			if(!regEmail.test(email)){ 
				//alert("邮箱格式错误");
				//$("#email_add_input").parent().addClass("has-error");
				//$("#email_add_input").next("span").text("邮箱格式错误");
				show_validate_msg("#email_add_input","error","邮箱格式错误");
				return false;
			}else{
				//$("#email_add_input").parent().addClass("has-success");
				//$("#email_add_input").next("span").text("");
				show_validate_msg("#email_add_input","success","");
			};
			return true;
		}
		
        //清楚当前元素的校验状态
		function show_validate_msg(element,status,msg){
        	//去除之前样式
        	$(element).parent().removeClass("has-success has-error");
        	$(element).next("span").text("");
			if("success" == status){
				$(element).parent().addClass("has-success");
				$(element).next("span").text(msg);
			}else if("error" == status){
				$(element).parent().addClass("has-error");
				$(element).next("span").text(msg);
			}
		}

		//检验用户名是否存在
        $("#empName_add_input").change(function(){
        	var value = this.value;
        	//发送ajax请求
        	$.ajax({
        		url:"${APP_PATH}/checkUserName",
        		data:"empName="+value,
        		type:"POST",
        		success:function(result){
        			if(result.code == 100){
        				show_validate_msg("#empName_add_input","success","用户名可用");
        				$("#emp_save_btn").attr("ajax-chg","success");
        			}else{
        				show_validate_msg("#empName_add_input","error",result.extend.va_msg);
        				$("#emp_save_btn").attr("ajax-chg","fail");
        			}
        		}
        	});
        });
		
		
		//点击新增按钮,新增员工
		$("#emp_save_btn").click(function(){
			   //先对提交服务器的数据进行校验
			   if(!vilidate_add_form()){
				   return false;
			   };
			   //判断用户名是否重复
			   if($(this).attr("ajax-chg") == "fail"){
				   return false;
			   }
			   //提交数据
			   $.ajax({
				   url:"${APP_PATH}/emp",
				   type:"POST",
				   data:$("#empAddModal form").serialize(),
				   success:function(result){
					   if(result.code == 100){
						   //提示新增成功
						   alert(result.msg);
						   //隐藏模态框
						   $("#empAddModal").modal('hide');
						   //跳到最后一页
						   to_page(empTotal);
					   }else{
						   if(undefined != result.extend.errorFields.email){
							  show_validate_msg("#empName_add_input","error",result.extend.errorFields.email);
						   }
						   if(undefined != result.extend.errorFields.empName){
							  show_validate_msg("#empName_add_input","error",result.extend.errorFields.empName);
						   }
					   }
				   }
			   });
		   }		
		);
		//为每个编辑绑定时间
		$(document).on("click",".edit_btn",function(){
			//查询部门信息
			getDepts("#dept_update_select");
			//通过id获得个人信息
			getEmp($(this).attr("empID")); 
			//将员工id传给模态框的更新按钮,
			$("#emp_update_btn").attr("empID",$(this).attr("empID"));
			//显示模态框
			$("#empUpdateModal").modal({
				backdrop:"static"
			});
		});
		
		//删除一个员工
		$(document).on("click",".delete_btn",function(){
			var empName = $(this).parents("tr").find("td:eq(2)").text();
			if(confirm("确定删除"+empName+"吗?")){
				$.ajax({
					url:"${APP_PATH}/emp/"+$(this).attr("delEmpId"),
					type:"DELETE",
					success:function(result){
						alert(result.msg);
						to_page(currentPage);
					}
				});
			}
		});
		
		//通过部门获取个人信息
		function getEmp(id){
			$.ajax({
				url:"${APP_PATH}/emp/"+id,
				type:"GET",
				success:function(result){
					//console.log(result);
					var empData = result.extend.employee;
					$("#empName_update_input").text(empData.empName);
					$("#email_update_input").val(empData.email);
					$("#empUpdateModal input[name=gender1]").val([empData.gender]);
					$("#empUpdateModal select").val([empData.dId]);
				}
			});
		}
		
		//点击更新，更新员工信息
		$("#emp_update_btn").click(function(){
			//1.验证邮箱"邮箱格式错误"
			var email = $("#email_update_input").val();
			var regEmail = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
			if(!regEmail.test(email)){ 
				show_validate_msg("#email_update_input","error","邮箱格式错误");
				return false;
			}else{
				show_validate_msg("#email_update_input","success","");
			};
			
			//2.发送ajax请求保存更新的员工数据
			/* 
			    url:"${APP_PATH}/emp/"+$(this).attr("empID"),
				data:$("#empUpdateModal form").serialize()+"&_method=PUT",
				type:"POST",
			*/
			$.ajax({
				url:"${APP_PATH}/emp/"+$(this).attr("empID"),
				data:$("#empUpdateModal form").serialize(),
				type:"PUT",
				success:function(result){
					//alert(result.msg);
					//关闭模态框
					$("#empUpdateModal").modal("hide");
					//回到本页面
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
		
		//批量删除.parents("tr").find("td:eq(1)").text();
		$("#emp_delete_all_btn").click(function(){
			var empNames = "";
			var empId = "";
			$.each($(".check_item:checked"),function(){
				empNames += $(this).parents("tr").find("td:eq(2)").text() + ",";
				empId += $(this).parents("tr").find("td:eq(1)").text() + "-";
			});
			empNames = empNames.substring(0,empNames.length-1);
			if(confirm("确定删除"+empNames+"吗?")){
				$.ajax({
					url:"${APP_PATH}/emp/"+empId,
					type:"DELETE",
					success:function(result){
						to_page(currentPage);
					}
				});
			}
		});
	</script>
</body>
</html>