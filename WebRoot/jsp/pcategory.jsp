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
<base href="<%=basePath%>">
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

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
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
<style type="text/css">
.mystyle {
	width: 160px;
	height: 140px;
	float: left
}

ul li {
	margin: 10px 10px;
}
</style>
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
							<li class="current"><a href="index.jsp">主页</a>
							</li>
							<li><a href="Pcategory_selectPet_pcategory.action">宠物</a>
							</li>
							<li><a href="Particle_selectArticle_particle.action">文章</a>
							</li>
							<li><a href="contact.jsp">联系</a>
							</li>
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
	<div style="width:1000px; margin:0 15%;">

		<div class="grid_7">
			<h2>宠物展示</h2>
			<br>
		</div>
		<div style="width:1000px; height:150px;">
			<div class="grid_7" style="float:right">
				<h2>宠物热销</h2>
				<br>
			</div>
		</div>
		<div>
			<div style="width:1000px; height:auto; float:left">
				<div style="width:700px; height:100px; float:left">
					<c:forEach var="pet" items="${list}">
						<div class="mystyle">
							<div align="center">
								<a
									href="Pcategory_searchCategory_pcategory_detail.action?categoryid=${pet.categoryid }"><img
									class="img-rounded" width="139px" height="110px"
									src="${pet.image}" alt="...">
								</a>
							</div>
							<div align="center">
								<a
									href="Pcategory_searchCategory_pcategory_detail.action?categoryid=${pet.categoryid }">${pet.type
									}</a>
							</div>
						</div>


					</c:forEach>

				</div>
				<div style="width:300px; height:120px;  float:right">
					<ul>
						<li>
							<div style="width:280px; height:80px; background-color: #fff">
								<div style="float:left; padding:20px;">
									<a
										href="Pcategory_searchCategory_pcategory_detail.action?categoryid=40286281582f32d401582f6ccde20003">
										<img src="images/haishiqi.jpg" width="50px;" height="50px;" />
									</a>
								</div>
								<div style="float:left; padding:30px 10px;">
									<a
										href="Pcategory_searchCategory_pcategory_detail.action?categoryid=40286281582f32d401582f6ccde20003">
										<font style="font-size:20px; color:orange ">哈士奇</font>
									</a>
								</div>
							</div>
						</li>
						<li>
							<div style="width:280px; height:80px; background-color:#fff;">
								<div style="float:left; padding:20px;">
									<a
										href="Pcategory_searchCategory_pcategory_detail.action?categoryid=40286281582f32d401582f6b85590001">
										<img src="images/bosimao.jpg" width="50px;" height="50px;" />
									</a>
								</div>
								<div style="float:left; padding:30px 10px;">
									<a
										href="Pcategory_searchCategory_pcategory_detail.action?categoryid=40286281582f32d401582f6b85590001">
										<font style="font-size:20px; color:orange ">波斯猫</font> </a>
								</div>
							</div>
						</li>
						<li>
							<div style="width:280px; height:80px; background-color:#fff;">
								<div style="float:left; padding:20px;">
									<a
										href="Pcategory_searchCategory_pcategory_detail.action?categoryid=40286281586dbadf01586dc032500000">
										<img src="images/samoye.jpg" width="50px;" height="50px;" />
									</a>
								</div>
								<div style="float:left; padding:30px 10px;">
									<a
										href="Pcategory_searchCategory_pcategory_detail.action?categoryid=40286281586dbadf01586dc032500000">
										<font style="font-size:20px; color:orange ">萨摩耶</font>
									</a>
								</div>
							</div>
						</li>

						<li>
							<div style="width:280px; height:80px; background-color:#fff;">
								<div style="float:left; padding:20px;">
									<a
										href="Pcategory_searchCategory_pcategory_detail.action?categoryid=40286281582f32d401582f69bdfa0000">
										<img src="images/alasijia.jpg" width="50px;" height="50px;" />
									</a>
								</div>
								<div style="float:left; padding:30px 10px;">
									<a
										href="Pcategory_searchCategory_pcategory_detail.action?categoryid=40286281582f32d401582f69bdfa0000">
										<font style="font-size:20px; color:orange ">阿拉斯加</font> </a>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div style="width: 1000px;height: 200px;"></div>
</body>
</html>

