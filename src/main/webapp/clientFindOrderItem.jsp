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
<input type="hidden" id="clientId" value="<%=request.getParameter("clientId")%>">
<input type="hidden" id="clientBalance">
<input type="hidden" id="rentalDays" >
<!-- 搭建显示页面 -->
	<div class="container">
		<!-- 按钮 -->
		<div class="row" style="width: 100%;margin-top: 5%">
			<div class="col-md-4 col-md-offset-9" align="center">
			    <button class="layui-btn"  id="AAA"> 
					查看所有
				</button>
				<button class="layui-btn"  id="AAA1"> 
					已下单
				</button>
				<button class="layui-btn"  id="AAA2"> 
					使用中
				</button>
				<button class="layui-btn"  id="AAA3"> 
					审核中
				</button>
				<button class="layui-btn"  id="AAA4"> 
					审核完成
				</button>
				<button class="layui-btn"  id="AAA5"> 
					交易完成
				</button>
			</div>
		</div>
		<!-- 显示表格数据 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="order_table" style="table-layout:fixed;word-break:break-all;">
					<thead>
						<tr>
							<th>订单号</th>
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

 $(function(){
	 to_page(1,"1");
	 getClinetInf();
 });   
//获取订单信息    
function to_page(pn,itemState){
	 var formData = new FormData();
	 formData.append("pn", pn);
	 formData.append("clientId", $("#clientId").val());
	 formData.append("itemState", itemState);
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
				build_page_nav(result,itemState);
		 }
	 });
	 $("#AAA"+itemState).addClass("layui-btn layui-btn-primary");
}

