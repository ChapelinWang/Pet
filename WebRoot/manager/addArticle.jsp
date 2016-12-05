<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="checklogin.jsp"%>
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
<script src="../ckeditor/ckeditor.js"></script>
<script src="../ckeditor/samples/js/sample.js"></script>
<link rel="stylesheet" href="../ckeditor/samples/css/samples.css">
<link rel="stylesheet"
	href="../ckeditor/samples/toolbarconfigurator/lib/codemirror/neo.css">

</head>
<body style="background-image:url('img/center.jpg');">
	<div style="width: 600px; height: 455px;" >
		<div style="margin: 0px 100px;"></div>
		<div class="easyui-panel" title="文章信息"
			data-options="fit:true,border:true">

			<div style="padding:10px 60px 20px 60px">
				<form id="ff" method="post"
					action="Particle_insertArticle_addArticle.action">
					<table cellpadding="5">

						<input type="hidden" name="articleid" editable="false"></input>

						<tr>
							<td>文章主题:</td>
							<td><input class="easyui-textbox" type="text" name="title"
								data-options="required:true"></input><font style="color: red;font-size: 15px;">${message }</font></td>
						</tr>
						<tr>
							<td>发布作者:</td>
							<td> <input
								class="easyui-textbox" type="text" editable="false"
								value="${session.user.username }" data-options="required:true"></input>
							</td>
						</tr>

						<tr>
							<td>发布时间:</td>
							<td><input class="easyui-textbox" type="date" name="time"
								data-options="required:true"></input></td>
						</tr>
						<tr>
							<td>文章内容:</td>
							<td><textarea  class="ckeditor" rows="3" cols="60" name="article"
									class="textarea easyui-validatebox"></textarea>
							</td>
						</tr>
						<tr>
							<td>文章图片:</td>
							<td><input class="easyui-textbox" type="text" name="image"
								 data-options="required:true"></input></td>
						</tr>
						<tr>
							<td><input style="text-align:center;padding:5px"
								class="easyui-linkbutton" type="submit" value="添加" /> <input
								style="text-align:center;padding:5px" class="easyui-linkbutton"
								type="reset" value="重置" /></td>
						</tr>
					</table>
				</form>
				
			</div>
		</div>

	</div>
</body>
<script>
	initSample();
</script>
</html>
