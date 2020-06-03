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
			<h2 class="modal-title" >车辆添加</h2>
		</div>

<form class="layui-form layui-form-pane" id="Form">
        <div class="layui-form-item">
		    <label class="layui-form-label">类别</label>
		    <div class="layui-input-block">
		      <select name="vehicleClassNumber" lay-verify="required" id="vehicleClassNumber_add_select">
		        <option value=""></option>
		      </select>
		    </div>
		  </div>
		  <div class="layui-form-item">
		    <label class="layui-form-label">品牌</label>
		    <div class="layui-input-block">
		      <select name="vehicleBrandNumber" lay-verify="required" id="vehicleBrandNumber_add_select">
		        <option value=""></option>
		      </select>
		    </div>
		  </div>
		 <div class="layui-form-item">
			<label class="layui-form-label">车名</label>
			<div class="layui-input-block">
				<input type="text" name="vehicleName" required lay-verify="required"
					placeholder="请输入车名(车品牌 名字)"  autocomplete="off" class="layui-input" id="vehicleName_add_input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">车牌号</label>
			<div class="layui-input-block">
				<input type="text" name="vehiclePlateNumber" required lay-verify="required"
					placeholder="请输入车牌号" autocomplete="off" class="layui-input" id="vehiclePlateNumber_add_input" >
					<span style="font-size: 20px" id="plateNumber_span"></span>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">颜色</label>
			<div class="layui-input-block">
				<input type="text" name="vehicleColor" required lay-verify="required"
					placeholder="请输入颜色" autocomplete="off" class="layui-input" id="vehicleColor_add_input" >
					<span style="font-size: 20px"></span>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">车龄</label>
			<div class="layui-input-block">
				<input type="text" name="vehicleAge" required
					lay-verify="required"  autocomplete="off"
					class="layui-input" id="vehicleAge_add_input"  placeholder="请输入车龄" >
					<span style="color: red;font-size: 20px" ></span>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">车排量</label>
			<div class="layui-input-block">
				<input type="text" name="vehicleDisplacement" required
					lay-verify="required"  autocomplete="off"
					class="layui-input" id="vehicleDisplacement_add_input" placeholder="请输入车排量" >
					<span style="color: red;font-size: 20px"></span>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">车能源</label>
			<div class="layui-input-block">
				<input type="text" name="vehicleOilType" required
					lay-verify="required"  autocomplete="off"
					class="layui-input" id="vehicleOilType_add_input" placeholder="请输入车能源(没有填无)" >
					<span style="color: red;font-size: 20px"></span>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">能源容量</label>
			<div class="layui-input-block">
				<input type="text" name="vehicleOilCapacity" required
					lay-verify="required"  autocomplete="off"
					class="layui-input" id="vehicleOilCapacity_add_input" placeholder="请输入车能源容量(没有填无)"" >
					<span style="color: red;font-size: 20px"></span>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">座椅数</label>
			<div class="layui-input-block">
				<input type="text" name="vehicleSeatNum" required
					lay-verify="required"  autocomplete="off"
					class="layui-input" id="vehicleSeatNum_add_input" placeholder="请输入座椅数" >
					<span style="color: red;font-size: 20px"></span>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">日租价格</label>
			<div class="layui-input-block">
				<input type="text" name="vehicleDailyRent" required
					lay-verify="required"  autocomplete="off"  
					class="layui-input" id="vehicleDailyRent_add_input" placeholder="请输入车日租价格"  oninput="value=value.replace(/^\D*(\d*(?:\.\d{0,2})?).*$/g, '$1')">
					<span style="color: red;font-size: 20px"></span>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">押金</label>
			<div class="layui-input-block">
				<input type="text" name="vehicleCashPledge" required
					lay-verify="required"  autocomplete="off" 
					class="layui-input" id="vehicleCashPledge_add_input" placeholder="请输入车押金"  oninput="value=value.replace(/^\D*(\d*(?:\.\d{0,2})?).*$/g, '$1')" >
					<span style="color: red;font-size: 20px"></span>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">车状态</label>
			 <div class="layui-input-block">
				<input type="radio" name="vehicleState" value="1" checked title="可租用" >
				<input type="radio" name="vehicleState" value="-1"  title="不可租用" >
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">图片1</label>
			<div class="layui-input-block">
			<input type="file" name="vehicleImage1" class="layui-input" id="vehicleImage1_add_input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">图片2</label>
			<div class="layui-input-block">
				<input type="file" name="vehicleImage2" class="layui-input" id="vehicleImage2_add_input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">图片3</label>
			<div class="layui-input-block">
			<input type="file" name="vehicleImage3" class="layui-input" id="vehicleImage3_add_input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">图片4</label>
			<div class="layui-input-block">
			<input type="file" name="vehicleImage4" class="layui-input" id="vehicleImage4_add_input">
			</div>
		</div>
		<div class="layui-form-item layui-form-text">
		    <label class="layui-form-label">介绍</label>
		    <div class="layui-input-block">
		      <textarea name="vehicleIntroduction" placeholder="请输入介绍" class="layui-textarea" id="vehicleIntroduction_add_input"></textarea>
		    </div>
		 </div>
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo" id="preserve">保存</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</div>
	</form>

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
						 classesOption.appendTo("#vehicleClassNumber_add_select");						
					});
				}
			});
		}
		//查询所有的品牌并显示在下拉列表中 
		function getBrands(){
			$.ajax({
				url:"${APP_PATH}/getAllBrands",
				type:"GET",
				async : false,//ajax异步的问题，append方法在success回调函数里面，在append方法还未执行时,layui.form();已经将表单渲染了
				success:function(result){
					$.each(result.extend.list,function(){
						var brandOption = $("<option></option>").append(this.vehicleBrand).attr("value",this.vehicleBrandNumber);
						brandOption.appendTo("#vehicleBrandNumber_add_select");						
					});
				}
			});
		}
		
		//清楚当前元素的校验状态
		function show_validate_msg(element,status,msg){
        	//去除之前样式
        	$(element).next("span").text("");
			if("success" == status){
				$(element).next("span").text(msg);
				$(element).next("span").prop("style","color:#009688;font-size: 20px;");
				//document.getElementById("plateNumber_span").style.color="#009688";
			}else if("error" == status){
				$(element).next("span").text(msg);
				document.getElementById("plateNumber_span").style.color="red";
			}
		}
		
		$("#vehiclePlateNumber_add_input").change(function(){
			$.ajax({
				url:"${APP_PATH}/isExistPlateNumber",
				type:"POST",
				data:{vehiclePlateNumber : $("#vehiclePlateNumber_add_input").val()},
				success:function(result){
					if(result.code == 100){
						show_validate_msg("#vehiclePlateNumber_add_input","success","车牌号可用");
					}else{
						show_validate_msg("#vehiclePlateNumber_add_input","error",result.extend.pnum_msg);
					}
				}
			});
		});
		
		//点击保存按钮保存 
		$("#preserve").click(function(){
		 var formData = new FormData();
		    formData.append("file1", $("#vehicleImage1_add_input")[0].files[0]);
		    formData.append("file2", $("#vehicleImage2_add_input")[0].files[0]);
		    formData.append("file3", $("#vehicleImage3_add_input")[0].files[0]);
		    formData.append("file4", $("#vehicleImage4_add_input")[0].files[0]);
		    formData.append("vehicleClassNumber", $('#vehicleClassNumber_add_select option:selected').val());
		    formData.append("vehicleBrandNumber", $('#vehicleBrandNumber_add_select option:selected').val());
		    formData.append("vehicleName", $('#vehicleName_add_input').val());
		    formData.append("vehiclePlateNumber", $('#vehiclePlateNumber_add_input').val());
		    formData.append("vehicleColor", $('#vehicleColor_add_input').val());
		    formData.append("vehicleAge", $('#vehicleAge_add_input').val());
		    formData.append("vehicleDisplacement", $('#vehicleDisplacement_add_input').val());
		    formData.append("vehicleOilType", $('#vehicleOilType_add_input').val());
		    formData.append("vehicleOilCapacity", $('#vehicleOilCapacity_add_input').val());
		    formData.append("vehicleSeatNum", $('#vehicleSeatNum_add_input').val());
		    formData.append("vehicleDailyRent", $('#vehicleDailyRent_add_input').val());
		    formData.append("vehicleCashPledge", $('#vehicleCashPledge_add_input').val());
		    formData.append("vehicleState", $("input[name='vehicleState']:checked").val());
		    formData.append("vehicleIntroduction", $('#vehicleIntroduction_add_input').val());
		    $.ajax({
		    	url:"${APP_PATH}/addOne",
		    	type:"POST",
		        data: formData, 
		        cache: false,
		        processData: false,
		        contentType: false,
		        async: false,
		        success:function(result){
		        	if(result.code == 100){
		        		alert("保存成功");
		        	}else{
		        		alert("失败");
		        	}
		        }
		    }); 
	}); 
	
	</script>
</body>
</html>