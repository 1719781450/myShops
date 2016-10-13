<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>我的@商城</title>
<link href="${pageContext.request.contextPath}/css/slider.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/zzsc.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<style type="text/css">
   .baozhang{
       width:50px;
       height:50px;
       border:1px solid red;
       color:#ff0000;
       float:right;
   }
</style>

</head>
<body>

<div class="container header">
	<div class="span5">
		<div class="logo">
			<a href="#">
				<img class="sizeWH" src="${pageContext.request.contextPath}/image/top_01.jpg" alt="我的@商城"/>
			</a>
		</div>
	</div>
	<div class="span9">
<div class="headerAd">
	<img src="${pageContext.request.contextPath}/image/header.jpg" width="320" height="50" alt="正品保障" title="正品保障"/>
  <!--   <div class="baozhang">保障</div> -->
</div>	



</div>
   
	<%@ include file="menu.jsp" %>

</div>

	<div class="container index">

		<div>
			<%@ include file="picture.jsp"%>
		</div>
		<!-- 图片轮播 -->
		<br /> <br /> <br />
		<div class="span24">
			<div id="hotProduct" class="hotProduct clearfix">
				<div class="title">
					<strong>热门商品</strong>
					<!-- <a  target="_blank"></a> -->
					<%-- <div class="flright">
						<a  target="_blank" style="width:100px;" href="/shop/WebRoot/choujiang.html"><strong >随便看看</strong></a>
						</div> --%>
					<!-- 随便看看 -->
				</div>
				<ul class="tab">
					<%-- <li class="current"><a target="_blank" style="width:100px;"
						href="${pageContext.request.contextPath}/ppzf.html"><strong>品牌专访</strong></a></li> --%>
					<li class="current"><a target="_blank" style="width:100px;"
						href="${pageContext.request.contextPath}/seePro.html"><strong>随便看看</strong>
					</a></li>
				<%-- 	<li class="current"><a target="_blank" style="width:100px;"
						href="${pageContext.request.contextPath}/choujiang.html"><strong>会员日抽奖</strong>
					</a></li> --%>
					<!--会员抽奖功能实现  -->
				</ul>
				<!-- 					<div class="hotProductAd">
			<img src="${pageContext.request.contextPath}/image/a.jpg" width="260" height="343" alt="热门商品" title="热门商品">
</div> -->
				<ul class="tabContent" style="display: block;">
					<s:iterator var="p" value="hList">
						<li><a
							href="${ pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>"
							target="_blank"><img
								src="${pageContext.request.contextPath}/<s:property value="#p.image"/>"
								style="display: block;">
						</a></li>
					</s:iterator>
				</ul>
				
			</div>
		</div>
		<div class="span24">
			<div id="newProduct" class="newProduct clearfix">
				<div class="title">
					<strong>最新商品</strong> <a target="_blank"></a>
				</div>
				<ul class="tab">
					<!-- <li class="current"><a href="#"
						target="_blank">AA</a></li> 在最新页面上添加导航栏-->
					<li><a target="_blank"></a></li>
					<li><a target="_blank"></a></li>
				</ul>
				<!-- 					<div class="newProductAd">
									<img src="${pageContext.request.contextPath}/image/q.jpg" width="260" height="343" alt="最新商品" title="最新商品">
						</div>
						 -->
				<ul class="tabContent" style="display: block;">
					<s:iterator var="p" value="nList">
						<li><a
							href="${ pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>"
							target="_blank"><img
								src="${pageContext.request.contextPath}/<s:property value="#p.image"/>"
								style="display: block;">
						</a></li>
						</li>
					</s:iterator>
				</ul>
				
			</div>
			<div style="border:6px solid #00ffaa;margin:10px auto ;"></div>
		  <div style="widtth:950px;height:250px;margin:20px auto;">
              <%@ include file="shoufengqin.jsp" %>
          </div>
		</div>

		<br/>
       
	<div class="span24">
			<div class="friendLink">
				<dl>
					<dt>新手指南</dt>
							<dd>
								<a  target="_blank">支付方式</a>
								|
							</dd>
							<dd>
								<a  target="_blank">配送方式</a>
								|
							</dd>
							<dd>
								<a  target="_blank">售后服务</a>
								|
							</dd>
							<dd>
								<a  target="_blank">购物帮助</a>
								|
							</dd>
							<dd>
								<a  target="_blank">购物卡</a>
								|
							</dd>
							<dd>
								<a  target="_blank">礼品卡</a>
								|
							</dd>
							<dd>
								<a target="_blank">银联卡</a>
								|
							</dd>
							
							
					<dd class="more">
						<a >更多</a>
					</dd>
				</dl>
			</div>
		</div>
	</div>
	<div class="clearfix"></div>
	<div>
	<span style="margin-left: 196px; width:950px;height:20px;line-height:20px;font-size:20px;color:red;">好书推荐：</span>
	<%@ include file="showPro.jsp" %>
    </div>	
<!-- 好书商品 -->
	
 <!--  footter部分	 -->
 <div style="width: 100%;background-color: #0C0C0C;">
<div class="container footer">
	<div class="span24">
		<div class="footerAd">
					<img src="${pageContext.request.contextPath}/image/footer.jpg" width="950" height="52" alt="我们的优势" title="我们的优势">
</div>	</div>
	<div class="span24">
		<ul class="bottomNav">
					<li>
						<a>关于我们</a>
						|
					</li>
					<li>
						<a>联系我们</a>
						|
					</li>
					<li>
						<a  target="_blank" style="width:100px;" href="${pageContext.request.contextPath}/zprc.html">招贤纳士</a>
						|
					</li>
					<li>
						<a>法律声明</a>
						|
					</li>
					<li>
						<a href="http://www.taobao..com" target="_blank">友情链接</a>
						|
					</li>
					<li>
						<a target="_blank">支付方式</a>
						|
					</li>
					<li>
						<a target="_blank">配送方式</a>
						|
					</li>
					<li>
						<a>服务声明</a>
						|
					</li>
					
		</ul>
	</div>
	<div class="span24">
		<div class="copyright">Copyright © 2005-2016 我的@商城 版权所有</div>
	</div>
</div>
 </div>
</body>
</html>