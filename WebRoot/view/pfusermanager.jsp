<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>人员列表 </title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="<%=request.getContextPath() %>/static/css/base.css" rel="stylesheet" type="text/css" />
    <link href="<%=request.getContextPath() %>/static/js/easyui/css/default.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/js/easyui/js/themes/icon.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/js/easyui/js/themes/default/easyui.css" />
    <script type="text/javascript" src="<%=request.getContextPath() %>/static/js/easyui/js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/static/js/easyui/js/jQuery.easyui.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/static/js/easyui/easyloader.js"></script>
  </head>
  
  <body>
  	<h2 style="color:#3398D4;" >人员角色管理</h2>
	<form id=editform  method="post">
		<input type="hidden" id="selid" name="pfUserDept.userid"/>
		<table border="3" bordercolor="3398D4" width="800">
			<tr>
				<td align="center">ID</td>
				<td align="center">人员名称</td>
				<td align="center">角色</td>
				<td align="center">操作</td>
			</tr>
			<c:forEach var="item" items="${items}" varStatus="index">
				<tr>
					<td align="center">${item.userid}</td>
					<td align="center">${item.username}</td>
					<td align="center">
						<select onchange="change(this);">
							<option value="100" <c:if test="${item.roleid==100}">selected</c:if>>超级管理员</option>              
							<option value="101" <c:if test="${item.roleid==101}">selected</c:if>>业务管理员</option>
							<option value="102" <c:if test="${item.roleid==102}">selected</c:if>>审计操作员</option>
							<option value="103" <c:if test="${item.roleid==103}">selected</c:if>>业务操作员</option>
							<option value="104" <c:if test="${item.roleid==104}">selected</c:if>>审计管理员</option>
						</select>
					</td>
					<td align="center">
						<a href="#" onClick="editrole('${item.userid}');" class="easyui-linkbutton" data-options="iconCls:'icon-edit'">修改</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</form>
  </body>
  
  <script type="text/javascript">
  	var roleid;
  	function change(obj){
<%--		alert(obj);--%>
		roleid=obj.value;
  	}
	function editrole(selid){
		 $.ajax({
	        url:"pfuserdept/update",
	        type:"post",
	        data: {userid:selid,roleid:roleid},
	        datatype: "text",
	        success:function(data){
				if(data=="success"){
	            	alert("添加成功！");
					
				}else{
					alert("添加失败！");
				}
	        },error:function(){
	            alert("服务器忙，请稍候再试！");
	        }
	     });
		$("#editform").attr("action", "/pfuserdept/findPfuser");
		$("#editform").submit();
	}
  </script>
</html>
