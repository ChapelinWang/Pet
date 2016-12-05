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
<script type="text/javascript">
	$(function() {
		var sc = $("#sc").val();
		$('#dg')
				.datagrid(
						{
							singleSelect : false,
							selectOnCheck : true,
							checkOnSelect : true,
							//工具栏
							toolbar : [
									{
										iconCls : 'icon-cancel',
										text : '删除',
										handler : function() {
											$.messager
													.confirm(
															'确认',
															'删除用户会删除相应的评论，您确认想要删除吗？',
															function(r) {
																if (r) {
																	var rows = $(
																			'#dg')
																			.datagrid(
																					"getSelections");
																	var ids = "";
																	for ( var i = 0; i < rows.length; i++) {
																		ids += rows[i].orderid
																				+ ",";
																	}
																	$
																			.post(
																					"Porder_delOrder.action",
																					{
																						id : ids
																					},
																					function(
																							reslut) {
																						if (reslut) {
																							$.messager
																									.alert(
																											"提示",
																											"删除成功");
																						} else {
																							$.messager
																									.alert(
																											"提示",
																											"删除失败");
																						}
																						$(
																								'#dg')
																								.datagrid(
																										'reload',
																										{});
																					});
																}
															});

										}
									},
									'-',
									{
										iconCls : 'icon-edit',
										text : "<font style='color: red;font-size: 15px;'>${message }</font>",
									} ],
							//显示行号
							rownumbers : true,
							//ctrl键多选
							ctrlSelect : true,
							url : '/pet/Porder_findOrder.action?sc=' + sc,
							striped : true,
							nowrap : true,
							fitColums : true,
							//分页工具栏
							pagination : true,
							columns : [ [
									{
										field : 'ck',
										checkbox : true
									},
									{
										field : 'orderid',
										title : '订单编号',
										width : 250
									},
									{
										field : 'aa',
										title : '宠物名称',
										width : 100,
										formatter : function(value, rec) {
											if (rec.pcategory == null) {
												return "";
											} else
												return rec.pcategory.type;

										}
									},
									{
										field : 'bb',
										title : '用户名称',
										width : 100,
										formatter : function(value, rec) {
											return rec.puser.username;
										}
									},
									{
										field : 'orderphone',
										title : '联系方式',
										width : 150
									},
									{
										field : 'orderemail',
										title : '用户邮箱',
										width : 150
									},
									{
										field : 'ordertime',
										title : '订单时间',
										width : 160
									},
									{
										field : 'status',
										title : '订单状态',
										width : 100,
										formatter : function(value, rec) {
											if (rec.status == 0) {
												return "未完成";
											} else if (rec.status == 1) {
												return "已完成";
											} else {
												return "未知状态";
											}
										}
									},
									{
										field : 'remark',
										title : '备注',
										width : 80,
									},
									{
										field : '',
										title : '编辑',
										width : 80,
										formatter : function(value, row, index) {
											return "<a href='Porder_searchOrder_editOrder.action?orderid="
													+ row.orderid + "'>编辑</a> ";
										}
									} ] ]
						});

	});
</script>


<body
	style="margin: 5px 5px;padding: 0px;background-image:url('img/center.jpg');">
	<div style="margin-top: 5px;">
		<input type="hidden" value="${sc}" id="sc">
		<table id="dg">
		</table>
	</div>

</body>
</html>
