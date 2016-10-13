<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>菜单</title>
<link href="${pageContext.request.contextPath}/css/left.css" rel="stylesheet" type="text/css"/>
<link rel="StyleSheet" href="${pageContext.request.contextPath}/css/dtree.css" type="text/css" />

<!--    树形导航栏样式及js -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
						   
	/* 滑动/展开 */
	$("ul.expmenu li > div.header").click(function(){
												   
		var arrow = $(this).find("span.arrow");
	
		if(arrow.hasClass("up")){
			arrow.removeClass("up");
			arrow.addClass("down");
		}else if(arrow.hasClass("down")){
			arrow.removeClass("down");
			arrow.addClass("up");
		}
	
		$(this).parent().find("ul.menu").slideToggle();
		
	});
	
});
</script>
<script language="JavaScript">

function ShowMenu(obj,n){
 var Nav = obj.parentNode;
 if(!Nav.id){
  var BName = Nav.getElementsByTagName("ol");
  var HName = Nav.getElementsByTagName("h2");
  var t = 2;
 }else{
  var BName = document.getElementById(Nav.id).getElementsByTagName("span");
  var HName = document.getElementById(Nav.id).getElementsByTagName(".header");
  var t = 1;
 }
 for(var i=0; i<HName.length;i++){
  HName[i].innerHTML = HName[i].innerHTML.replace("-","+");
  HName[i].className = "";
 }
 obj.className = "h" + t;
 for(var i=0; i<BName.length; i++){if(i!=n){BName[i].className = "no";}}
 if(BName[n].className == "no"){
  BName[n].className = "";
  obj.innerHTML = obj.innerHTML.replace("+","-");
 }else{
  BName[n].className = "no";
  obj.className = "";
  obj.innerHTML = obj.innerHTML.replace("-","+");
 }
}

</script>
<style>
.menu ol { padding-left:15px; border:#E7E7E7 1px solid; border-top:none;background: #f7f2e5;}
.menu li i{background-color: #ae9c7e;padding: 1px 4px;color: #fff;text-shadow: 0px 0px 0px rgba(255, 255, 255, 0.8);font-family: 宋体;font-style:normal;}
.menu a{color: #3f3f3f;text-decoration: none;}
.menu .no {display:none;}
.menu ol a{width: 228px;display: block;line-height: 2em;margin-left: 20px;}
</style>

<!-- ---------------------- -->
</head>
<body>
<!--   树形导航栏 -->
   <ul class="expmenu">
		<li>
			<div class="header">
				<span class="label" >系统菜单树</span>
				<span class="arrow up"></span>
			</div>
			<span class="no">
			<ul class="menu" style="display:block;">
				<li  onClick="javascript:ShowMenu(this,0)"><a href="javascript:void(0)"><i>+</i> 用户管理</a></li>
			<ol class="no">
               <a href="${pageContext.request.contextPath}/userAdmin_findAll.action?page=1" title="用户管理" target="mainFrame">用户管理</a>
               
  			</ol>
			<li  onClick="javascript:ShowMenu(this,1)"><a href="javascript:void(0)"><i>+</i>  一级商品分类</a></li>
			<ol class="no">
             <a href="${pageContext.request.contextPath}/adminCategory_findAll.action" target="mainFrame">一级商品分类</a>
            <!--  <a href="javascript:void(0)">一体坐便器</a> -->
  			</ol>
            
			<li  onClick="javascript:ShowMenu(this,2)"><a href="javascript:void(0)"><i>+</i>  二级商品分类</a></li>
			<ol class="no">
             <a href="${pageContext.request.contextPath}/adminCategorySecond_findAll.action?page=1" target="mainFrame">二级商品分类</a>
             <!-- <a href="javascript:void(0)">一体坐便器</a> -->
  			</ol>
            
			<li  onClick="javascript:ShowMenu(this,3)"><a href="javascript:void(0)"><i>+</i>  商品管理</a></li>
			<ol class="no">
             <a href="${pageContext.request.contextPath}/adminProduct_findAll.action?page=1" target="mainFrame">商品管理</a>
             <!-- <a href="javascript:void(0)">一体坐便器</a> -->
  			</ol>

  			<li  onClick="javascript:ShowMenu(this,4)"><a href="javascript:void(0)"><i>+</i> 订单管理</a></li>
			<ol class="no">
             <a href="${pageContext.request.contextPath}/adminOrder_findAll.action?page=1" target="mainFrame">订单管理</a>
             <!-- <a href="javascript:void(0)">一体坐便器</a> -->
  			</ol>
		</ul>
		</span>
		</li>
		<li>
			<div class="header">
				<span class="label">完美</span>
			</div>
		</li>
	</ul>
</body>
</html>
