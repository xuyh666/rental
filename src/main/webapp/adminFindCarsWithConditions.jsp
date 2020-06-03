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
 #vehicle_table tbody td{
    width: 40px;
    height: 50px
  }
 </style>
</head>
<body>
<form class="layui-form layui-form-pane" id="Form">
        <div class="layui-input-inline">
		    <label class="layui-form-label">类别</label>
		    <div class="layui-input-block">
		      <select name="vehicleClassNumber" id="vehicleClassNumber_condition">
		        <option value=""></option>
		      </select>
		    </div>
		  </div>
		  <div class="layui-input-inline">
		    <label class="layui-form-label">品牌</label>
		    <div class="layui-input-block">
		      <select name="vehicleBrandNumber" id="vehicleBrandNumber_condition">
		        <option value=""></option>
		      </select>
		    </div>
		  </div>
		  <div class="layui-input-inline">
			<label class="layui-form-label">车状态</label>
			 <div class="layui-input-block">
				<input type="radio" name="vehicleState" value="1"  title="可租用" >
				<input type="radio" name="vehicleState" value="-1"  title="不可租用" >
			</div>
		</div>
		  <br>
		  <div class="layui-input-inline">
			<label class="layui-form-label">车编号</label>
			<div class="layui-input-block">
				<input type="text" name="vehicleId" 
					placeholder="请输入编号"  autocomplete="off" class="layui-input" id="vehicleId_condition">
			</div>
		</div>
		 <div class="layui-input-inline">
			<label class="layui-form-label">车名</label>
			<div class="layui-input-block">
				<input type="text" name="vehicleName" 
					placeholder="请输入车名(车品牌 名字)"  autocomplete="off" class="layui-input" id="vehicleName_condition">
			</div>
		</div>
		<div class="layui-input-inline">
			<label class="layui-form-label">车牌号</label>
			<div class="layui-input-block">
				<input type="text" name="vehiclePlateNumber" 
					placeholder="请输入车牌号" autocomplete="off" class="layui-input" id="vehiclePlateNumber_condition" >
					<span style="font-size: 20px" id="plateNumber_span"></span>
			</div>
		</div>
		<div class="layui-input-inline">
			<label class="layui-form-label">颜色</label>
			<div class="layui-input-block">
				<input type="text" name="vehicleColor" 
					placeholder="请输入颜色" autocomplete="off" class="layui-input" id="vehicleColor_condition" >
					<span style="font-size: 20px"></span>
			</div>
		</div>
		<div class="layui-input-inline">
			<label class="layui-form-label">车龄</label>
			<div class="layui-input-block">
				<input type="text" name="vehicleAge"   autocomplete="off"
					class="layui-input" id="vehicleAge_condition"  placeholder="请输入车龄" >
					<span style="color: red;font-size: 20px" ></span>
			</div>
		</div>
		<div class="layui-input-inline">
			<label class="layui-form-label">车排量</label>
			<div class="layui-input-block">
				<input type="text" name="vehicleDisplacement"   autocomplete="off"
					class="layui-input" id="vehicleDisplacement_condition" placeholder="请输入车排量" >
					<span style="color: red;font-size: 20px"></span>
			</div>
		</div>
		<div class="layui-input-inline">
			<label class="layui-form-label">车能源</label>
			<div class="layui-input-block">
				<input type="text" name="vehicleOilType"   autocomplete="off"
					class="layui-input" id="vehicleOilType_condition" placeholder="请输入车能源(没有填无)" >
					<span style="color: red;font-size: 20px"></span>
			</div>
		</div>
		<div class="layui-input-inline">
			<label class="layui-form-label">能源容量</label>
			<div class="layui-input-block">
				<input type="text" name="vehicleOilCapacity"   autocomplete="off"
					class="layui-input" id="vehicleOilCapacity_condition" placeholder="请输入车能源容量(没有填无)"" >
					<span style="color: red;font-size: 20px"></span>
			</div>
		</div>
		<div class="layui-input-inline">
			<label class="layui-form-label">座椅数</label>
			<div class="layui-input-block">
				<input type="text" name="vehicleSeatNum"   autocomplete="off"
					class="layui-input" id="vehicleSeatNum_condition" placeholder="请输入座椅数" >
					<span style="color: red;font-size: 20px"></span>
			</div>
		</div>
		<!-- <div class="layui-input-inline">
			<label class="layui-form-label">日租价格</label>
			<div class="layui-input-block">
				<input type="text" name="vehicleDailyRent"   autocomplete="off"  
					class="layui-input" id="vehicleDailyRent_condition" placeholder="请输入车日租价格(整数字)"  >
					<span style="color: red;font-size: 20px"></span>
			</div>
		</div>
		<div class="layui-input-inline">
			<label class="layui-form-label">押金</label>
			<div class="layui-input-block">
				<input type="text" name="vehicleCashPledge"   autocomplete="off" 
					class="layui-input" id="vehicleCashPledge_condition" placeholder="请输入车押金(整数字)"  >
					<span style="color: red;font-size: 20px"></span>
			</div>
		</div> -->
		<div class="layui-input-inline">
			<label class="layui-form-label">被租次数</label>
			<div class="layui-input-block">
				<input type="text" name="vehicleRentalStatistic"   autocomplete="off" 
					class="layui-input" id="vehicleRentalStatistic_condition" placeholder="被租次数(整数字)"  oninput = "value=value.replace(/[^\d]/g,'')">
					<span style="color: red;font-size: 20px"></span>
			</div>
		</div>
	</form>
     <div class="layui-form-item">
			<div class="layui-input-block">
			     <button type="reset" class="layui-btn layui-btn-primary" id="resetbtn">重置</button>
				<button class="layui-btn" lay-submit lay-filter="formDemo" id="findWithCondition">查找</button>
			</div>
	   </div>
	
	
	
	<input type="hidden" id="finalStep" value="<%=request.getParameter("vId")%>">
