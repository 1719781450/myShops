<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<style>
.flexslider {
	margin: 0px auto;
	position: relative;
	width: 100%; 
	height: 482px;
	overflow: hidden;
	zoom: 1;
}

.flexslider .slides li {
	width: 100%;
	height: 100%;
}

.flex-direction-nav a {
	width: 70px;
	height: 70px;
	line-height: 99em;
	overflow: hidden;
	margin: -35px 0 0;
	display: block;
	background: url(${pageContext.request.contextPath}/images/picture/ad_ctr.png) no-repeat;
	position: absolute;
	top: 50%;
	z-index: 10;
	cursor: pointer;
	opacity: 0;
	filter: alpha(opacity=0);
	-webkit-transition: all .3s ease;
	border-radius: 35px;
}

.flex-direction-nav .flex-next {
	background-position: 0 -70px;
	right: 0;
}

.flex-direction-nav .flex-prev {
	left: 0;
}

.flexslider:hover .flex-next {
	opacity: 0.8;
	filter: alpha(opacity=25);
}

.flexslider:hover .flex-prev {
	opacity: 0.8;
	filter: alpha(opacity=25);
}

.flexslider:hover .flex-next:hover,
.flexslider:hover .flex-prev:hover {
	opacity: 1;
	filter: alpha(opacity=50);
}

.flex-control-nav {
	width: 100%;
	position: absolute;
	bottom: 10px;
	text-align: center;
}

.flex-control-nav li {
	margin: 0 2px;
	display: inline-block;
	zoom: 1;
	*display: inline;
}

.flex-control-paging li a {
	background: url(${pageContext.request.contextPath}/images/picture/dot.png) no-repeat 0 -16px;
	display: block;
	height: 16px;
	overflow: hidden;
	text-indent: -99em;
	width: 16px;
	cursor: pointer;
}

.flex-control-paging li a.flex-active,
.flex-control-paging li.active a {
	background-position: 0 0;
}

.flexslider .slides a img {
	width: 100%;
	height: 482px;
	display: block;
}
</style>

<div id="banner_tabs" class="flexslider">
	<ul class="slides">
		<li>
			<a title="" target="_blank" href="#">
				<img width="950" height="400" alt="" style="background: url(${pageContext.request.contextPath}/images/picture/banner1.jpg) no-repeat center;" src="${pageContext.request.contextPath}/images/picture/alpha.png">
			</a>
		</li>
		<li>
			<a title="" href="#">
				<img width="950" height="400" alt="" style="background: url(${pageContext.request.contextPath}/images/picture/banner2.jpg) no-repeat center;" src="${pageContext.request.contextPath}/images/picture/alpha.png">
			</a>
		</li>
		<li>
			<a title="" href="#">
				<img width="950" height="400" alt="" style="background: url(${pageContext.request.contextPath}/images/picture/banner3.jpg) no-repeat center;" src="${pageContext.request.contextPath}/images/picture/alpha.png">
			</a>
		</li>
	</ul>
	<ul class="flex-direction-nav">
		<li><a class="flex-prev" href="javascript:;">Previous</a></li>
		<li><a class="flex-next" href="javascript:;">Next</a></li>
	</ul>
	<ol id="bannerCtrl" class="flex-control-nav flex-control-paging">
		<li><a>1</a></li>
		<li><a>2</a></li>
		<li><a>2</a></li>
	</ol>
</div>
<script src="${pageContext.request.contextPath}/js/jquery-1.10.2.min.js"></script>
<script src="${pageContext.request.contextPath}/js/slider.js"></script>
<script type="text/javascript">
$(function() {
	var bannerSlider = new Slider($('#banner_tabs'), {
		time: 5000,
		delay: 400,
		event: 'hover',
		auto: true,
		mode: 'fade',
		controller: $('#bannerCtrl'),
		activeControllerCls: 'active'
	});
	$('#banner_tabs .flex-prev').click(function() {
		bannerSlider.prev()
	});
	$('#banner_tabs .flex-next').click(function() {
		bannerSlider.next()
	});
})
</script>