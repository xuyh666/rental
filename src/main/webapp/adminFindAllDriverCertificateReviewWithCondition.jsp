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
			<label class="layui-form-label">编号</label>
			<div class="layui-input-block">
				<input type="text" name="clientId" 
					placeholder="请输入编号"  autocomplete="off" class="layui-input" id="clientId">
			</div>
		</div>
	</form>
	 <div class="layui-input-inline">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo" id="findWithCondition">查找</button>
			</div>
	   </div>
 </div>   
<!-- 驾驶证图片显示模态框 -->
	<div class="modal fade" id="driverPicShow" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" >驾驶证图片</h4>
				</div>
				<div class="modal-body">
					    <div class="form-group">
							<label class="col-sm-2 control-label">驾驶证</label>
							<div class="col-sm-10">
								<img  src="" id="pic2" width="400px" height="300px">
							</div>
						</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				</div>
			</div>
		</div>
	</div>

<!-- 身份证图片显示模态框 -->
	<div class="modal fade" id="IdPicShow" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" >身份证图片</h4>
				</div>
				<div class="modal-body">
					    <div class="form-group">
							<label class="col-sm-2 control-label">身份证</label>
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

<!-- 搭建显示页面 -->
	<div class="container">
		
		<!-- 显示表格数据 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="certificateReview_table">
					<thead>
						<tr>
							<th>#</th>
							<th>姓名</th>
							<th>性别</th>
							<th>出生日期</th>
							<th>身份证号</th>
							<th>身份证图片</th>
							<th>身份证审核</th>
							<th>驾驶证号</th>
							<th>驾驶证图片</th>
							<th>驾驶证审核</th>
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

/* $(function() {
	to_page(1);
}); */

$("#findWithCondition").click(function(){
	to_page(1);
});
function to_page(pn) {
	var formData = new FormData();
	 formData.append("pn", pn);
	 formData.append("clientId", $("#clientId").val());
	$.ajax({
		url : "${APP_PATH}/findSomeCertificateReview",
		data : formData,
		type : "POST",
		cache: false,
	    processData: false,
	    contentType: false,
		success : function(result) {
			if(result.extend.pageInfo.list[0] == null){
				alert("该用户提交审核");
			}
			//1.解析并显示员工数据
			build_emps_table(result);
			//2.解析并显示分页信息
			build_page_info(result);
			//3.解析显示分页条数据
			build_page_nav(result);
		}
	});
}

