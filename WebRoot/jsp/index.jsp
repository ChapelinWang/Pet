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
<base href="<%=basePath %>">
<link rel="icon" href="<%=basePath %>images/favicon.ico">
<link rel="shortcut icon" href="<%=basePath %>images/favicon.ico" />
<link rel="stylesheet" href="<%=basePath %>css/style.css">
<link rel="stylesheet" href="<%=basePath %>css/slider.css">
<script src="<%=basePath %>js/jquery.js"></script>
<script src="<%=basePath %>js/jquery-migrate-1.1.1.js"></script>
<script src="<%=basePath %>js/superfish.js"></script>
<script src="<%=basePath %>js/jquery.carouFredSel-6.1.0-packed.js"></script>

<script src="<%=basePath %>js/jquery.equalheights.js"></script>
<script src="<%=basePath %>js/jquery.easing.1.3.js"></script>
<script src="<%=basePath %>js/tms-0.4.1.js"></script>
<script src="<%=basePath %>js/jquery.ui.totop.js"></script>

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
</head>
<body class="page1">
	<!--==============================header=================================-->
	<header>
		<div class="container_12">
			<div class="grid_12">
				<h1>
					<a href="index.jsp"><img src="images/logo.png"
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
	<div class="top_block">
		<div class="slider-relative">
			<div class="slider-block">
				<div class="slider">
					<ul class="items">
						<li><img src="images/slide.jpg" alt="">
							<div class="banner">
								它们需要 <span>爱心</span> 与 <i>关心</i>
								<p>
									很简单就能<br>使它们更<span style="color:#1d953f;"> 快乐</span>
								</p>
							</div>
						</li>
						<li><img src="images/slide1.jpg" alt="">
							<div class="banner">
								它们需要 <span>爱心</span> 与 <i>关心</i>
								<p>
									很简单就能<br>使它们更<span style="color:#1d953f;"> 快乐</span>
								</p>
							</div>
						</li>
						<li><img src="images/slide2.jpg" alt="">
							<div class="banner">
								它们需要 <span>爱心</span> 与 <i>关心</i>
								<p>
									很简单就能<br>使它们更<span style="color:#1d953f;"> 快乐</span>
								</p>
							</div>
						</li>
						<li><img src="images/slide3.jpg" alt="">
							<div class="banner">
								它们需要 <span>爱心</span> 与 <i>关心</i>
								<p>
									很简单就能<br>使它们更<span style="color:#1d953f;"> 快乐</span>
								</p>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>



		<div class="bottom_block">
			<div class="container_12">
				<div class="grid_6">
					<h2>公司简介</h2>
					<br>
					上海市IT火火公司于2010年10月注册成立，同年11月正式开始运营并全面投入生产。公司坐落于上海建桥学院，专业从事互联网开发工作，占地50亩，
					项目总投资超过6亿元。
					2014年8月，根据公司战略目标发展需要，拉长完善产业链，成功设了立信息部、人力资源部。并且公司正在投资建桥有限公司、建路有限公司。预计未来5年间将累计投资超过10亿元，
					IT火火信息技术有限公司将继续完善壮大、深化这一包装产业链，届时，将打造成为上海地区最大的软件设计产业园。
				</div>
				<div class="grid_4 prefix_2">
					<h2 class="ic1">任何疑问?</h2>
					<img src="images/page1_img4.jpg" alt="" class="fleft img_inner">
					<div class="extra_wrapper">
						<div class="cont">
							免费电话: <span>+86 15617005127</span>
						</div>
					</div>
					<div class="clear"></div>
					小强宠物网站是IT火火信息技术有限公司的旗下网站之一，拥有专业的宠物
					管理运营模式，打造非同一般的用户体检。专注于宠物饲养，宠物销售20年。
				</div>
			</div>
		</div>
		<!--==============================footer=================================-->
</body>
</html>