<!-- 车具图片修改模态框 -->
	<div class="modal fade" id="vehiclePicUpdateModal" tabindex="-1" role="dialog"
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
							   <td>图片1</td>
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
                        <tr>
							   <td>图片2</td>
							   <td><img id="altPic2"  height="50px" width="70px"></td>
							   <td>
							   <form enctype="multipart/form-data">
				                      <a class="btn btn-default"  role="button">
				                             更换图片<input type="file"  style="opacity: 0;display: inline-block; width: 50px" id="altInput2">
				                      </a>
								</form>
								<input type="submit" value="保存" id="imgSub2">
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
							   <td>图片3</td>
							   <td><img id="altPic3"  height="50px" width="70px"></td>
							   <td>
							   <form enctype="multipart/form-data">
				                      <a class="btn btn-default"  role="button">
				                             更换图片<input type="file"  style="opacity: 0;display: inline-block; width: 50px" id="altInput3">
				                      </a>
								</form>
								<input type="submit" value="保存" id="imgSub3">
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
							   <td>图片4</td>
							   <td><img id="altPic4"  height="50px" width="70px"></td>
							   <td>
							   <form enctype="multipart/form-data">
				                      <a class="btn btn-default"  role="button">
				                             更换图片<input type="file"  style="opacity: 0;display: inline-block; width: 50px" id="altInput4">
				                      </a>
								</form>
								<input type="submit" value="保存" id="imgSub4">
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

