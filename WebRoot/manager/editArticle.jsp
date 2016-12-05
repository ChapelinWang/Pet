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
		<div class="easyui-panel" title="文章信息"
			data-options="fit:true,border:true">

			<div style="padding:10px 60px 20px 60px">
				<form id="ff" method="post"
					action="Particle_editArticle_queryArticle.action">
					<table cellpadding="5">

						<input type="hidden" value="${particle.articleid }"
							name="articleid" editable="false"></input>

						<tr>
							<td>文章主题:</td>
							<td><input class="easyui-textbox" type="text"
								value="${particle.title }" name="title"
								data-options="required:true"></input></td>
						</tr>
						<tr>
							<td>发布作者:</td>
							<td><input type="hidden" name="userid"
								value="${session.user.userid }"> <input
								class="easyui-textbox" type="text" editable="false"
								value="${session.user.username }" data-options="required:true"></input>
							</td>
						</tr>
						<tr>
							<td>发布时间:</td>
							<td><input class="easyui-textbox" type="date"
								value="${particle.time }" name="time"
								data-options="required:true"></input></td>
						</tr>
						<tr>
							<td>文章内容:</td>
							<td><textarea id="" rows=5 cols="50" name="article"
									class="textarea easyui-validatebox">${particle.article }</textarea>
							</td>
						</tr>
						<tr>
							<td>文章图片:</td>
							<td><input class="easyui-textbox" type="text"
								value="${particle.image}" name="image"
								data-options="required:true"></input></td>
						</tr>
						<tr>
							<td><input style="text-align:center;padding:5px"
								class="easyui-linkbutton" type="submit" value="修改" /> <input
								style="text-align:center;padding:5px" class="easyui-linkbutton"
								type="reset" value="重置" /></td>
						</tr>
					</table>
				</form>

			</div>
		</div>

	</div>
</body>

</html>
