<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<HTML>
	<HEAD>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="${pageContext.request.contextPath}/css/Style1.css" rel="stylesheet" type="text/css" />
		<%-- <script language="javascript" src="${pageContext.request.contextPath}/js/public.js"></script> --%>
		<script type="text/javascript">
			function addCategory(){
				window.location.href = "${pageContext.request.contextPath}/admin/category/add.jsp";
			}
		</script>
		
		<!-- 样式 -->
			<style>

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
			<table cellSpacing="1" cellPadding="0" width="100%" align="center" bgColor="#f5fafe" border="0">
				<TBODY>
					<tr>
						<td class="ta_01" align="center" bgColor="#afd1f3">
							<strong  style="font-size:16px;">商品一级分类列表</strong>
						</TD>
					</tr>
					<tr>
						<td class="ta_01" align="right">
							<button type="button" id="add" name="add" value="添加" class="button small round red" onclick="addCategory()">
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
										一级分类名称
									</td>
									<td width="7%" align="center">
										编辑
									</td>
									<td width="7%" align="center">
										删除
									</td>
								</tr>
									<s:iterator var="c" value="cList" status="status">
										<tr onmouseover="this.style.backgroundColor = '#00ff00'"
											onmouseout="this.style.backgroundColor = 'white';">
											<td style="CURSOR: hand; HEIGHT: 32px" align="center"
												width="18%">
												<s:property value="#status.count"/>
											</td>
											<td style="CURSOR: hand; HEIGHT: 32px" align="center"
												width="17%">
												<s:property value="#c.cname"/>
											</td>
											<td align="center" style="HEIGHT: 32px">
												<a href="${ pageContext.request.contextPath }/adminCategory_edit.action?cid=<s:property value="#c.cid"/>">
													<img src="${pageContext.request.contextPath}/images/i_edit.gif" border="0" style="CURSOR: hand">
												</a>
											</td>
									
											<td align="center" style="HEIGHT: 32px">
												<a href="${ pageContext.request.contextPath }/adminCategory_delete.action?cid=<s:property value="#c.cid"/>">
													<img src="${pageContext.request.contextPath}/images/i_del.gif" width="16" height="16" border="0" style="CURSOR: hand">
												</a>
											</td>
										</tr>
									</s:iterator>	
							</table>
						</td>
					</tr>
				</TBODY>
			</table>
	</body>
</HTML>

