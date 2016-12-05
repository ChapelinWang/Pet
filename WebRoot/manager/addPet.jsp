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
</head>
<body style="background-image:url('img/center.jpg');">
	<div style="width: 600px;">
		<div style="margin:20px 50px;"></div>
		<div class="easyui-panel" title="宠物信息"
			data-options="fit:true,border:true">
			<div style="padding:10px 60px 20px 60px">
				<form id="form1" method="post" onsubmit="return ajax();"
					action="Pcategory_insertPet_addPet.action" >
					<table cellpadding="5">
						<tr>
							<td>宠物名称:</td>
							<input type="hidden" id="bool" value="false">
							<td><input id="type" type="text" name="type"
								onblur="ajax('type');"></input><font id="typemes">&nbsp;</font>
							</td>
						</tr>
						<tr>
							<td>性别:</td>
							<td><select class="easyui-combobox" name="sex"
								editable="false">
									<option value="公">公&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
									<option value="母">母&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
							</select></td>
						</tr>
						<tr>
							<td>年龄:</td>
							<td><input id="age" type="text" name="age"
								data-options="required:true"></input></td>
						</tr>
						<tr>
							<td>疫苗状况:</td>
							<td><input id="vaccin" type="text" name="vaccin"
								data-options="required:true"></input></td>
						</tr>
						<tr>
							<td>宠物价格:</td>
							<td><input id="price" type="text" name="price"
								onblur="ajax('price');"></input><font id="pricemes">&nbsp;</font>
							</td>
						</tr>
						<tr>
							<td>图片地址:</td>
							<td><input id="image" type="text" name="image"></input></td>
						</tr>
						<tr>
							<td>宠物描述:</td>
							<td><textarea id="detail" rows=5 cols="50" name="detail"></textarea>
							</td>
						</tr>
						<tr>
							<td><input style="text-align:center;padding:5px"
								class="easyui-linkbutton" type="button" onclick="check();"
								value="提交" /> <input style="text-align:center;padding:5px"
								class="easyui-linkbutton" type="reset" value="重置" /></td>
						</tr>
					</table>
				</form>
				<div align="right">
					<font style="color: red;font-size: 15px;">${message }</font>
				</div>
			</div>
		</div>

	</div>
	<script type="text/javascript">
		function ajax(para) {
			var val = document.getElementById(para).value;
			var xmlHttpReg = null;
			if (window.ActiveXObject) {//如果是IE

				xmlHttpReg = new ActiveXObject("Microsoft.XMLHTTP");

			} else if (window.XMLHttpRequest) {

				xmlHttpReg = new XMLHttpRequest(); //实例化一个xmlHttpReg
			}

			//如果实例化成功,就调用open()方法,就开始准备向服务器发送请求
			if (xmlHttpReg != null) {
				if (para == 'type') {
					xmlHttpReg.open("get", "Ajax_checkPet.action?arg=" + val,
							true);
				} else if (para == 'price') {
					xmlHttpReg.open("get", "Ajax_checkPrice.action?arg=" + val,
							true);
				}

				xmlHttpReg.send(null);
				return xmlHttpReg.onreadystatechange = doResult; //设置回调函数
			}

			//回调函数
			//一旦readyState的值改变,将会调用这个函数,readyState=4表示完成相应

			//设定函数doResult()
			function doResult() {
				if (xmlHttpReg.readyState == 4) {//4代表执行完成

					if (xmlHttpReg.status == 200) {//200代表执行成功
						//将xmlHttpReg.responseText的值赋给ID为resText的元素
						var json = eval('(' + xmlHttpReg.responseText + ')');
						var message = json.type;
						var flag = json.flag;
						document.getElementById(para + "mes").innerHTML = '&nbsp;*'
								+ message;
						if (flag) {
							document.getElementById(para + "mes").style.color = "green";
							document.getElementById("bool").value = true;
						} else {
							document.getElementById(para + "mes").style.color = "red";
							document.getElementById("bool").value = false;
						}
					}
				}

			}

		}
		function check() {
			ajax('price');
			ajax('type');
			var x = document.getElementById("bool").value;

			if (eval(x)) {
				document.getElementById('form1').submit();
			}
		}
	</script>
</body>

</html>
