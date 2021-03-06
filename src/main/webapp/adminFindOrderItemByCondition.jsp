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
<div style="width: 100%;height: 150px;padding-top: 30px" align="center">
<form class="layui-form layui-form-pane" id="Form">
		<div class="layui-input-inline">
			<label class="layui-form-label">订单号</label>
			<div class="layui-input-block">
				<input type="text" name="itemId" 
					placeholder="请输入编号"  autocomplete="off" class="layui-input" id="itemId">
			</div>
		</div>
		<div class="layui-input-inline">
			<label class="layui-form-label">用户编号</label>
			<div class="layui-input-block">
				<input type="text" name="clientId" 
					placeholder="请输入编号"  autocomplete="off" class="layui-input" id="clientId">
			</div>
		</div>
		<div class="layui-input-inline">
			<label class="layui-form-label">车编号</label>
			<div class="layui-input-block">
				<input type="text" name="vehicleId" 
					placeholder="请输入编号"  autocomplete="off" class="layui-input" id="vehicleId">
			</div>
		</div>
		<div class="layui-input-inline">
		    <label class="layui-form-label">状态</label>
		    <div class="layui-input-block">
		      <select name="itemState" id="itemState">
		        <option value=""></option>
		        <option value="1">已下单</option>
		        <option value="2">使用中</option>
		        <option value="3">申请退车</option>
		        <option value="4">可退款</option>
		        <option value="5">已完成</option>
		      </select>
		    </div>
		  </div>
	</form>
	 <div class="layui-input-inline">
			<div class="layui-input-block">
			    <button type="reset" class="layui-btn layui-btn-primary" id="resetbtn">重置</button>
				<button class="layui-btn" lay-submit lay-filter="formDemo" id="findWithCondition">查找</button>
			</div>
	   </div>
 </div>   
 
 <!-- 显示表格数据 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="order_table" style="table-layout:fixed;word-break:break-all;">
					<thead>
						<tr>
							<th>订单号</th>
							<th>用户编号</th>
							<th>姓名</th>
							<th>身份证号</th>
							<th>手机号</th>
							<th>车编号</th>
							<th>图片</th>
							<th>车名</th>
							<th>车牌号</th>
							<th>租出日期</th>
							<th>归还日期</th>
							<th>租金/天</th>
							<th>押金</th>
							<th>订单状态</th>
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
 
 layui.use('form', function() {
		var form = layui.form;
	});
 $("#findWithCondition").click(function(){
	 to_page(1);
 });
//获取订单信息    
 function to_page(pn){
 	 var formData = new FormData();
 	 formData.append("itemId", $("#itemId").val());
 	 formData.append("clientId", $("#clientId").val());
 	 formData.append("vehicleId", $("#vehicleId").val());
 	 formData.append("itemState", $("#itemState").val());
 	 formData.append("pn", pn);
 	 $.ajax({
 		 url:"${APP_PATH}/selectOrderByCondition",
 		 type:"POST",
 		 data:formData,
 		 cache: false,
 		 processData: false,
 		 contentType: false,
 		 success:function(result){
 			    //1.解析并显示员工数据
 				build_order_table(result);
 				//2.解析并显示分页信息
 				build_page_info(result);
 				//3.解析显示分页条数据
 				build_page_nav(result);
 		 }
 	 });
 }
