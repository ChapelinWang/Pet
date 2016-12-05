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
		$('#dg').datagrid({
			singleSelect : false,
			selectOnCheck : true,
			checkOnSelect : true,
			//工具栏
			toolbar : [ {
				iconCls : 'icon-cancel',
				text : '删除',
				handler : function() {
					$.messager.confirm('确认','删除宠物会删除相应的评论，您确认想要删除吗？',function(r){   
								if(r){
									var rows = $('#dg').datagrid("getSelections");
										var ids="";
										for(var i = 0; i < rows.length; i++){
											ids+=rows[i].categoryid+",";
										}
										$.post("Pcategory_delPet.action",{id:ids},function(reslut){
											if(reslut){
												$.messager.alert("提示","删除成功!");
											}else{
												$.messager.alert("提示","删除失败!");
											}
											$('#dg').datagrid('reload',{
												});
										});
								}
							});
				}
			},'-',{
						iconCls: 'icon-edit',
						text:"<font style='color: red;font-size: 15px;'>${message }</font>",
					} ],
			//显示行号
			rownumbers : true,
			//ctrl键多选
			ctrlSelect : true,
			url : '/pet/Pcategory_queryPet.action',
			striped : true,
			nowrap : true,
			fitColums : true,
			//分页工具栏
			pagination : true,
			columns : [ [ {
				field : 'ck',
				id : 'checkbox',
				checkbox : true
			}, {
				field : 'categoryid',
				title : '宠物编号',
				width : 300
			}, {
				field : 'type',
				title : '宠物名称',
				width : 100
			}, {
				field : 'sex',
				title : '宠物性别',
				width : 80
			}, {
				field : 'vaccin',
				title : '宠物疫苗状况',
				width : 80
			}, {
				field : 'age',
				title : '宠物年龄',
				width : 100
			},  {
				field : 'price',
				title : '宠物价格',
				width : 60
			},  {
				field : 'image',
				title : '图片地址',
				width : 100
			},{
				field : 'detail',
				title : '宠物描述',
				width : 200
			},{field:'',title:'编辑', width:80,
						formatter: function(value,row,index){
							return "<a href='Pcategory_searchCategory_editCategory.action?categoryid="+row.categoryid+"'>编辑</a> ";
						}
		        } ] ]
		});

	});
</script>


<body style="margin: 5px 5px;padding: 0px;background-image:url('img/center.jpg');">
	<div style="margin-top: 5px;">
		<table id="dg">
		</table>
	</div>

</body>
</html>
