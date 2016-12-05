<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="checklogin.jsp" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/manager/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>小强宠物后台</title>
<base href="<%=basePath%>" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>easyUI/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>easyUI/themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>easyUI/demo/demo.css">
<script type="text/javascript"
	src="<%=basePath%>easyUI/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>easyUI/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>easyUI/locale/easyui-lang-zh_CN.js"></script>
<style type="text/css">
.myul {
	list-style: none;
	padding: 0px;
	margin: 0;
}

.myul li {
	border: 1px solid #fff;
}

.myul li a {
	text-decoration: none;
	display: block;
	background-color: #d9d6c3;
	color: #000;
	padding: 10px;
}

.myul li a:HOVER {
	text-decoration: none;
	display: block;
	background-color: #d1c7b7;
	color: #000;
	padding: 10px;
}
</style>

<script type="text/javascript">
	$(function() {
		$("a[title]")
				.click(
						function() {
							var text = $(this).text();
							var href = $(this).attr("title");

							if ($("#tt").tabs("exists", text)) {
								$("#tt").tabs("select", text);
								var tab = $('#tt').tabs('getSelected'); // 获取选择的面板
								$('#tt')
										.tabs(
												'update',
												{
													tab : tab,
													options : {
														title : text,

														content : '<iframe width="100%" height="100%" src='
																+ href
																+ '></iframe>' // 新内容的URL
													}
												});

							} else {
								$("#tt")
										.tabs(
												"add",
												{
													title : text,
													closable : true,
													content : '<iframe width="100%" height="100%" src='
															+ href
															+ '></iframe>'
												});
							}

						});
	});
</script>
<script type="text/javascript">
	function qq(value, name) {
		var url = name + '?sc=' + value;
		var text = '搜索结果';
		if ($("#tt").tabs("exists", text)) {
			$("#tt").tabs("select", text);
			var tab = $('#tt').tabs('getSelected'); // 获取选择的面板
			$('#tt')
					.tabs(
							'update',
							{
								tab : tab,
								options : {
									title : text,
									content : "<iframe width='100%' height='100%' src='"
											+ url + "'></iframe>" // 新内容的URL
								}
							});

		} else {
			$("#tt").tabs(
					"add",
					{
						title : text,
						closable : true,
						content : '<iframe width="100%" height="100%" src='
								+ url + '></iframe>'
					});
		}
	}
</script>



</head>
<body class="easyui-layout">

	<div data-options="region:'north',border:false"
		style="height:100px;padding:10px;background-image:url('img/north.jpg');">

		<div style="height:50px;width:1000px;">
			<span style="margin-left: 200px;font-size: 20px;">用户:${user.username}<a href="Puser_logout.action" style="text-decoration: none;font-size: 18px;">&nbsp;&nbsp;注销</a><a href="../jsp/index.jsp" style="text-decoration: none;font-size: 18px;">&nbsp;&nbsp;首页</a><span>
		</div>
		<div style="" align="center">
			<input id="ss" class="easyui-searchbox"
				style="width:250px;height: 30px;"
				data-options="searcher:qq,prompt:'请输入相关信息',menu:'#mm'"></input>

			<div id="mm" style="width:120px">
				<div data-options="name:'Send_search.action'">搜用户</div>
				<div data-options="name:'Send_searchPet.action'">搜宠物</div>
				<div data-options="name:'Send_searchPcomment.action'">搜评论</div>
				<div data-options="name:'Send_searchPorder.action'">搜订单</div>
				<div data-options="name:'Send_searchArticle.action'">搜文章</div>
			</div>
		</div>
	</div>
	<div data-options="region:'west',split:true,title:'管理菜单'"
		style="width:180px;">
		<div id="aa" class="easyui-accordion" data-options="fit:true"
			style="width:180x;height:100%;multiple:true;">
			<div title="宠物信息管理" data-options="iconCls:'icon-save'"
				style="overflow:auto;padding:0px;">
				<ul class="myul">
					<li><a title="Send_queryPet.action">查询宠物信息</a></li>
					<li><a title="Send_addPet.action">添加宠物信息</a></li>
				</ul>
			</div>
			<div title="用户信息管理" data-options="iconCls:'icon-save',selected:true"
				style="padding:0px;">
				<ul class="myul">
					<li><a title="Send_query.action">查询用户信息</a></li>
					<li><a title="Send_add.action">添加用户信息</a></li>
				</ul>
			</div>
			<div title="评论信息管理" data-options="iconCls:'icon-save'">
				<ul class="myul">
					<li><a title="Send_queryComment.action">查询评论信息</a></li>
				</ul>
			</div>
			<div title="订单信息管理" data-options="iconCls:'icon-save'">
				<ul class="myul">
					<li><a title="Send_queryOrder.action">查询订单信息</a></li>
				</ul>
			</div>
			<div title="文章信息管理" data-options="iconCls:'icon-save'">
				<ul class="myul">
					<li><a title="Send_queryArticle.action">查询文章信息</a></li>
					<li><a title="Send_addArticle.action">添加文章信息</a></li>
				</ul>
			</div>
		</div>


	</div>
	<div data-options="region:'center',title:'管理页面'">
		<div id="tt" class="easyui-tabs" data-options="fit:true">
			<div title="系统管理默认页面" style="background-image:url('img/center2.jpg')">

			</div>
		</div>

	</div>


</body>
</html>