//1.解析并显示员工数据 
function build_order_table(result) {
	$("#order_table tbody").empty();
	var orders = result.extend.pageInfo.list;
	$(".imgs").css("width", "10px");
	$(".imgs").css("height", "10px");
	$.each(orders, function(index, item) {
		var itemIdTd = $("<td></td>").append(item.itemId);
		var vehicleIdTd = $("<td></td>").append(item.vehicleId);
		var vehicleImageTd = $("<td></td>").append($("<img>").prop("src","/imgPath/"+item.vehicle.vehicleImage1).addClass("imgs"));
		var vehicleNameTd = $("<td></td>").append(item.vehicle.vehicleName);
		var vehiclePlateNumberTd = $("<td></td>").append(item.vehicle.vehiclePlateNumber);
		var vehicleRentTimeTd = $("<td></td>").append(item.vehicleRentTime);
		var vehicleReturnTimeTd = $("<td></td>").append(item.vehicleReturnTime);
		var vehicleDailyRentTd = $("<td></td>").append(item.vehicleDailyRent);
		var vehicleCashPledgeTd = $("<td></td>").append(item.vehicleCashPledge);
		
		if(item.itemState == 1){
			 var Button = $("<button></button>").addClass("btn btn-primary btn-sm getVehicle").append("取车");
			 Button.attr("itemId",item.itemId);
			 var Button1 = $("<button></button>").addClass("btn btn-danger btn-sm refund").append("退车");
			 Button1.attr("itemId",item.itemId); 
			 var itemStateTd = $("<td></td>").append(Button).append(Button1);
		}else if(item.itemState == 2){
			 var Button = $("<button></button>").addClass("btn btn-default btn-sm").append("使用中");
			 Button.attr("itemId",item.itemId); 
			 var Button1 = $("<button></button>").addClass("btn btn-danger btn-sm returnVehicle").append("去还车");
			 Button1.attr("itemId",item.itemId); 
			 var itemStateTd = $("<td></td>").append(Button).append(Button1);
		}else if(item.itemState == 3){
			 var Button = $("<button></button>").addClass("btn btn-default btn-sm").append("车具检查中");
			 Button.attr("itemId",item.itemId);
			 var itemStateTd = $("<td></td>").append(Button).append(Button1);
		}else if(item.itemState == 4){
			 var Button = $("<button></button>").addClass("btn btn-default btn-sm").append("审核成功");
			 Button.attr("itemId",item.itemId);
			 var Button1 = $("<button></button>").addClass("btn btn-success btn-sm refundMoney").append("退还租金");
			 Button.attr("itemId",item.itemId);
			 var itemStateTd = $("<td></td>").append(Button).append(Button1);
		}else if(item.itemState == 5){
			 var Button = $("<button></button>").addClass("btn btn-default btn-sm").append("已完成");
			 Button.attr("itemId",item.itemId);
			 var itemStateTd = $("<td></td>").append(Button);
		}
		
		$("<tr></tr>").append(itemIdTd)
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
function build_page_nav(result,itemState) {
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
			to_page(1,itemState);
		});
		prePageLi.click(function() {
			to_page(result.extend.pageInfo.pageNum - 1,itemState);
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
			to_page(result.extend.pageInfo.pageNum + 1,itemState);
		});
		lastPageLi.click(function() {
			to_page(result.extend.pageInfo.pages,itemState);
		});
	}
	ul.append(firstPageLi).append(prePageLi);
	$.each(result.extend.pageInfo.navigatepageNums, function(index,item) {
		var numLi = $("<li></li>").append($("<a></a>").append(item));
		if (result.extend.pageInfo.pageNum == item) {
			numLi.addClass("active");
		}
		numLi.click(function() {
			to_page(item,itemState);
		});
		ul.append(numLi);
	});
	ul.append(nextPageLi).append(lastPageLi);
	var nav = $("<nav></nav>").append(ul);
	nav.appendTo("#page_nav_area");
}
//获取用户信息
function getClinetInf(){
	$.ajax({
		url:"${APP_PATH}/findOneClient/"+$("#clientId").val(),
		type:"GET",
		success:function(result){
			$("#clientBalance").val(result.extend.client.clientBalance);
		}
	});
}
//获取租用信息 async: false,
function getVehcleRental(itemId){
	$.ajax({
		url:"${APP_PATH}/findByItemId/"+itemId,
		type:"GET",
		async: false,
		success:function(result){
			$("#rentalDays").val(result.extend.vehicleRental.rentalDays);
		}
	});
}
//获取当前时间
function getNowFormatDate() {
    var date = new Date();
    var seperator1 = "-";
    var year = date.getFullYear();
    var month = date.getMonth() + 1;
    var strDate = date.getDate();
    if (month >= 1 && month <= 9) {
        month = "0" + month;
    }
    if (strDate >= 0 && strDate <= 9) {
        strDate = "0" + strDate;
    }
    var currentdate = year + seperator1 + month + seperator1 + strDate;
    return currentdate;
}
//计算两个时间段的天数
function diy_time(time1,time2){
    time1 = Date.parse(new Date(time1));
    time2 = Date.parse(new Date(time2));
    return time3 = parseInt((time2 - time1)/1000/3600/24);
}
//为每个退款绑定时间
$(document).on("click",".refundMoney",function(){
	getClinetInf();
	var itemId1 = $(this).parents("tr").find("td:eq(0)").text();
	getVehcleRental(itemId1);
	var rDays = $("#rentalDays").val();
	var clientBalance = $("#clientBalance").val();
	var nowDate = getNowFormatDate();
	var vehicleDailyRent = parseFloat($(this).parents("tr").find("td:eq(7)").text());
	var vehicleCashPledge = parseFloat($(this).parents("tr").find("td:eq(8)").text());
	var rentDay = $(this).parents("tr").find("td:eq(5)").text();
	var rnt = $(this).parents("tr").find("td:eq(6)").text();
	var dayNum = diy_time(rentDay,rnt)+1;//实际租用天数
	//var dayNum1 = diy_time(rentDay,nowDate)+1;
	var payMoney;
	var itemday = $("#rentalDays").val();//预定天数
	//alert(xuyh);
	if(dayNum > itemday){
		payMoney = vehicleDailyRent*(1+0.4)*(dayNum-itemday);
		if(confirm("由于您超时还车"+Math.abs(dayNum-itemday)+"天,超时一天将多收取车具日租金的40%,您需要缴纳"+payMoney+"元,缴纳罚款后才能退回押金,点击确定缴纳超时费")){
			if(clientBalance < payMoney){
				alert("对不起您当前账户余额不足"+payMoney+"元,请先去充值!");
				return false;
			}else{
				payMoney =  - Math.abs(payMoney);
			}
		}else{
			return false;
		}
	}else if(dayNum == itemday){
		payMoney = 0;
	}else if(dayNum < itemday){
		//alert(itemday+"  "+dayNum);
		payMoney = vehicleDailyRent*(1-0.2)*(itemday-dayNum);
		if(confirm("由于您提前还车"+Math.abs(itemday-dayNum)+"天,每天将退回车具日租金的80%,共退您"+Math.abs(payMoney)+"元")){
			payMoney = Math.abs(payMoney);
		}else{
			return false;
		}
	}
	var clientId = $("#clientId").val();
	var vehicleId = $(this).parents("tr").find("td:eq(1)").text();
	var itemId = $(this).parents("tr").find("td:eq(0)").text();
	var vehicleDailyRent = $(this).parents("tr").find("td:eq(7)").text();
	var vehicleCashPledge = $(this).parents("tr").find("td:eq(8)").text();
	var formData = new FormData();
	formData.append("itemId", itemId);
	formData.append("clientId", clientId);
	formData.append("vehicleId", vehicleId);
	formData.append("vehicleDailyRent", vehicleDailyRent);
	formData.append("vehicleCashPledge", vehicleCashPledge);
	formData.append("payMoney", payMoney);
	$.ajax({
		url:"${APP_PATH}/refund",
		type:"POST",
		data:formData,
		cache: false,
	    processData: false,
	    contentType: false,
		success:function(result){
			alert("退款成功");
			to_page(currentPage,"5");
		}
	});
});
//为每个退款绑定时间
$(document).on("click",".refund",function(){
	getClinetInf();
	var itemId1 = $(this).parents("tr").find("td:eq(0)").text();
	getVehcleRental(itemId1);
	var rDays = $("#rentalDays").val();
	var clientBalance = $("#clientBalance").val();
	var nowDate = getNowFormatDate();
	var vehicleDailyRent = parseFloat($(this).parents("tr").find("td:eq(7)").text());
	var vehicleCashPledge = parseFloat($(this).parents("tr").find("td:eq(8)").text());
	var rentDay = $(this).parents("tr").find("td:eq(5)").text();
	var rnt = $(this).parents("tr").find("td:eq(6)").text();
	var dayNum = diy_time(rnt,nowDate);
	var dayNum1 = diy_time(rentDay,nowDate)+1;
	var payMoney;
	var itemday = $("#rentalDays").val();
	//alert(xuyh);
	if(dayNum1 > itemday){
		payMoney = vehicleDailyRent*(1+0.4)*dayNum;
		if(confirm("由于您超时还车"+dayNum+"天,超时一天将多收取车具日租金的40%,您需要缴纳"+payMoney+"元,缴纳罚款后才能退回押金,点击确定缴纳超时费")){
			if(clientBalance < payMoney){
				alert("对不起您当前账户余额不足"+payMoney+"元,请先去充值!");
				return false;
			}else{
				payMoney =  - Math.abs(payMoney);
			}
		}else{
			return false;
		}
	}else if(dayNum1 == itemday){
		payMoney = 0;
	}else if(dayNum1 < itemday){
		payMoney = vehicleDailyRent*(1-0.2)*dayNum;
		if(confirm("由于您提前还车"+Math.abs(dayNum)+"天,每天将退回车具日租金的80%,共退您"+Math.abs(payMoney)+"元")){
			payMoney = Math.abs(payMoney);
		}else{
			return false;
		}
	}
	var clientId = $("#clientId").val();
	var vehicleId = $(this).parents("tr").find("td:eq(1)").text();
	var itemId = $(this).parents("tr").find("td:eq(0)").text();
	var vehicleDailyRent = $(this).parents("tr").find("td:eq(7)").text();
	var vehicleCashPledge = $(this).parents("tr").find("td:eq(8)").text();
	var formData = new FormData();
	formData.append("itemId", itemId);
	formData.append("clientId", clientId);
	formData.append("vehicleId", vehicleId);
	formData.append("vehicleDailyRent", vehicleDailyRent);
	formData.append("vehicleCashPledge", vehicleCashPledge);
	formData.append("payMoney", payMoney);
	$.ajax({
		url:"${APP_PATH}/refund",
		type:"POST",
		data:formData,
		cache: false,
	    processData: false,
	    contentType: false,
		success:function(result){
			alert("退款成功");
			to_page(currentPage,"5");
		}
	});
});

