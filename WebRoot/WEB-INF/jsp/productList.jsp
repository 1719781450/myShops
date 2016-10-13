<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0048)http://localhost:8080/mango/product/list/1.jhtml -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>我的@商城</title>
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/product.css" rel="stylesheet" type="text/css"/>
<!-- 商品流动所需css和js -->
<link href="${pageContext.request.contextPath}/css/mystyle.css" type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/showPro.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.1.4.2-min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/showPro.js"></script>
</head>
<body>
<div class="container header">
	<div class="span5">
		<div class="logo">
			<a href="http://localhost:8080/mango/">
				<img class="sizeWH" src="${pageContext.request.contextPath}/image/top_01.jpg" alt="我的@商城"/>
			</a>
		</div>
	</div>
	<div class="span9">
<div class="headerAd">
					<img src="${pageContext.request.contextPath}/image/header.jpg" width="320" height="50" alt="正品保障" title="正品保障">
</div>	</div>
	
	<%@ include file="menu.jsp" %>
	
</div>	
<div class="container productList">
		<div class="span6">
			<div class="hotProductCategory">
				<s:iterator var="c" value="#session.cList">
						<dl>
							<dt>
								<a href="${pageContext.request.contextPath}/product_findByCid.action?cid=<s:property value="#c.cid"/>&page=1"><s:property value="#c.cname"/></a>
							</dt>
								<s:iterator var="cs" value="#c.categorySeconds">
									<dd>
										<a href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="#cs.csid"/>&page=1"><s:property value="#cs.csname"/></a>
									</dd>
								</s:iterator>	
						</dl>
				</s:iterator>		
			</div>
		</div>
		<div class="span18 last">
			
			<form id="productForm" action="${pageContext.request.contextPath}/image/蔬菜 - Powered By Mango Team.htm" method="get">
					
				<div id="result" class="result table clearfix">
						<ul>
							<s:iterator var="p" value="pageBean.list">
								<li>
										<a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>">
											<img src="${pageContext.request.contextPath}/<s:property value="#p.image"/>" width="170" height="170"  style="display: inline-block;">
											   
											<span style='color:green'>
											 <s:property value="#p.pname"/>
											</span>
											 
											<span class="price">
												商城价： ￥<s:property value="#p.shop_price"/>
											</span>
											 
										</a>
								</li>
							</s:iterator>	
								
						</ul>
				</div>
	<div class="pagination">
			<span>第 <s:property value="pageBean.page"/>/<s:property value="pageBean.totalPage"/> 页</span>
		<s:if test="cid != null">
			<s:if test="pageBean.page != 1">
				<a href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="cid"/>&page=1" class="firstPage">&nbsp;</a>
				<a href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="pageBean.page-1"/>" class="previousPage">&nbsp;</a>
			</s:if>
			
			<s:iterator var="i" begin="1" end="pageBean.totalPage">
				<s:if test="pageBean.page != #i">
					<a href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="#i"/>"><s:property value="#i"/></a>
				</s:if>
				<s:else>
					<span class="currentPage"><s:property value="#i"/></span>
				</s:else>
			</s:iterator>
			
			<s:if test="pageBean.page != pageBean.totalPage">	
				<a class="nextPage" href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="pageBean.page+1"/>">&nbsp;</a>
				<a class="lastPage" href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="pageBean.totalPage"/>">&nbsp;</a>
			</s:if>
		</s:if>	
		<s:if test="csid != null">
			<s:if test="pageBean.page != 1">
				<a href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="csid"/>&page=1" class="firstPage">&nbsp;</a>
				<a href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="csid"/>&page=<s:property value="pageBean.page-1"/>" class="previousPage">&nbsp;</a>
			</s:if>
			
			<s:iterator var="i" begin="1" end="pageBean.totalPage">
				<s:if test="pageBean.page != #i">
					<a href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="csid"/>&page=<s:property value="#i"/>"><s:property value="#i"/></a>
				</s:if>
				<s:else>
					<span class="currentPage"><s:property value="#i"/></span>
				</s:else>
			</s:iterator>
			
			<s:if test="pageBean.page != pageBean.totalPage">	
				<a class="nextPage" href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="csid"/>&page=<s:property value="pageBean.page+1"/>">&nbsp;</a>
				<a class="lastPage" href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="csid"/>&page=<s:property value="pageBean.totalPage"/>">&nbsp;</a>
			</s:if>
		</s:if>	
	</div>
			</form>
		</div>
	</div>
	<!-- 商品流动展示 -->
	<div class="limit-box" id="J-lb">

	<div class="limit-buy-hd">
		<h2>限时抢购</h2>
		<div class="limit-buy-nav" id="J-lbn">
			<a href="javascript:void(0)" class="prev"></a>
			<span>
				<em id="J-lbcp">1</em>/4
			</span>
			<a href="javascript:void(0)" class="next"></a>
		</div>
	</div>

	<a href="javascript:void(0);" class="btn-prev"></a>
	
	<div class="limit-buy-bd" id="limit-buy">
	
		<ul class="products">
			<li>
				<p class="pic"><a href="#" target="_blank"><img src="images/flowPro/01.jpg" alt="欧利萨斯 潮流秋冬新品棉鞋休闲男鞋保暖高帮工装男靴子马丁靴 8379 黑色" /></a></p>
				<p class="name"><a href="#" target="_blank">欧利萨斯 潮流秋冬新品棉鞋休闲男鞋保暖高帮工装男靴子马丁靴 8379 黑色</a></p>
				<p class="price">￥358.00</p>
			</li>
			<li>
				<p class="pic"><a href="#" target="_blank"><img src="images/flowPro/02.jpg" alt="泸州老窖传世窖（A5）( 两瓶套装))52度" /></a></p>
				<p class="name"><a href="#" target="_blank">泸州老窖传世窖（A5）( 两瓶套装))52度</a></p>
				<p class="price">￥158.00</p>
			</li>
			<li>
				<p class="pic"><a href="#" target="_blank"><img src="images/flowPro/03.jpg" alt="三洋（SANYO）32英寸LED电视32CE530ALED" /></a></p>
				<p class="name"><a href="#" target="_blank">三洋（SANYO）32英寸LED电视32CE530ALED</a></p>
				<p class="price">￥58.00</p>
			</li>
			<li>
				<p class="pic"><a href="#" target="_blank"><img src="images/flowPro/04.jpg" alt="宏碁（acer）14.0英寸笔记本电脑 V5-471G-32364G50Mabb（i3-2367M/4G/500G/14寸高清屏/DVD刻录/GT620M 1G独显/无线/蓝牙/USB3.0/Linux BE)天空蓝" /></a></p>
				<p class="name"><a href="#" target="_blank">宏碁（acer）14.0英寸笔记本电脑 V5-471G-32364G50Mabb（i3-2367M/4G/500G/14寸高清屏/DVD刻录/GT620M 1G独显/无线/蓝牙/USB3.0/Linux BE)天空蓝</a></p>
				<p class="price">￥148.00</p>
			</li>
			<li>
				<p class="pic"><a href="#" target="_blank"><img src="images/flowPro/05.jpg" alt="SWISSGEAR瑞士军刀超值三剑客套餐 商务拉杆箱+多功能双肩包+运动腰包" /></a></p>
				<p class="name"><a href="#" target="_blank">SWISSGEAR瑞士军刀超值三剑客套餐 商务拉杆箱+多功能双肩包+运动腰包</a></p>
				<p class="price">￥658.00</p>
			</li>
		</ul>
		
		<ul class="products">
			<li>
				<p class="pic"><a href="#" target="_blank"><img src="images/flowPro/06.jpg" alt="saff家纺 超柔珊瑚绒毯子 休闲多用毯 盖毯 垫毯 夏凉毯 空调毯180cm*200cm 紫" /></a></p>
				<p class="name"><a href="#" target="_blank">saff家纺 超柔珊瑚绒毯子 休闲多用毯 盖毯 垫毯 夏凉毯 空调毯180cm*200cm 紫<em></em></a></p>
				<p class="price">￥308.00</p>
			</li>
			<li>
				<p class="pic"><a href="#" target="_blank"><img src="images/flowPro/07.jpg" alt="美的（Midea）微波炉EG7KCGW2-NW" /></a></p>
				<p class="name"><a href="#" target="_blank">美的（Midea）微波炉EG7KCGW2-NW<em></em></a></p>
				<p class="price">￥68.00</p>
			</li>
			<li>
				<p class="pic"><a href="#" target="_blank"><img src="images/flowPro/08.jpg" alt="伟峰（WEIFENG）三脚架WT-3110A" /></a></p>
				<p class="name"><a href="#" target="_blank">伟峰（WEIFENG）三脚架WT-3110A<em></em></a></p>
				<p class="price">￥18.00</p>
			</li>
			<li>
				<p class="pic"><a href="#" target="_blank"><img src="images/flowPro/09.jpg" alt="力博得（Lebond）电动牙刷M.tic绿" /></a></p>
				<p class="name"><a href="#" target="_blank">力博得（Lebond）电动牙刷M.tic绿<em></em></a></p>
				<p class="price">￥8.00</p>
			</li>
			<li>
				<p class="pic"><a href="#" target="_blank"><img src="images/flowPro/10.jpg" alt="【大唐西域】干果阿妈特级精选和田枣120g*5袋 新疆特产大枣/红枣" /></a></p>
				<p class="name"><a href="#" target="_blank">【大唐西域】干果阿妈特级精选和田枣120g*5袋 新疆特产大枣/红枣<em></em></a></p>
				<p class="price">￥28.00</p>
			</li>
		</ul>

		<ul class="products">
			<li>
				<p class="pic"><a href="#" target="_blank"><img src="images/flowPro/05.jpg" alt="欧利萨斯 潮流秋冬新品棉鞋休闲男鞋保暖高帮工装男靴子马丁靴 8379 黑色" /></a></p>
				<p class="name"><a href="#" target="_blank">欧利萨斯 潮流秋冬新品棉鞋休闲男鞋保暖高帮工装男靴子马丁靴 8379 黑色</a></p>
				<p class="price">￥8.00</p>
			</li>
			<li>
				<p class="pic"><a href="#" target="_blank"><img src="images/flowPro/04.jpg" alt="泸州老窖传世窖（A5）( 两瓶套装))52度" /></a></p>
				<p class="name"><a href="#" target="_blank">泸州老窖传世窖（A5）( 两瓶套装))52度</a></p>
				<p class="price">￥18.00</p>
			</li>
			<li>
				<p class="pic"><a href="#" target="_blank"><img src="images/flowPro/03.jpg" alt="三洋（SANYO）32英寸LED电视32CE530ALED" /></a></p>
				<p class="name"><a href="#" target="_blank">三洋（SANYO）32英寸LED电视32CE530ALED</a></p>
				<p class="price">￥158.00</p>
			</li>
			<li>
				<p class="pic"><a href="#" target="_blank"><img src="images/flowPro/02.jpg" alt="宏碁（acer）14.0英寸笔记本电脑 V5-471G-32364G50Mabb（i3-2367M/4G/500G/14寸高清屏/DVD刻录/GT620M 1G独显/无线/蓝牙/USB3.0/Linux BE)天空蓝" /></a></p>
				<p class="name"><a href="#" target="_blank">宏碁（acer）14.0英寸笔记本电脑 V5-471G-32364G50Mabb（i3-2367M/4G/500G/14寸高清屏/DVD刻录/GT620M 1G独显/无线/蓝牙/USB3.0/Linux BE)天空蓝</a></p>
				<p class="price">￥68.00</p>
			</li>
			<li>
				<p class="pic"><a href="#" target="_blank"><img src="images/flowPro/01.jpg" alt="SWISSGEAR瑞士军刀超值三剑客套餐 商务拉杆箱+多功能双肩包+运动腰包" /></a></p>
				<p class="name"><a href="#" target="_blank">SWISSGEAR瑞士军刀超值三剑客套餐 商务拉杆箱+多功能双肩包+运动腰包</a></p>
				<p class="price">￥88.00</p>
			</li>
		</ul>
		
		<ul class="products">
			<li>
				<p class="pic"><a href="#" target="_blank"><img src="images/flowPro/10.jpg" alt="saff家纺 超柔珊瑚绒毯子 休闲多用毯 盖毯 垫毯 夏凉毯 空调毯180cm*200cm 紫" /></a></p>
				<p class="name"><a href="#" target="_blank">saff家纺 超柔珊瑚绒毯子 休闲多用毯 盖毯 垫毯 夏凉毯 空调毯180cm*200cm 紫<em></em></a></p>
				<p class="price">￥38.00</p>/flowPro/flowPro
			</li>
			<li>
				<p class="pic"><a href="#" target="_blank"><img src="images/flowPro/09.jpg" alt="美的（Midea）微波炉EG7KCGW2-NW" /></a></p>
				<p class="name"><a href="#" target="_blank">美的（Midea）微波炉EG7KCGW2-NW<em></em></a></p>
				<p class="price">￥98.00</p>
			</li>
			<li>
				<p class="pic"><a href="#" target="_blank"><img src="images/flowPro/08.jpg" alt="伟峰（WEIFENG）三脚架WT-3110A" /></a></p>
				<p class="name"><a href="#" target="_blank">伟峰（WEIFENG）三脚架WT-3110A<em></em></a></p>
				<p class="price">￥18.00</p>
			</li>
			<li>
				<p class="pic"><a href="#" target="_blank"><img src="images/flowPro/07.jpg" alt="力博得（Lebond）电动牙刷M.tic绿" /></a></p>
				<p class="name"><a href="#" target="_blank">力博得（Lebond）电动牙刷M.tic绿<em></em></a></p>
				<p class="price">￥38.00</p>
			</li>
			<li>
				<p class="pic"><a href="#" target="_blank"><img src="images/flowPro/06.jpg" alt="【大唐西域】干果阿妈特级精选和田枣120g*5袋 新疆特产大枣/红枣" /></a></p>
				<p class="name"><a href="#" target="_blank">【大唐西域】干果阿妈特级精选和田枣120g*5袋 新疆特产大枣/红枣<em></em></a></p>
				<p class="price">￥68.00</p>
			</li>
		</ul>
		
	</div>
	
	<a href="javascript:void(0);" class="btn-next"></a>
</div>
	
<!-- 	横线------------- -->
     <div style="margin-buttom:0px; background-color:#000;border: 10px solid #000;"></div>

 <!--  footter部分	 -->
 <div style="width:100%;background-color:#000;">
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
					
		</ul>
	</div>
	<div class="span24">
		<div class="copyright">Copyright © 2005-2016 我的@商城 版权所有</div>
	</div>
</div>
 </div>
</body></html>