<!-- 车具修改模态框 -->
	<div class="modal fade" id="vehicleUpdateModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" >车数据修改</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="upd">
						<div class="form-group">
							<label class="col-sm-2 control-label">编号</label>
							<div class="col-sm-10">
								<p class="form-control-static" id="vehicleId_update_input"></p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">车牌号</label>
							<div class="col-sm-10">
								<p class="form-control-static" id="vehiclePlateNumber_update_input"></p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">类型</label>
							<div class="col-sm-4">
								<select class="form-control" name="vehicleClassNumber" id="vehicleClassNumber_update_select">
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">品牌</label>
							<div class="col-sm-4">
								<select class="form-control" name="vehicleBrandNumber" id="vehicleBrandNumber_update_select">
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">车名</label>
							<div class="col-sm-8">
								<input type="text" name="vehicleName" class="form-control" id="vehicleName_update_input">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">颜色</label>
							<div class="col-sm-8">
								<input type="text" name="vehicleColor" class="form-control" id="vehicleColor_update_input">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">车龄</label>
							<div class="col-sm-8">
								<input type="text" name="vehicleAge" class="form-control" id="vehicleAge_update_input">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">排量</label>
							<div class="col-sm-8">
								<input type="text" name="vehicleDisplacement" class="form-control" id="vehicleDisplacement_update_input">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">能源类型</label>
							<div class="col-sm-8">
								<input type="text" name="vehicleOilType" class="form-control" id="vehicleOilType_update_input">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">能源容量</label>
							<div class="col-sm-8">
								<input type="text" name="vehicleOilCapacity" class="form-control" id="vehicleOilCapacity_update_input">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">座位数</label>
							<div class="col-sm-8">
								<input type="text" name="vehicleSeatNum" class="form-control" id="vehicleSeatNum_update_input">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">日租金</label>
							<div class="col-sm-8">
								<input type="text" name="vehicleDailyRent" class="form-control" id="vehicleDailyRent_update_input">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">押金</label>
							<div class="col-sm-8">
								<input type="text" name="vehicleCashPledge" class="form-control" id="vehicleCashPledge_update_input">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">车状态</label>
							<div class="col-sm-8">
								<label class="radio-inline"> 
								    <input type="radio" name="vehicleState"  value="1" >可租用
								</label> 
								<label class="radio-inline"> 
								    <input type="radio" name="vehicleState"  value="-1">不可租用
								</label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">被租统计</label>
							<div class="col-sm-8">
								<input type="text" name="vehicleRentalStatistic" class="form-control" id="vehicleRentalStatistic_update_input">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">车描述</label>
							<div class="col-sm-8">
								 <textarea name="vehicleIntroduction" class="layui-textarea" id="vehicleIntroduction_update_input"></textarea>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary" id="vehicle_update_btn">保存</button>
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
					<h4 class="modal-title" >图片显示</h4>
				</div>
				<div class="modal-body">
					    <div class="form-group">
							<label class="col-sm-2 control-label">图片1</label>
							<div class="col-sm-10">
								<img  src="" id="pic1" width="400px" height="300px">
							</div>
						</div>
						 <div class="form-group">
							<label class="col-sm-2 control-label">图片2</label>
							<div class="col-sm-10">
								<img  src="" id="pic2" width="400px" height="300px">
							</div>
						</div>
						 <div class="form-group">
							<label class="col-sm-2 control-label">图片3</label>
							<div class="col-sm-10">
								<img  src="" id="pic3" width="400px" height="300px">
							</div>
						</div>
						 <div class="form-group">
							<label class="col-sm-2 control-label">图片4</label>
							<div class="col-sm-10">
								<img  src="" id="pic4" width="400px" height="300px">
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
	<div class="container" style="width: 100%;">
		<!-- 按钮 -->
		<div class="row">
			<div class="col-md-4 col-md-offset-9">
				<button class="btn btn-danger" id="vehicle_delete_all_btn"> 
					<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>批量删除
				</button>
			</div>
		</div>
		<!-- 显示表格数据 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="vehicle_table">
					<thead>
						<tr>
						    <th>
						        <input type="checkbox" id="check_all">
						    </th>
							<th>#</th>
							<th>车名</th>
							<th>车牌号</th>
							<th>类型</th>
							<th>品牌</th>
							<th>颜色</th>
							<th>车龄</th>
							<th>排量</th>
							<th>能源类型</th>
							<th>能源容量</th>
							<th>车座数</th>
							<th>日租金</th>
							<th>押金</th>
							<th>车状态</th>
							<th>被租次数</th>
							<th>车描述</th>
							<th>图片</th>
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
});

$(function(){
	//查询所有的类型并显示在下拉列表中 
	getClasses();
	//查询所有的品牌并显示在下拉列表中 
	getBrands();
});

//查询所有的类型并显示在下拉列表中 
function getClasses(){
	$.ajax({
		url:"${APP_PATH}/getClasses",
		type:"GET",
		async : false,//ajax异步的问题，append方法在success回调函数里面，在append方法还未执行时,layui.form();已经将表单渲染了
		success:function(result){
			$.each(result.extend.classes,function(){
				var classesOption = $("<option></option>").append(this.vehicleClass).attr("value",this.vehicleClassNumber);
				 classesOption.appendTo("#vehicleClassNumber_condition");
				 var classOption = $("<option></option>").append(this.vehicleClass).attr("value",this.vehicleClassNumber);
				 classOption.appendTo("#vehicleClassNumber_update_select");
				 
			});
		}
	});
}
//查询所有的品牌并显示在下拉列表中 
function getBrands(){
	$.ajax({
		url:"${APP_PATH}/getAllBrands",
		type:"GET",
		async : false,
		success:function(result){
			$.each(result.extend.list,function(){ 
				var brandOption = $("<option></option>").append(this.vehicleBrand).attr("value",this.vehicleBrandNumber);
				brandOption.appendTo("#vehicleBrandNumber_condition");
				var brandsOption = $("<option></option>").append(this.vehicleBrand).attr("value",this.vehicleBrandNumber);
				brandsOption.appendTo("#vehicleBrandNumber_update_select");	
			});
		}
	});
}

