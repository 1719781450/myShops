<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<HTML>
	<HEAD>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="${pageContext.request.contextPath}/css/Style1.css" rel="stylesheet" type="text/css" />
		<script language="javascript" src="${pageContext.request.contextPath}/js/public.js"></script>
		<script type="text/javascript">
			function showDetail(oid){
				var but = document.getElementById("but"+oid);
				var div1 = document.getElementById("div"+oid);
				if(but.value == "订单详情"){
					// 1.创建异步对象
					var xhr = createXmlHttp();
					// 2.设置监听
					xhr.onreadystatechange = function(){
						if(xhr.readyState == 4){
							if(xhr.status == 200){
								
								div1.innerHTML = xhr.responseText;
							}
						}
					}
					// 3.打开连接
					xhr.open("GET","${pageContext.request.contextPath}/adminOrder_findOrderItem.action?oid="+oid+"&time="+new Date().getTime(),true);
					// 4.发送
					xhr.send(null);
					but.value = "关闭";
				}else{
					div1.innerHTML = "";
					but.value="订单详情";
				}
				
			}
			function createXmlHttp(){
				   var xmlHttp;
				   try{ // Firefox, Opera 8.0+, Safari
				        xmlHttp=new XMLHttpRequest();
				    }
				    catch (e){
					   try{// Internet Explorer
					         xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
					      }
					    catch (e){
					      try{
					         xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
					      }
					      catch (e){}
					      }
				    }

					return xmlHttp;
				 }
		</script>
		
				<style>
* {
	margin: 0;
	padding: 0;
	list-style: none;
}

a {
	text-decoration: none;
}

a:hover {
	text-decoration: none;
}

.tcdPageCode {
	padding: 15px 20px;
	text-align: left;
	color: #ccc;
	text-align: center;
}

.tcdPageCode a {
	display: inline-block;
	color: #428bca;
	display: inline-block;
	height: 25px;
	line-height: 25px;
	padding: 0 10px;
	border: 1px solid #ddd;
	margin: 0 2px;
	border-radius: 4px;
	vertical-align: middle;
}

.tcdPageCode a:hover {
	text-decoration: none;
	border: 1px solid #428bca;
}

.tcdPageCode span.current {
	display: inline-block;
	height: 25px;
	line-height: 25px;
	padding: 0 10px;
	margin: 0 2px;
	color: #fff;
	background-color: #428bca;
	border: 1px solid #428bca;
	border-radius: 4px;
	vertical-align: middle;
}

.tcdPageCode span.disabled {
	display: inline-block;
	height: 25px;
	line-height: 25px;
	padding: 0 10px;
	margin: 0 2px;
	color: #bfbfbf;
	background: #f2f2f2;
	border: 1px solid #bfbfbf;
	border-radius: 4px;
	vertical-align: middle;
}
/* Button - these styles are the good stuff */

.button {
    background-color: #999;
    background-image: -webkit-linear-gradient(hsla(0,0%,100%,.05), hsla(0,0%,0%,.1));
    background-image:    -moz-linear-gradient(hsla(0,0%,100%,.05), hsla(0,0%,0%,.1));
    background-image:     -ms-linear-gradient(hsla(0,0%,100%,.05), hsla(0,0%,0%,.1));
    background-image:      -o-linear-gradient(hsla(0,0%,100%,.05), hsla(0,0%,0%,.1));
    background-image:         linear-gradient(hsla(0,0%,100%,.05), hsla(0,0%,0%,.1));
    border: none;
    border-radius: .5em;
    box-shadow: inset 0 0 0 1px hsla(0,0%,0%,.2),
                inset 0 2px 0 hsla(0,0%,100%,.1),
                inset 0 1.2em 0 hsla(0,0%,100%,0.1),
                inset 0 -.2em 0 hsla(0,0%,100%,.1),
                inset 0 -.25em 0 hsla(0,0%,0%,.25),
                0 .25em .25em hsla(0,0%,0%,.05);
    color: #444;
    cursor: pointer;
    display: inline-block;
    font-family: sans-serif;
    font-size: 1em;
    font-weight: bold;
    line-height: 1.5;
    margin: 10px .5em 1em;
    padding: .5em 1.5em .75em;
    position: relative;
    text-decoration: none;
    text-shadow: 0 1px 1px hsla(0,0%,100%,.25);
    vertical-align: middle;
}
.button:hover {
    outline: none;
}
.button:hover,
.button:focus {
    box-shadow: inset 0 0 0 1px hsla(0,0%,0%,.2),
                inset 0 2px 0 hsla(0,0%,100%,.1),
                inset 0 1.2em 0 hsla(0,0%,100%,.1),
                inset 0 -.2em 0 hsla(0,0%,100%,.1),
                inset 0 -.25em 0 hsla(0,0%,0%,.25),
                inset 0 0 0 3em hsla(0,0%,100%,.2),
                0 .25em .25em hsla(0,0%,0%,.05);
}
.button:active {
    box-shadow: inset 0 0 0 1px hsla(0,0%,0%,.2),
                inset 0 2px 0 hsla(0,0%,100%,.1),
                inset 0 1.2em 0 hsla(0,0%,100%,.1),
                inset 0 0 0 3em hsla(0,0%,100%,.2),
                inset 0 .25em .5em hsla(0,0%,0%,.05),
                0 -1px 1px hsla(0,0%,0%,.1),
                0 1px 1px hsla(0,0%,100%,.25);
    margin-top: .25em;
    outline: none;
    padding-bottom: .5em;
}



