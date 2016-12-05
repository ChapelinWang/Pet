<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="checklogin.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title></title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css"
	href="easyUI/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="easyUI/themes/icon.css">
<link rel="stylesheet" type="text/css" href="easyUI/demo/demo.css">
<script type="text/javascript" src="easyUI/jquery.min.js"></script>
<script type="text/javascript" src="easyUI/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyUI/locale/easyui-lang-zh_CN.js"></script>
</head>
<body style="background-image:url('img/center.jpg');">
	<div style="width: 600px;">
		<div style="margin:20px 50px;"></div>
		<div class="easyui-panel" title="用户信息"
			data-options="fit:true,border:true">

			<div style="padding:10px 60px 20px 60px">
				<form id="ff" method="post" action="Puser_editUser_query.action">
					<table cellpadding="5">

						<input type="hidden" value="${user.userid }" name="userid"
							editable="false"></input>
						<input type="hidden" value="${user.power }" name="power"
							editable="false"></input>

						<tr>
							<td>用户名:</td>
							<td><input class="easyui-textbox" type="text"
								value="${user.username }" name="username" editable="false"
								data-options="required:true"></input>
							</td>
						</tr>
						<tr>
							<td>密码:</td>
							<td><input class="easyui-textbox" type="text"
								value="${user.userpassword }" name="userpassword"
								data-options="required:true"></input>
							</td>
						</tr>
						<tr>
							<td>邮箱:</td>
							<td><input class="easyui-textbox" type="text" name="email"
								value="${user.email }"
								data-options="required:true,validType:'email'"></input>
							</td>
						</tr>
						<tr>
							<td><input style="text-align:center;padding:5px"
								class="easyui-linkbutton" type="submit" value="修改" /> <input
								style="text-align:center;padding:5px" class="easyui-linkbutton"
								type="reset" value="重置" />
							</td>
						</tr>
					</table>
				</form>
			
			</div>
		</div>

	</div>
</body>

</html>
