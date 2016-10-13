<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的@商城--跳转页面</title>
<link href="${pageContext.request.contextPath}/css/xindong.css" rel="stylesheet" type="text/css"/>

<script src="${pageContext.request.contextPath}/js/prefixfree.min.js"></script>

</head>
<body>
<div class="container bg">
	<div class="hometown">
		<div class="heart"></div>
		<div id="top" class="top">Made in</div>
		<div class="city">我的@商城</div>
		<div id="bottom" class="bottom">心动 不如 行动</div>
	</div>
</div>

<script type="text/javascript" src='${pageContext.request.contextPath}/js/jquery12.js'></script>
<script type="text/javascript" src='${pageContext.request.contextPath}/js/jquery.lettering.js'></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#top").lettering();
	$("#bottom").lettering();
});
</script>

<div style="text-align:center;margin:80px 0; font:normal 14px/24px 'MicroSoft YaHei';">
        <font style="font-weight:bold; color:#FF0000">
	        <s:actionmessage/>
	        <s:actionerror/>
        </font>
   <div class="font-style">
  <a href="${ pageContext.request.contextPath }/index.action">首页</a>
  <a href="${ pageContext.request.contextPath }/user_registPage.action">注册</a>
  <a href="${ pageContext.request.contextPath }/user_loginPage.action">登录</a>
  </div>
</div>
</body>
</html>