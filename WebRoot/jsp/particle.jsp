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



<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
<link rel="stylesheet" href="<%=basePath%>css/bootstrap-theme.min.css">
<script src="<%=basePath%>js/jquery.min.js"></script>
<script src="<%=basePath%>js/bootstrap.min.js"></script>


<style type="text/css">
* {
	font-family: "Glyphicons Halflings", "Microsoft YaHei" ! important;
}
</style>


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
							<li><a href="Particle_selectArticle_particle.action">文章</a>
							</li>
							<li><a href="contact.jsp">联系</a></li>
							<c:if test="${user.username!=null }">
								<li><a href="Puser_logout.action">注销(${user.username })</a>
								</li>
							</c:if>
							<c:if test="${user.username==null }">
								<li><a href="login.jsp">登录</a>
								</li>
							</c:if>
						</ul>
					</nav>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</header>

	<!-- 开始 -->
	<div class="container_12">
		<div class="grid_7" style="width:700px;">
			<h2>Blog</h2>
			<br>
			<c:forEach var="article" items="${list }" varStatus="status">
				<div class="blog">
					<a
						href="Particle_searchArticle_particle_detail.action?articleid=${article.articleid }"><img
						src="${article.image}" style="width: 180px;height: 120px;" alt=""
						class="img_inner fleft i1"> </a>
					<div class="extra_wrapper">
						<div class="text2 col2">
							<a
								href="Particle_searchArticle_particle_detail.action?articleid=${article.articleid }">${article.title
								}</a>
						</div>
						发布时间:${article.time }<br> <br>
						作者:${article.puser.username }
					</div>
					<div class="clear"></div>
				</div>

			</c:forEach>
		</div>
	</div>
</body>


</html>