//取车
$(document).on("click",".getVehicle",function(){
		var itemId = $(this).parents("tr").find("td:eq(0)").text();
		var vehicleDailyRent = $(this).parents("tr").find("td:eq(7)").text();
		var vehicleCashPledge = $(this).parents("tr").find("td:eq(8)").text();
		var formData = new FormData();
		formData.append("itemId", itemId);
		formData.append("vehicleDailyRent", vehicleDailyRent);
		formData.append("vehicleCashPledge", vehicleCashPledge);
	 	$.ajax({
	 		url:"${APP_PATH}/getVehicle",
	 		type:"POST",
	 		data:formData,
	 		cache: false,
		    processData: false,
		    contentType: false,
	 		success:function(result){
	 			alert("请拿着相关证件到河南财经政法大学龙子湖校区取车");
	 			to_page(1,"2");
	 		}
	 	});
 });
//还车
$(document).on("click",".returnVehicle",function(){
		var itemId = $(this).parents("tr").find("td:eq(0)").text();
		var vehicleDailyRent = $(this).parents("tr").find("td:eq(7)").text();
		var vehicleCashPledge = $(this).parents("tr").find("td:eq(8)").text();
		var nowDate = getNowFormatDate();
		var formData = new FormData();
		formData.append("itemId", itemId);
		formData.append("vehicleDailyRent", vehicleDailyRent);
		formData.append("vehicleCashPledge", vehicleCashPledge);
		formData.append("vehicleReturnTime", nowDate);
	 	$.ajax({
	 		url:"${APP_PATH}/returnVehicle",
	 		type:"POST",
	 		data:formData,
	 		cache: false,
		    processData: false,
		    contentType: false,
	 		success:function(result){
	 			alert("已申请还车,请等待管理员检查车");
	 			to_page(1,"3");
	 		}
	 	});
 });
 $("#AAA").click(function(){
		 to_page(1,"");
		 getClinetInf();
 });
$("#AAA1").click(function(){
		 to_page(1,"1");
		 getClinetInf();
 });
$("#AAA2").click(function(){
		 to_page(1,"2");
		 getClinetInf();
});
$("#AAA3").click(function(){
		 to_page(1,"3");
		 getClinetInf();
});
$("#AAA4").click(function(){
		 to_page(1,"4");
		 getClinetInf();
});
$("#AAA5").click(function(){
		 to_page(1,"5");
		 getClinetInf();
});
</script>
</body>
</html>