.small {
    font-size: .75em;
}

/* Regular */

.regular {
    border-radius: .5em;
}

/* Green */

.green {
    background-color: #6fcf6f;
}
</style>
	</HEAD>
	<body>
		<br>
		<form id="Form1" name="Form1" action="${pageContext.request.contextPath}/user/list.jsp" method="post">
			<table cellSpacing="1" cellPadding="0" width="100%" align="center" bgColor="#f5fafe" border="0">
				<TBODY>
					<tr>
						<td class="ta_01" align="center" bgColor="#afd1f3">
							<strong style="font-size:16px;">订单详情列表</strong>
						</TD>
					</tr>
					
					<tr>
						<td class="ta_01" align="center" bgColor="#f5fafe">
							<table cellspacing="0" cellpadding="1" rules="all"
								bordercolor="gray" border="1" id="DataGrid1"
								style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
								<tr
									style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">

									<td align="center" width="10%">
										序号
									</td>
									<td align="center" width="10%">
										订单编号
									</td>
									<td align="center" width="10%">
										订单金额
									</td>
									<td align="center" width="10%">
										收货人
									</td>
									<td align="center" width="10%">
										订单状态
									</td>
									<td align="center" width="50%">
										订单详情
									</td>
								</tr>
									<s:iterator var="o" value="pageBean.list" status="status">
										<tr onmouseover="this.style.backgroundColor = '#00ff00'"
											onmouseout="this.style.backgroundColor = 'white';">
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="18%">
												<s:property value="#status.count"/>
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="17%">
												<s:property value="#o.oid"/>
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="17%">
												<s:property value="#o.total"/>
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="17%">
												<s:property value="#o.name"/>
											</td>
											<td style="CURSOR: hand; HEIGHT: 22px" align="center"
												width="17%">
												<s:if test="#o.state==1">
													未付款
												</s:if>
												<s:if test="#o.state==2">
													<a href="${ pageContext.request.contextPath }/adminOrder_updateState.action?oid=<s:property value="#o.oid"/>"><font color="blue">发货</font></a>
												</s:if>
												<s:if test="#o.state==3">
													等待确认收货
												</s:if>
												<s:if test="#o.state==4">
													订单完成
												</s:if>
											
											</td>
							              <td align="center" style="HEIGHT: 22px">
												<input type="button" class="button small regular green" value="订单详情" id="but<s:property value="#o.oid"/>" onclick="showDetail(<s:property value="#o.oid"/>)"/>
												<div id="div<s:property value="#o.oid"/>">
													
												</div>
											</td>
										</tr>
									</s:iterator>	
							</table>
						</td>
					</tr>
					<tr align="center">
						<td colspan="7">
						<div style="display:none;">
							第<s:property value="pageBean.page"/>/<s:property value="pageBean.totalPage"/>页 
							<s:if test="pageBean.page != 1">
								<a id="firstPag" href="${ pageContext.request.contextPath }/adminOrder_findAll.action?page=1">首页</a>|
								<a id="prePag" href="${ pageContext.request.contextPath }/adminOrder_findAll.action?page=<s:property value="pageBean.page-1"/>">上一页</a>|
							</s:if>
							<s:if test="pageBean.page != pageBean.totalPage">
								<a id="nextPag" href="${ pageContext.request.contextPath }/adminOrder_findAll.action?page=<s:property value="pageBean.page+1"/>">下一页</a>|
								<a id="lastPag" href="${ pageContext.request.contextPath }/adminOrder_findAll.action?page=<s:property value="pageBean.totalPage"/>">尾页</a>|
							</s:if>
							</div>
							
							<div class="tcdPageCode"></div><!-- 分页代码 -->
						</td>
					</tr>
				</TBODY>
			</table>
		</form>
		
<script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.page.js"></script>
<script>
    var totalPag=<s:property value="pageBean.totalPage"/>;
    var curP =1;//当前选中的那个页  局部变量
    var Page=0;
     curP = <s:property value="pageBean.page"/>;
    $(".tcdPageCode").createPage({
        pageCount:totalPag,
        current:curP,
        backFn:function(p){
          Page = p; //当前鼠标点击的页数
        /*  curP = Page; */
        var  currentPag = <s:property value="pageBean.page"/>; //当前页
        if(currentPag < p){
          nextPag();
        }else if(currentPag > p){
           prePag();
        }else{
        return false;
        } 
		}
	});
	
	function firstPag(){
	 document.getElementById("firstPag").click();
	 alert(<s:property value="pageBean.page"/>);
	}
	function prePag(){
	    document.getElementById("prePag").click();
	     p=<s:property value="pageBean.page"/>;
	}
		function nextPag(){ 
	    document.getElementById("nextPag").click();
	}
	function lastPag(){
	 document.getElementById("lastPag").click();
	}
	
	   /*  var path ="${ pageContext.request.contextPath }/userAdmin_findAll.action?page=<s:property value='pageBean.page+1'/>";  
	       path=path.substr(1);
	       alert(path);
	    $.ajax({
				type : "POST",
				url : "path",
				data : "content=" + content, 
				timeout : 20000,
				cache : false,
				success : function() {
					alert("获取成功");
				},
				error : function() {
					alert("ajax失败！");
				}
			}); */ 
</script>
	</body>
</HTML>

