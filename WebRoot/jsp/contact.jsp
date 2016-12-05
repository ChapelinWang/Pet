<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/jsp/";
%>

<html>
<head>
<title>小强宠物</title>
<base href="<%=basePath%>">
<link rel="icon" href="<%=basePath%>images/favicon.ico">
<link rel="shortcut icon" href="<%=basePath%>images/favicon.ico" />
<link rel="stylesheet" href="<%=basePath%>css/style.css">
<link rel="stylesheet" href="<%=basePath%>css/form.css">
<script src="<%=basePath%>js/jquery.js"></script>
<script src="<%=basePath%>js/forms.js"></script>
<script src="<%=basePath%>js/jquery-migrate-1.1.1.js"></script>
<script src="<%=basePath%>js/superfish.js"></script>
<script src="<%=basePath%>js/jquery.equalheights.js"></script>
<script src="<%=basePath%>js/jquery.easing.1.3.js"></script>
<script src="<%=basePath%>js/jquery.ui.totop.js"></script>
<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
<link rel="stylesheet" href="<%=basePath%>css/bootstrap-theme.min.css">
<script src="<%=basePath%>js/jquery.min.js"></script>
<script src="<%=basePath%>js/bootstrap.min.js"></script>



<!--[if lt IE 8]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
         </a>
      </div>
    <![endif]-->
<!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <link rel="stylesheet" media="screen" href="css/ie.css">

    <![endif]-->
</head>
<body class="page1">
	<!--==============================header=================================-->
	<header>
		<div class="container_12">
			<div class="grid_12">
				<h1>
					<a href="index.html"><img src="images/logo.png"
						alt="Gerald Harris attorney at law"> </a>
				</h1>
				<div class="menu_block">
					<nav class="">
						<ul class="sf-menu">
							<li class="current"><a href="index.jsp">主页</a></li>
							<li><a href="Pcategory_selectPet_pcategory.action">宠物</a></li>
							<li><a href="Particle_selectArticle_particle.action">文章</a></li>
							<li><a href="contact.jsp">联系</a></li>
							<c:if test="${user.username!=null }">
								<li><a href="Puser_logout.action">注销(${user.username })</a>
								</li>
							</c:if>
							<c:if test="${user.username==null }">
								<li><a href="login.jsp">登录</a></li>
							</c:if>
						</ul>
					</nav>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</header>
	<div class="content pt1">
		<div class="container_12">
			<div class="grid_6">
				<h2>联系地址</h2>
				<br>
				<div class="map">
					<iframe src="test.html" width="500px;" height="300px;"
						scrolling="no"> </iframe>
					<address>
						<dl>
							<dt>
								<p>
									上海建桥学院<br> 沪城环路1111号
								</p>
							</dt>
							<dd>
								<span>免费电话:</span>+86 15617005127
							</dd>
							
							<dd>
								<span>邮箱:</span>chapelin_wang@163.com
							</dd>
						</dl>
					</address>

				</div>
			</div>
			<div class="grid_5 prefix_1">
				<h2 class="ic1">联系信息</h2>
				<form class="form-horizontal"
					action="Porder_insertOrder_contact.action" method="post"
					role="form">
					<h4 style="color: red">${message2 }</h4>
					<div class="form-group">
						<div class="col-sm-12">
							<input type="hidden" name="userid" value="${user.userid }"> <input
								type="text" class="form-control" value=""
								placeholder="姓名">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-12">
							<input type="email" class="form-control" name="orderemail"
								value="" placeholder="Email">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-12">
							<input type="text" class="form-control" name="orderphone"
								placeholder="联系电话">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-12">
							<textarea class="form-control" name="remark" rows="3" placeholder="留言信息"></textarea>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-9 col-sm-12">
							<button type="submit" class="btn btn-primary">发送</button>
						</div>
					</div>
				</form>

			</div>
		</div>
	</div>
</body>

</html>

