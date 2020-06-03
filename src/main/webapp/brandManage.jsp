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

<!-- 类型修改模态框 -->
	<div class="modal fade" id="brandUpdateModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">车品牌修改</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-2 control-label">车品牌</label>
							<div class="col-sm-10">
								<input type="text" name="vehicleBrand" class="form-control" id="brand_update_input">
								<span class="help-block"></span>
							</div>
						</div>
					</form>
				</div>	
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary" id="brand_update_btn">更新</button>
				</div>
			</div>
		</div>
	</div>

<!-- 品牌添加模态框 -->
	<div class="modal fade" id="brandAddModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">车品牌添加</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<div class="form-group">
							<label class="col-sm-2 control-label">车品牌</label>
							<div class="col-sm-10">
								<input type="text" name="vehicleBrand" class="form-control" id="brand_add_input"  placeholder="请输入新的品牌">
								<span class="help-block"></span>
							</div>
						</div>
					</form>
				</div>	
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary" id="brand_save_btn">添加</button>
				</div>
			</div>
		</div>
	</div>

<!-- 搭建显示页面 -->
	<div class="container">
		<!-- 标题 -->
		<div class="row">
			<div class="col-md-12">
				<h1>车品牌管理</h1>
			</div>
		</div>
		<!-- 按钮 -->
		<div class="row">
			<div class="col-md-4 col-md-offset-9">
				<button class="btn btn-primary" id="brand_add_modal_btn">
					<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>新增
				</button>
				<button class="btn btn-danger" id="brand_delete_all_btn"> 
					<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>删除
				</button>
			</div>
		</div>
		<!-- 显示表格数据 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="brand_table">
					<thead>
						<tr>
						    <th>
						        <input type="checkbox" id="check_all">
						    </th>
							<th>#</th>
							<th>品牌</th>
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

	//到第pn页
	function to_page(pn) {
		$.ajax({
			url : "${APP_PATH}/getAllBrand",
			data : "pn=" + pn,
			type : "GET",
			success : function(result) {
				//1.解析并显示员工数据
				build_brand_table(result);
				//2.解析并显示分页信息
				build_page_info(result);
				//3.解析显示分页条数据
				build_page_nav(result);
				
				$("#check_all").prop("checked",false);
			}
		});
	}
	
	//1.解析并显示类型数据 
	function build_brand_table(result) {
		$("#brand_table tbody").empty();
		var brands = result.extend.pageInfo.list;
		$.each(brands, function(index, item) {
			var checkboxTd = $("<td><input type='checkbox' class='check_item'/></td>");
			var brandIdTd = $("<td></td>").append(item.vehicleBrandNumber);
			var brandTd = $("<td></td>").append(item.vehicleBrand);
			var editButton = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
			.append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");
			editButton.attr("brandID",item.vehicleBrandNumber); 
			var deleteButton = $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
			.append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
			deleteButton.attr("brandID",item.vehicleBrandNumber); 
			var btnTd = $("<td></td>").append(editButton).append(" ").append(deleteButton);
			$("<tr></tr>").append(checkboxTd)
					  	  .append(brandIdTd)
						  .append(brandTd)
						  .append(btnTd)
						  .appendTo("#brand_table tbody");
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
	
	// 点击添加按钮，弹出新增模态框
	$("#brand_add_modal_btn").click(function(){
		//清空表单样式及内容
    	reset_form("#brandAddModal form");
		//弹出模态框
		$("#brandAddModal").modal({
			backdrop:"static"
		});
	});
	
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
	$("#brand_add_input").change(function(){
		var value = this.value;
		$.ajax({
			url:"${APP_PATH}/checkBrand",
			type:"POST",
			data:{
				vehicleBrand:value
			},
			success:function(result){
				if(result.code == 100){
					show_validate_msg("#brand_add_input","success","品牌名可用")
					$("#brand_save_btn").attr("ajax-chg","success");
				}else{
					show_validate_msg("#brand_add_input","error",result.extend.va_msg);
    				$("#brand_save_btn").attr("ajax-chg","fail");
				}
			}
		});
	});
	
	//点击保存按钮新增类名
	$("#brand_save_btn").click(function(){
		//先校验是否重复
		if($(this).attr("ajax-chg")=="fail"){
			return false;
		}
		//保存
		$.ajax({
			url:"${APP_PATH}/saveBrand",
			type:"POST",
			data:$("#brandAddModal form").serialize(),
			success:function(result){
				if(result.code == 100){
					alert("添加成功");
					 //隐藏模态框
					$("#brandAddModal").modal('hide');
					//跳转到最后一页
					to_page(empTotal);
				}
			}
		}); 
	});
	
	//为每个编辑绑定
	$(document).on("click",".edit_btn",function(){
		//通过id获得信息
		getBrand($(this).attr("brandID")); 
		//将id传给模态框的更新按钮,
		$("#brand_update_btn").attr("brandID",$(this).attr("brandID"));
		//删除之前样式
		reset_form("#brandUpdateModal form");
		//显示模态框
		$("#brandUpdateModal").modal({
			backdrop:"static"
		});
	});
	//通过id获取信息
	function getBrand(id){
		$.ajax({
			url:"${APP_PATH}/getOneBrand/"+id,
			type:"GET",
			success:function(result){
				var vehicleBrandData = result.extend.vehicleBrand;
				$("#brand_update_input").val(vehicleBrandData.vehicleBrand); 
			}
		});
	}
	//点击更新按钮更新数据
	$("#brand_update_btn").click(function(){
		$.ajax({
			url:"${APP_PATH}/checkBrand",
			type:"POST",
			data:{
				vehicleBrand:$("#brand_update_input").val()
			},
			success:function(result){
				if(result.code == 100){
					show_validate_msg("#brand_update_input","success","品牌名可用")
					$("#brand_save_btn").attr("ajax-chg","success");
					$.ajax({
						async : false,
						url:"${APP_PATH}/updateBrand/"+$("#brand_update_btn").attr("brandID"),
						type:"PUT",
						data:$("#brandUpdateModal form").serialize(),
						success:function(result){
							//提示成功
							alert("修改成功");
							//隐藏模态框
							$("#brandUpdateModal").modal('hide');
							//跳转到当前页
							to_page(currentPage);
						}
					});
				}else{
					show_validate_msg("#brand_update_input","error",result.extend.va_msg);
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
		var vehicleBrand = $(this).parents("tr").find("td:eq(2)").text();
		if(confirm("确定删除"+vehicleBrand+"吗?")){
			$.ajax({
				url:"${APP_PATH}/deleteBrand/"+$(this).attr("brandID"),
				type:"DELETE",
				success:function(result){
					alert(result.msg);
					to_page(currentPage);
				}
			});
		}
	});
	//删除多个管理员
	$("#brand_delete_all_btn").click(function(){
		var vehicleBrandNumber = "";
		var vehicleBrand = "";
		$.each($(".check_item:checked"),function(){
			vehicleBrand += $(this).parents("tr").find("td:eq(2)").text() + ",";
			vehicleBrandNumber += $(this).parents("tr").find("td:eq(1)").text() + "-";
		});
		vehicleBrand = vehicleBrand.substring(0,vehicleBrand.length-1);
		if(confirm("确定删除"+vehicleBrand+"吗?")){
			$.ajax({
				url:"${APP_PATH}/deleteBrand/"+vehicleBrandNumber,
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