$("#findWithCondition").click(function(){
	to_page(1);
});

function to_page(pn){
	  $("#check_all").prop("checked",false);
	  $.ajax({
		  url : "${APP_PATH}/selectVehicleByConditions/"+pn,
		  type : "POST",
		  data : $("#Form").serialize(),
		  success : function(result){
			  //1.解析并显示车数据 
			  build_vehicle_table(result);
			  //2.解析并显示分页信息
			  build_page_info(result);
			  //3.解析显示分页条数据
			  build_page_nav(result);
		  }
	  });
}

//1.解析并显示数据 
function build_vehicle_table(result) {
	$("#vehicle_table tbody").empty();
	var vehicles = result.extend.pageInfo.list;
	$.each(vehicles, function(index, item) {
		var checkboxTd = $("<td><input type='checkbox' class='check_item'/></td>");
		var vehicleIdTd = $("<td></td>").append(item.vehicleId);
		var vehicleNameTd = $("<td></td>").append(item.vehicleName);
		var vehiclePlateNumberTd = $("<td></td>").append(item.vehiclePlateNumber);
		var vehicleClassTd = $("<td></td>").append(item.vehicleClass.vehicleClass);
		var vehicleBrandTd = $("<td></td>").append(item.vehicleBrand.vehicleBrand);
		var vehicleColorTd = $("<td></td>").append(item.vehicleColor);
		var vehicleAgeTd = $("<td></td>").append(item.vehicleAge);
		var vehicleDisplacementTd = $("<td></td>").append(item.vehicleDisplacement);
		var vehicleOilTypeTd = $("<td></td>").append(item.vehicleOilType);
		var vehicleOilCapacityTd = $("<td></td>").append(item.vehicleOilCapacity);
		var vehicleSeatNumTd = $("<td></td>").append(item.vehicleSeatNum);
		var vehicleDailyRentTd = $("<td></td>").append(item.vehicleDailyRent);
		var vehicleCashPledgeTd = $("<td></td>").append(item.vehicleCashPledge);
		var vehicleStateTd = $("<td></td>").append(item.vehicleState);
		var vehicleRentalStatisticTd = $("<td></td>").append(item.vehicleRentalStatistic);
		var vehicleIntroductionTd = $("<td></td>").append(item.vehicleIntroduction);
		
		var imageButton = $("<button></button>").addClass("btn btn-primary btn-sm btn-info pic_btn")
		.append($("<span></span>").addClass("glyphicon glyphicon-search")).append("查看图片");
		imageButton.attr("vehicleId",item.vehicleId); 
		var imageAltButton = $("<button></button>").addClass("btn btn-warning btn-sm pic_alt_btn")
		.append($("<span></span>").addClass("glyphicon glyphicon-cog")).append("修改图片");
		imageAltButton.attr("vehicleId",item.vehicleId); 
		var vehicleImagesTd = $("<td></td>").append(imageButton).append(" ").append(imageAltButton);
		
		var editButton = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
		.append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");
		editButton.attr("editvehicleId",item.vehicleId); 
		var deleteButton = $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
		.append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
		deleteButton.attr("delvehicleId",item.vehicleId);
		var btnTd = $("<td></td>").append(editButton).append(" ").append(deleteButton);
		$("<tr></tr>").append(checkboxTd)
				  	  .append(vehicleIdTd)
					  .append(vehicleNameTd)
					  .append(vehiclePlateNumberTd)
					  .append(vehicleClassTd)
					  .append(vehicleBrandTd)
					  .append(vehicleColorTd)
					  .append(vehicleAgeTd)
					  .append(vehicleDisplacementTd)
					  .append(vehicleOilTypeTd)
					  .append(vehicleOilCapacityTd)
					  .append(vehicleSeatNumTd)
					  .append(vehicleDailyRentTd)
					  .append(vehicleCashPledgeTd)
					  .append(vehicleStateTd)
					  .append(vehicleRentalStatisticTd)
					  .append(vehicleIntroductionTd)
					  .append(vehicleImagesTd)
					  .append(btnTd)
					  .appendTo("#vehicle_table tbody");
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
}

//为每个查看按钮绑定时间
$(document).on("click",".pic_btn",function(){
	$("#picShow").modal({
		backdrop : "static"
	});
	$.ajax({
		url:"${APP_PATH}/getOneVehicle/"+$(this).attr("vehicleId"),
		type:"GET",
		success:function(result){
			var vehicle = result.extend.vehicle;
			$("#pic1").prop("src","/imgPath/"+vehicle.vehicleImage1);
			$("#pic2").prop("src","/imgPath/"+vehicle.vehicleImage2);
			$("#pic3").prop("src","/imgPath/"+vehicle.vehicleImage3);
			$("#pic4").prop("src","/imgPath/"+vehicle.vehicleImage4);
		}
	});
});
//点击更改图片
$(document).on("click",".pic_alt_btn",function(){
	$.ajax({
		url:"${APP_PATH}/getOneVehicle/"+$(this).attr("vehicleId"),
		type:"GET",
		success:function(result){
			var vehicle = result.extend.vehicle;
			$("#altPic1").prop("src","/imgPath/"+vehicle.vehicleImage1);
			$("#altPic2").prop("src","/imgPath/"+vehicle.vehicleImage2);
			$("#altPic3").prop("src","/imgPath/"+vehicle.vehicleImage3);
			$("#altPic4").prop("src","/imgPath/"+vehicle.vehicleImage4);
			$("#altbtn1").prop("value",vehicle.vehicleId);
			$("#altbtn2").prop("value",vehicle.vehicleId);
			$("#altbtn3").prop("value",vehicle.vehicleId);
			$("#altbtn4").prop("value",vehicle.vehicleId);
			$("#imgSub1").attr("vehicleId",vehicle.vehicleId);
			$("#imgSub2").attr("vehicleId",vehicle.vehicleId);
			$("#imgSub3").attr("vehicleId",vehicle.vehicleId);
			$("#imgSub4").attr("vehicleId",vehicle.vehicleId);
			$("#imgSub1").attr("code","1");
			$("#imgSub2").attr("code","2");
			$("#imgSub3").attr("code","3");
			$("#imgSub4").attr("code","4");
		}
	});
	$("#vehiclePicUpdateModal").modal({
		backdrop : "static"
	});
});

function getPicAgain(ele){
	$.ajax({
		url:"${APP_PATH}/getOneVehicle/"+$(ele).attr("vehicleId"),
		type:"GET",
		success:function(result){
			var vehicle = result.extend.vehicle;
			$("#altPic1").prop("src","/imgPath/"+vehicle.vehicleImage1);
			$("#altPic2").prop("src","/imgPath/"+vehicle.vehicleImage2);
			$("#altPic3").prop("src","/imgPath/"+vehicle.vehicleImage3);
			$("#altPic4").prop("src","/imgPath/"+vehicle.vehicleImage4);
		}
	});
}

//点击保存，修改图片
$("#imgSub1").click(function(){
	if($("#altInput1").get(0).files[0]){
	var formData = new FormData();
	formData.append("file", $("#altInput1")[0].files[0]);
	formData.append("code", $("#imgSub1").attr("code"));
	$.ajax({
		url:"${APP_PATH}/altImage1/"+$(this).attr("vehicleId"),
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
$("#imgSub2").click(function(){
	if($("#altInput2").get(0).files[0]){
	var formData = new FormData();
	formData.append("file", $("#altInput2")[0].files[0]);
	formData.append("code", $("#imgSub2").attr("code"));
	$.ajax({
		url:"${APP_PATH}/altImage1/"+$(this).attr("vehicleId"),
		type:"POST",
		data:formData,
		cache: false,
	    processData: false,
	    contentType: false,
		success:function(result){
			alert("保存成功");
			getPicAgain("#imgSub2");
		}
	});
	}else{
		alert("图片为空，请选择图片");
	}
});
$("#imgSub3").click(function(){
	if($("#altInput3").get(0).files[0]){
	var formData = new FormData();
	formData.append("file", $("#altInput3")[0].files[0]);
	formData.append("code", $("#imgSub3").attr("code"));
	$.ajax({
		url:"${APP_PATH}/altImage1/"+$(this).attr("vehicleId"),
		type:"POST",
		data:formData,
		cache: false,
	    processData: false,
	    contentType: false,
		success:function(result){
			alert("保存成功");
			getPicAgain("#imgSub3");
		}
	});
	}else{
		alert("图片为空，请选择图片");
	}
});
$("#imgSub4").click(function(){
	if($("#altInput4").get(0).files[0]){
	var formData = new FormData();
	formData.append("file", $("#altInput4")[0].files[0]);
	formData.append("code", $("#imgSub4").attr("code"));
	$.ajax({
		url:"${APP_PATH}/altImage1/"+$(this).attr("vehicleId"),
		type:"POST",
		data:formData,
		cache: false,
	    processData: false,
	    contentType: false,
		success:function(result){
			alert("保存成功");
			getPicAgain("#imgSub4");
		}
	});
	}else{
		alert("图片为空，请选择图片");
	}
});


//为每个查看按钮绑定时间
$(document).on("click",".edit_btn",function(){
	//显示模态框
	$("#vehicleUpdateModal").modal({
		backdrop : "static"
	});
	//将id传给模态框的更新按钮,
	$("#vehicle_update_btn").attr("vehicleID",$(this).attr("editvehicleId"));
	//查出信息，显示在表单中
	$.ajax({
		url:"${APP_PATH}/getOneVehicle/"+$(this).attr("editvehicleId"),
		type:"GET",
		success:function(result){
			var vehicle = result.extend.vehicle;
			$("#vehicleId_update_input").text(vehicle.vehicleId);
			$("#vehiclePlateNumber_update_input").text(vehicle.vehiclePlateNumber);
			$("#vehicleClassNumber_update_select").val([vehicle.vehicleClassNumber]);
			$("#vehicleBrandNumber_update_select").val([vehicle.vehicleBrandNumber]);
			$("#vehicleName_update_input").val(vehicle.vehicleName);
			$("#vehicleColor_update_input").val(vehicle.vehicleColor);
			$("#vehicleAge_update_input").val(vehicle.vehicleAge);
			$("#vehicleDisplacement_update_input").val(vehicle.vehicleDisplacement);
			$("#vehicleOilType_update_input").val(vehicle.vehicleOilType);
			$("#vehicleOilCapacity_update_input").val(vehicle.vehicleOilCapacity);
			$("#vehicleSeatNum_update_input").val(vehicle.vehicleSeatNum);
			$("#vehicleDailyRent_update_input").val(vehicle.vehicleDailyRent);
			$("#vehicleCashPledge_update_input").val(vehicle.vehicleCashPledge);
			$("#vehicleUpdateModal input[name=vehicleState]").val([vehicle.vehicleState]);
			$("#vehicleRentalStatistic_update_input").val(vehicle.vehicleRentalStatistic);
			$("#vehicleIntroduction_update_input").val(vehicle.vehicleIntroduction);
		}
	});
});

//点击保存按钮，更新数据
$("#vehicle_update_btn").click(function(){
	$.ajax({
		url:"${APP_PATH}/updateVehicle/"+$("#vehicle_update_btn").attr("vehicleID"),
		type:"PUT",
		data:$("#upd").serialize(),
		success:function(result){
			//提示成功
			alert(result.msg);
			//隐藏模态框
			$("#vehicleUpdateModal").modal('hide');
			//跳转到当前页
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

//删除一个车车
$(document).on("click",".delete_btn",function(){
	var vehiclePlateNumber = $(this).parents("tr").find("td:eq(3)").text();
	if(confirm("确定删除"+vehiclePlateNumber+"吗?")){
		$.ajax({
			url:"${APP_PATH}/delVehicle/"+$(this).attr("delvehicleId"),
			type:"DELETE",
			success:function(result){
				alert(result.msg);
				to_page(currentPage);
			}
		});
	}
});

//删除多个车车
$("#vehicle_delete_all_btn").click(function(){
	var vehicleId = "";
	var vehiclePlateNumber = "";
	$.each($(".check_item:checked"),function(){
		vehicleId += $(this).parents("tr").find("td:eq(1)").text() + "-";
		vehiclePlateNumber += $(this).parents("tr").find("td:eq(3)").text() + ",";
	});
	vehiclePlateNumber = vehiclePlateNumber.substring(0,vehiclePlateNumber.length-1);
	if(confirm("确定删除"+vehiclePlateNumber+"吗?")){
		$.ajax({
			url:"${APP_PATH}/delVehicle/"+vehicleId,
			type:"DELETE",
			success :function(result){
				alert(result.msg);
				to_page(currentPage);
			}
		});
	}
});

$("#resetbtn").click(function(){
   $("#Form")[0].reset();
　  layui.form.render();
});

</script>
</body>
</html>