//1.解析并显示员工数据 
 function build_order_table(result) {
 	$("#order_table tbody").empty();
 	var orders = result.extend.pageInfo.list;
 	$(".imgs").css("width", "10px");
 	$(".imgs").css("height", "10px");
 	$.each(orders, function(index, item) {
 		var itemIdTd = $("<td></td>").append(item.itemId);
 		var clientIdTd = $("<td></td>").append(item.clientId);
 		var clientRealNameTd = $("<td></td>").append(item.clientRealName);
 		var clientIdNumberTd = $("<td></td>").append(item.clientIdNumber);
 		var clientPhoneNumberTd = $("<td></td>").append(item.clientPhoneNumber);
 		var vehicleIdTd = $("<td></td>").append(item.vehicleId);
 		var vehicleImageTd = $("<td></td>").append($("<img>").prop("src","/imgPath/"+item.vehicle.vehicleImage1).addClass("imgs"));
 		var vehicleNameTd = $("<td></td>").append(item.vehicle.vehicleName);
 		var vehiclePlateNumberTd = $("<td></td>").append(item.vehicle.vehiclePlateNumber);
 		var vehicleRentTimeTd = $("<td></td>").append(item.vehicleRentTime);
 		var vehicleReturnTimeTd = $("<td></td>").append(item.vehicleReturnTime);
 		var vehicleDailyRentTd = $("<td></td>").append(item.vehicleDailyRent);
 		var vehicleCashPledgeTd = $("<td></td>").append(item.vehicleCashPledge);
 		
 		
 		if(item.itemState == 1){
 			 var Button = $("<button></button>").addClass("btn btn-primary btn-sm").append("待取车");
 			 Button.attr("itemId",item.itemId);
 			 var itemStateTd = $("<td></td>").append(Button);
 		}else if(item.itemState == 2){
 			 var Button = $("<button></button>").addClass("btn btn-warning btn-sm").append("使用中");
 			 Button.attr("itemId",item.itemId);
 			 var itemStateTd = $("<td></td>").append(Button);
 		}else if(item.itemState == 3){
 			 var Button = $("<button></button>").addClass("btn btn-success btn-sm AudiVV").append("审核通过");
			 Button.attr("itemId",item.itemId);
			/*  var Button1 = $("<button></button>").addClass("btn btn-success btn-sm refund").append("退还租金");
			 Button.attr("itemId",item.itemId); */
			 var itemStateTd = $("<td></td>").append(Button);
 		}else if(item.itemState == 4){
 			 var Button = $("<button></button>").addClass("btn btn-success btn-sm").append("审核成功");
 			 Button.attr("itemId",item.itemId);
 			 var itemStateTd = $("<td></td>").append(Button);
 		}else if(item.itemState == 5){
 			 var Button = $("<button></button>").addClass("btn btn-default btn-sm").append("已完成");
 			 Button.attr("itemId",item.itemId);
 			 var itemStateTd = $("<td></td>").append(Button);
 		}
 		var itemStateTd = $("<td></td>").append(itemStateTd);
 		
 		$("<tr></tr>").append(itemIdTd)
 				  	  .append(clientIdTd)
 				  	  .append(clientRealNameTd)
 				  	  .append(clientIdNumberTd)
 				  	  .append(clientPhoneNumberTd)
 				  	  .append(vehicleIdTd)
 					  .append(vehicleImageTd)
 					  .append(vehicleNameTd)
 					  .append(vehiclePlateNumberTd)
 					  .append(vehicleRentTimeTd)
 					  .append(vehicleReturnTimeTd)
 					  .append(vehicleDailyRentTd)
 					  .append(vehicleCashPledgeTd)
 					  .append(itemStateTd)
 					  .appendTo("#order_table tbody");
 	});
 	$(".imgs").css("width", "66px");
 	$(".imgs").css("height", "48px");
 	
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
 
//审核通过
 $(document).on("click",".AudiVV",function(){
 		var itemId = $(this).parents("tr").find("td:eq(0)").text();
 		var vehicleDailyRent = $(this).parents("tr").find("td:eq(11)").text();
 		var vehicleCashPledge = $(this).parents("tr").find("td:eq(12)").text();
 		var formData = new FormData();
 		formData.append("itemId", itemId);
 		formData.append("vehicleDailyRent", vehicleDailyRent);
 		formData.append("vehicleCashPledge", vehicleCashPledge);
 	 	$.ajax({
 	 		url:"${APP_PATH}/checkVehicleSucceess",
 	 		type:"POST",
 	 		data:formData,
 	 		cache: false,
 		    processData: false,
 		    contentType: false,
 	 		success:function(result){
 	 			alert(result.msg);
 	 			to_page(currentPage,"3");
 	 		}
 	 	});
  });
  
 $("#resetbtn").click(function(){
	   $("#Form")[0].reset();
	　  layui.form.render();
	});
 </script>
</body>
</html>