//1.解析并显示员工数据 
function build_emps_table(result) {
	$("#certificateReview_table tbody").empty();
	var certificateReviews = result.extend.pageInfo.list;
	$.each(certificateReviews, function(index, item) {
		var clientIdTd = $("<td></td>").append(item.clientId);
		var clientRealNameTd = $("<td></td>").append(item.clientRealName);
		var clientGenderTd = $("<td></td>").append(item.clientGender);
		var clientBirthDateTd = $("<td></td>").append(item.clientBirthDate);
		var clientIdNumberTd = $("<td></td>").append(item.clientIdNumber);
		var clientDriverLicenseNumberTd = $("<td></td>").append(item.clientDriverLicenseNumber);
		var clientDriverLicenseImageTd = $("<td></td>").append(item.clientDriverLicenseImage);
		var clientDriverLicenseVerifyTd = $("<td></td>").append(item.clientDriverLicenseVerify);
		//id按钮
		var idImageButton = $("<button></button>").addClass("btn btn-primary btn-sm btn-info id_pic_btn")
		.append($("<span></span>").addClass("glyphicon glyphicon-search")).append("查看");
		idImageButton.attr("clientId",item.clientId); 
		var idImagesTd = $("<td></td>").append(idImageButton);
		
		var idSuccessButton = $("<button></button>").addClass("btn btn-success btn-sm idSuccess")
		.append($("<span></span>").addClass("glyphicon glyphicon-ok")).append("通过");
		idSuccessButton.attr("editvehicleId",item.clientId); 
		var idFailButton = $("<button></button>").addClass("btn btn-danger btn-sm idFail")
		.append($("<span></span>").addClass("glyphicon glyphicon-remove")).append("不通过");
		idFailButton.attr("delvehicleId",item.clientId);
		var idImagesAltTd = $("<td></td>").append(idSuccessButton).append(" ").append(idFailButton);
		//驾驶证
		var driverImageButton = $("<button></button>").addClass("btn btn-primary btn-sm btn-info driver_pic_btn")
		.append($("<span></span>").addClass("glyphicon glyphicon-search")).append("查看");
		driverImageButton.attr("clientId",item.clientId); 
		var driverImagesTd = $("<td></td>").append(driverImageButton);
		
		var driverSuccessButton = $("<button></button>").addClass("btn btn-success btn-sm driverSuccess")
		.append($("<span></span>").addClass("glyphicon glyphicon-ok")).append("通过");
		driverSuccessButton.attr("editvehicleId",item.clientId); 
		var driverFailButton = $("<button></button>").addClass("btn btn-danger btn-sm driverFail")
		.append($("<span></span>").addClass("glyphicon glyphicon-remove")).append("不通过");
		driverFailButton.attr("delvehicleId",item.clientId);
		var driverImagesAltTd = $("<td></td>").append(driverSuccessButton).append(" ").append(driverFailButton);
		
		if(item.clientDriverLicenseVerify == "-1" && item.clientIdCardVerify == "-1"){
		$("<tr></tr>").append(clientIdTd)
					  .append(clientRealNameTd)
					  .append(clientGenderTd)
					  .append(clientBirthDateTd)
					  .append(clientIdNumberTd)
					  .append(idImagesTd)
					  .append(idImagesAltTd)
					  .append(clientDriverLicenseNumberTd)
					  .append(driverImagesTd)
					  .append(driverImagesAltTd)
					  .appendTo("#certificateReview_table tbody");
		}
        if(item.clientIdCardVerify != "-1" && item.clientDriverLicenseVerify != "-1"){
        	$("<tr></tr>").append(clientIdTd)
	  		  .append($("<td></td>").append(" "))
	  		  .append($("<td></td>").append(" "))
	  		  .append($("<td></td>").append(" "))
	  		  .append($("<td></td>").append(" "))
	  		  .append($("<td></td>").append(" "))
	  		  .append($("<td></td>").append(" "))
	  		  .append($("<td></td>").append(" "))
			  .append($("<td></td>").append(" "))
			  .append($("<td></td>").append(" "))
	  		  .appendTo("#certificateReview_table tbody");
        }
		if(item.clientDriverLicenseVerify == "-1" & item.clientIdCardVerify != "-1" & item.clientIdCardVerify != "-2"){
			$("<tr></tr>").append(clientIdTd)
	  		  .append($("<td></td>").append(" "))
	  		  .append($("<td></td>").append(" "))
	  		  .append($("<td></td>").append(" "))
	  		  .append($("<td></td>").append(" "))
	  		  .append($("<td></td>").append(" "))
	  		  .append($("<td></td>").append(" "))
	  		  .append(clientDriverLicenseNumberTd)
	  		  .append(driverImagesTd)
	  		  .append(driverImagesAltTd)
	  		  .appendTo("#certificateReview_table tbody");
		}
		if(item.clientIdCardVerify == "-2" && item.clientDriverLicenseVerify == "-1"){
			$("<tr></tr>").append(clientIdTd)
	  		  .append($("<td></td>").append(" "))
	  		  .append($("<td></td>").append(" "))
	  		  .append($("<td></td>").append(" "))
	  		  .append($("<td></td>").append(" "))
	  		  .append($("<td></td>").append(" "))
	  		  .append($("<td></td>").append(" "))
	  		  .append(clientDriverLicenseNumberTd)
	  		  .append(driverImagesTd)
	  		  .append(driverImagesAltTd)
	  		  .appendTo("#certificateReview_table tbody");
		}
		 if(item.clientDriverLicenseVerify == "-2" && item.clientIdCardVerify == "-1"){
	        	$("<tr></tr>").append(clientIdTd)
				  .append(clientRealNameTd)
				  .append(clientGenderTd)
				  .append(clientBirthDateTd)
				  .append(clientIdNumberTd)
				  .append(idImagesTd)
				  .append(idImagesAltTd)
				  .append($("<td></td>").append(" "))
				  .append($("<td></td>").append(" "))
				  .append($("<td></td>").append(" "))
				  .appendTo("#certificateReview_table tbody");
			}
		 
        if(item.clientIdCardVerify == "-1" & item.clientDriverLicenseVerify != "-1" & item.clientDriverLicenseVerify != "-2"){
        	$("<tr></tr>").append(clientIdTd)
			  .append(clientRealNameTd)
			  .append(clientGenderTd)
			  .append(clientBirthDateTd)
			  .append(clientIdNumberTd)
			  .append(idImagesTd)
			  .append(idImagesAltTd)
			  .append($("<td></td>").append(" "))
			  .append($("<td></td>").append(" "))
			  .append($("<td></td>").append(" "))
			  .appendTo("#certificateReview_table tbody");
		}
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
//点击查看身份证
$(document).on("click",".id_pic_btn",function(){
	$.ajax({
		url:"${APP_PATH}/findOneCfrById",
		type:"POST",
		data:"clientId="+$(this).attr("clientId"),
		success:function(result){
			var certificateReview = result.extend.certificateReview;
			$("#pic1").prop("src","/imgPath/"+certificateReview.clientIdImage);
		}
	});
	$("#IdPicShow").modal({
		backdrop : "static"
	});
});
//点击查看驾驶证
$(document).on("click",".driver_pic_btn",function(){
	$.ajax({
		url:"${APP_PATH}/findOneCfrById",
		type:"POST",
		data:"clientId="+$(this).attr("clientId"),
		success:function(result){
			var certificateReview = result.extend.certificateReview;
			$("#pic2").prop("src","/imgPath/"+certificateReview.clientDriverLicenseImage);
		}
	});
	$("#driverPicShow").modal({
		backdrop : "static"
	});
});
//身份审核
$(document).on("click",".idSuccess",function(){
	var clientId = $(this).parents("tr").find("td:eq(0)").text();
	var clientRealName = $(this).parents("tr").find("td:eq(1)").text();
	var clientGender = $(this).parents("tr").find("td:eq(2)").text();
	var clientBirthDate = $(this).parents("tr").find("td:eq(3)").text();
	var clientIdNumber = $(this).parents("tr").find("td:eq(4)").text();
	var formData = new FormData();
	 formData.append("clientId", clientId);
	 formData.append("clientRealName", clientRealName);
	 formData.append("clientGender", clientGender);
	 formData.append("clientBirthDate", clientBirthDate);
	 formData.append("clientIdNumber", clientIdNumber);
	if(confirm("确定通过编号为"+clientId+"用户实名认证?")){
		$.ajax({
			url:"${APP_PATH}/approveId",
			type:"POST",
			data:formData,
			cache: false,
		    processData: false,
		    contentType: false,
			success:function(result){
				alert(result.msg);
				to_page(currentPage);
			}
		});
	}
});
$(document).on("click",".idFail",function(){
	var clientId = $(this).parents("tr").find("td:eq(0)").text();
	var formData = new FormData();
	 formData.append("clientId", clientId);
	 formData.append("clientIdCardVerify", -2);
	if(confirm("确定拒绝编号为"+clientId+"用户实名认证?")){
		$.ajax({
			url:"${APP_PATH}/refuseId",
			type:"POST",
			data:formData,
			cache: false,
		    processData: false,
		    contentType: false,
			success:function(result){
				alert(result.msg);
				to_page(currentPage);
			}
		});
	}
});
//驾驶证审核
$(document).on("click",".driverSuccess",function(){
	var id = $(this).parents("tr").find("td:eq(0)").text();
	if(confirm("确定通过编号为"+id+"用户驾驶证认证?")){
		var clientId = $(this).parents("tr").find("td:eq(0)").text();
		var clientDriverLicenseNumber = $(this).parents("tr").find("td:eq(7)").text();
		var formData = new FormData();
		 formData.append("clientId", clientId);
		 formData.append("clientDriverLicenseNumber", clientDriverLicenseNumber);
			$.ajax({
				url:"${APP_PATH}/approveDriver",
				type:"POST",
				data:formData,
				cache: false,
			    processData: false,
			    contentType: false,
				success:function(result){
					alert(result.msg);
					to_page(currentPage);
				}
			});
	}
});
$(document).on("click",".driverFail",function(){
	var clientId = $(this).parents("tr").find("td:eq(0)").text();
	var formData = new FormData();
	 formData.append("clientId", clientId);
	 formData.append("clientDriverLicenseVerify", -2);
	if(confirm("确定拒绝编号为"+clientId+"用户实名认证?")){
		$.ajax({
			url:"${APP_PATH}/refuseId",
			type:"POST",
			data:formData,
			cache: false,
		    processData: false,
		    contentType: false,
			success:function(result){
				alert(result.msg);
				to_page(currentPage);
			}
		});
	}
});


</script>
</body>
</html>