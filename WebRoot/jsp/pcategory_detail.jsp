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
<meta charset="utf-8">
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico" />
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/slider.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.carouFredSel-6.1.0-packed.js"></script>

<script src="js/jquery.equalheights.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/tms-0.4.1.js"></script>
<script src="js/jquery.ui.totop.js"></script>

<script src="../ckeditor/ckeditor.js"></script>
<script src="../ckeditor/samples/js/sample.js"></script>
<link rel="stylesheet" href="../ckeditor/samples/css/samples.css">
<link rel="stylesheet"
	href="../ckeditor/samples/toolbarconfigurator/lib/codemirror/neo.css">

<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
<link rel="stylesheet" href="<%=basePath%>css/bootstrap-theme.min.css">
<script src="<%=basePath%>js/jquery.min.js"></script>
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<script>
	$(window).load(function() {
		$('.slider')._TMS({
			show : 0,
			pauseOnHover : false,
			prevBu : '.prev',
			nextBu : '.next',
			playBu : false,
			duration : 800,
			preset : 'fade',
			pagination : true,//'.pagination',true,'<ul></ul>'
			pagNums : false,
			slideshow : 8000,
			numStatus : false,
			banners : true,
			waitBannerAnimation : false,
			progressBar : false
		})
	});

	$(window).load(function() {
		$('.carousel1').carouFredSel({
			auto : false,
			prev : '.prev',
			next : '.next',
			width : 960,
			items : {
				visible : {
					min : 3,
					max : 3
				},
				height : 'auto',
				width : 300,

			},
			responsive : true,

			scroll : 1,

			mousewheel : false,

			swipe : {
				onMouse : true,
				onTouch : true
			}
		});

	});

	jQuery(document).ready(function() {
		$().UItoTop({
			easingType : 'easeOutQuart'
		});
	});
</script>
<script type="text/javascript">
	function order() {
		document.getElementById('form1').submit();
	}
</script>
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
	<br>
	<br>
	<br>
	<div class="container">
		<div class="rows">
			<div class="col-md-4">
				<img src="${category.image }" witdth="300px" height="300px"
					alt="..." class="img-rounded">
			</div>
			<div class="col-md-6 col-md-offset-1">
				<br>
				<form id="form1" action="Pcategory_order_orderlist.action">
					<input type="hidden" name="categoryid"
						value="${category.categoryid }" />
				</form>
				<table class="table table-hover">
					<tr>
						<td>宠物名称:</td>
						<td>${category.type }</td>
					</tr>
					<tr>
						<td>宠物性别:</td>
						<td>${category.sex }</td>
					</tr>
					<tr>
						<td>宠物年龄:</td>
						<td>${category.age }</td>
					</tr>
					<tr>
						<td>疫苗状况:</td>
						<td>${category.vaccin }</td>
					</tr>
					<tr>
						<td>宠物价格:</td>
						<td>${category.price }</td>
					</tr>
					<tr>
						<td>宠物描述:</td>
						<td>${category.detail }</td>
					</tr>
					<tr>
						<td><button type="button" class="btn btn-info" id="comment">评论</button><h4 style="color: red">${message }</h4>
							</td>
						<td><button type="button" class="btn btn-primary"
								onclick="order()">预订</button></td>
					</tr>
				</table>
				<div id="myeditor">
					<br>
					<form action="Pcomment_insertComment_pcategory_detail.action" method="post" id="form2">
						<textarea class="ckeditor" cols="80" id="content"
							name="commentcontent" rows="10"></textarea>   
						<input type="hidden" name="userid" value="${user.userid }">
						<input type="hidden" name="categoryid"
								value="${category.categoryid }">
					</form>
					<div align="right">
						<button type="button" class="btn btn-primary" onclick="fabu()">发布</button>
					</div>
				</div>
			</div>
		</div>


	</div>
	<div class="container">
		<div class="rows">
			<c:forEach var="comment" items="${category.pcomments }"
				varStatus="status">
				<div class="col-md-12">
					<div class="panel panel-success">
						<div class="panel-heading">
							用户评价:${comment.puser.username}&nbsp;<font> </font>评论时间:${comment.ptime
							}
						</div>
						<div class="panel-body">${comment.commentcontent}</div>
					</div>
				</div>
			</c:forEach>


		</div>
	</div>


</body>
<script type="text/javascript">
	function fabu() {
		document.getElementById('form2').submit();
	}
</script>

<script>
	initSample();
</script>

<script>
	$(document).ready(function() {

		$("#myeditor").hide();
		$("#comment").click(function() {
			$("#myeditor").fadeToggle("slow");
		});
	});
</script>
</html>

