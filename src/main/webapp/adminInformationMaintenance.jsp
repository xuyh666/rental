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
     #sub {
            background: #D0EEFF;
            border: 1px solid #99D3F5;
            border-radius: 4px;
            padding: 4px 12px;
            overflow: hidden;
            color: #1E88C7;
            text-decoration: none;
            text-indent: 0;
            line-height: 20px;
        }
    </style>
</head>
<body>
<input type="hidden" value="<%=request.getParameter("adminId")%>" id="a">

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
	<!--个人信息显示  -->
	<table class="table table-hover">
	   <tr>
			   <td>头像</td>
			   <td><img  src="" id="adminHead" class="img-circle" height="50px" width="50px"></td>
			   <td>
			   <form action="saveHeadPortrait" method="post" enctype="multipart/form-data">
			   <input type="hidden" value="<%=request.getParameter("adminId")%>" name="adminId">
                      <a class="btn btn-default" href="#" role="button" id="inp">
                           更换头像<input type="file" name="file" style="opacity: 0;display: inline-block; width: 50px">
                      </a>
					<input type="submit" value="保存" id="sub">
				</form>
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
			   <td>编号</td>
			   <td id="adminId"></td>
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
			   <td>用户名</td>
			   <td id="adminUsername"></td>
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
			   <td>密码</td>
			   <td id="adminPassword"></td>
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
			   <td>性别</td>
			   <td id="adminGender"></td>
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
			   <td>手机号</td>
			   <td id="adminPhoneNumber"></td>
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
			   <td>等级</td>
			   <td id="adminLevel"></td>
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
			   <td><button type="button" class="btn btn-success" id="update">修改</button></td>
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
			   <td></td>
			 </tr>
	</table>

<script type="text/javascript">

//获取登录者信息 result.extend.admin.
var Id = $("#a").val();
$(function() {

	//为维护个人信息标签添加链接地址
	var jspSrc = "adminInformationMaintenance.jsp?adminId="+Id;
    $("#adminInformationMaintenance").prop("href",jspSrc);			
	//获取登录者信息 result.extend.admin.
	$.ajax({
		url : "${APP_PATH}/findById",
		type : "GET",
		data : {
			adminId : Id
		},
		success : function(result) {
			//alert(result.extend.admin.adminPhonenumber);
			$("#adminHead").prop("src","/imgPath/"+result.extend.admin.adminHeadportrait);
			$("#adminId").text(result.extend.admin.adminId);
			$("#adminUsername").text(result.extend.admin.adminUsername);
			$("#adminPassword").text(result.extend.admin.adminPassword);
			$("#adminGender").text(result.extend.admin.adminGender);
			$("#adminPhoneNumber").text(result.extend.admin.adminPhonenumber);
			$("#adminLevel").text(result.extend.admin.adminLevel);
		}
	});
});

//点击修改弹出模态框
$("#update").click(function(){
	//通过id获得个人信息
	 getAdmin($("#a").val()); 
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
		url :"${APP_PATH}/updateAdmin/"+$("#a").val(),
		type :"PUT",
		data:$("#adminUpdateModal form").serialize(),
		success :function(result){
			if(result.code == 100){
				//提示
				alert("修改成功");
				//隐藏模态框
				$("#adminUpdateModal").modal("hide");
				//返回到当前页
				window.location.reload();
			}
		}
	});
});
</script>
</body>
</html>