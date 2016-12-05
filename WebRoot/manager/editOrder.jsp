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
		<div class="easyui-panel" title="订单信息"
			data-options="fit:true,border:true">

			<div style="padding:10px 60px 20px 60px">
				<form id="ff" method="post" action="Porder_editOrder_queryOrder.action">
					<table cellpadding="5">
						<input type="hidden" name="ordertime" value="${porder.ordertime}" />
						<input type="hidden" name="puser.userid" value="${porder.puser.userid}" />
						<input type="hidden" name="orderphone" value="${porder.orderphone}" />
						<input type="hidden" name="pcategory.categoryid" value="${porder.pcategory.categoryid}" />
						<input type="hidden" name="orderemail" value="${porder.orderemail}" />
						<tr>
							<td>订单编号:</td>
							<td><input class="easyui-textbox" type="text"
								value="${porder.orderid }" name="orderid" editable="false"
								data-options="required:true"></input>
							</td>
						</tr>
						<tr>
							<td>订单状态:</td>
							<td><select class="easyui-combobox" name="status" editable="false">
									<option value="0" >交易未完成&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
									<option value="1">交易已完成&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
									<option value="2">交易已取消&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
							</select></td>
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
