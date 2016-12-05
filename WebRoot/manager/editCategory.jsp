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
		<div class="easyui-panel" title="宠物信息"
			data-options="fit:true,border:true">

			<div style="padding:10px 60px 20px 60px">
				<form id="ff" method="post" action="Pcategory_editCategory_queryPet.action">
					<table cellpadding="5">

						<input type="hidden" value="${category.categoryid }" name="categoryid"
							editable="false"></input>
						<tr>
							<td>宠物名称:</td>
							<td><input class="easyui-textbox" type="text"
								value="${category.type }" name="type" 
								data-options="required:true"></input>
							</td>
						</tr>
						<tr>
							<td>性别:</td>
							<td><select class="easyui-combobox" name="sex" editable="false">
									<option value="公" >公&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
									<option value="母">母&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
							</select>
							</td>
						</tr>
						<tr>
							<td>年龄:</td>
							<td><input class="easyui-textbox" type="text" value="${category.age }" name="age"
								data-options="required:true"></input>
							</td>
						</tr>
						<tr>
							<td>疫苗状况:</td>
							<td><input class="easyui-textbox" type="text" value="${category.vaccin }" name="vaccin"
								data-options="required:true"></input>
							</td>
						</tr>
						<tr>
							<td>宠物价格:</td>
							<td><input class="easyui-textbox" type="text" value="${category.price }" name="price"
								data-options="required:true"></input>
							</td>
						</tr>
						<tr>
							<td>图片地址:</td>
							<td><input class="easyui-textbox" type="text" value="${category.image }" name="image"
								data-options="required:true"></input>
							</td>
						</tr>
						<tr>
							<td>宠物描述:</td>
							<td>
								<textarea id="" rows=5 cols="50" name="detail" value="" class="textarea easyui-validatebox">${category.detail }</textarea>
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
