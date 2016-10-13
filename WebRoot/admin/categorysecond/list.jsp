<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<HTML>
	<HEAD>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="${pageContext.request.contextPath}/css/Style1.css" rel="stylesheet" type="text/css" />
		<script language="javascript" src="${pageContext.request.contextPath}/js/public.js"></script>
		<script type="text/javascript">
			function addCategorySecond(){
				window.location.href = "${pageContext.request.contextPath}/adminCategorySecond_addPage.action";
			}
		</script>
				<!-- 样式 -->
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
    margin: 0 .5em 1em;
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


.round {
    border-radius: 1.25em;
}

.red {
    background-color: #ff6c6f;
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
							<strong style="font-size:16px;">商品二级分类列表</strong>
						</TD>
					</tr>
					<tr>
						<td class="ta_01" align="right">
							<button type="button" id="add" name="add" value="添加" class="button small round red" onclick="addCategorySecond()">
添加
</button>

						</td>
					</tr>
					<tr>
						<td class="ta_01" align="center" bgColor="#f5fafe">
							<table cellspacing="0" cellpadding="1" rules="all"
								bordercolor="gray" border="1" id="DataGrid1"
								style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
								<tr
									style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">

									<td align="center" width="18%">
										序号
									</td>
									<td align="center" width="17%">
										二级分类名称
									</td>
									<td width="7%" align="center">
										编辑
									</td>
									<td width="7%" align="center">
										删除
									</td>
								</tr>
									<s:iterator var="cs" value="pageBean.list" status="status">
										<tr onmouseover="this.style.backgroundColor = '#00ff00'"
											onmouseout="this.style.backgroundColor = 'white';">
											<td style="CURSOR: hand; HEIGHT: 32px" align="center"
												width="18%">
												<s:property value="#status.count"/>
											</td>
											<td style="CURSOR: hand; HEIGHT: 32px" align="center"
												width="17%">
												<s:property value="#cs.csname"/>
											</td>
											<td align="center" style="HEIGHT: 32px">
												<a href="${ pageContext.request.contextPath }/adminCategorySecond_edit.action?csid=<s:property value="#cs.csid"/>">
													<img src="${pageContext.request.contextPath}/images/i_edit.gif" border="0" style="CURSOR: hand">
												</a>
											</td>
									
											<td align="center" style="HEIGHT: 32px">
												<a href="${ pageContext.request.contextPath }/adminCategorySecond_delete.action?csid=<s:property value="#cs.csid"/>">
													<img src="${pageContext.request.contextPath}/images/i_del.gif" width="16" height="16" border="0" style="CURSOR: hand">
												</a>
											</td>
										</tr>
									</s:iterator>	
							</table>
						</td>
						
					</tr>
					<tr align="center">
						<td colspan="4">
						<div style="display:none;">
							第<s:property value="pageBean.page"/>/<s:property value="pageBean.totalPage"/>页  
							<s:if test="pageBean.page != 1">
								<a id="firstPag" href="${pageContext.request.contextPath }/adminCategorySecond_findAll.action?page=1">首页</a> |
								<a id="prePag" href="${pageContext.request.contextPath }/adminCategorySecond_findAll.action?page=<s:property value="pageBean.page-1"/>">上一页</a> |
							</s:if>
							<s:if test="pageBean.page != pageBean.totalPage">
							<a id="nextPag" href="${pageContext.request.contextPath }/adminCategorySecond_findAll.action?page=<s:property value="pageBean.page+1"/>">下一页</a> |
							<a id="lastPag" href="${pageContext.request.contextPath }/adminCategorySecond_findAll.action?page=<s:property value="pageBean.totalPage"/>">尾页</a> 
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

