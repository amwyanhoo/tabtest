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
    
    <title>��Ա�б� </title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<h2 style="color:#3398D4;" >��Ա�б�</h2>
	
	<table border="3" bordercolor="3398D4" width="800">
		<tr>
			<td align="center">ID</td>
			<td align="center">��Ա����</td>
			<td align="center">��ɫ</td>
		</tr>
		<c:forEach var="item" items="${items}" varStatus="index">
			<tr>
				<td align="center">${item.userid}</td>
				<td align="center">${item.username}</td>
				<td align="center">
					<c:choose>
						<c:when test="${item.roleid=='100'}">��������Ա</c:when>            
						<c:when test="${item.roleid=='101'}">ҵ�����Ա</c:when>
						<c:when test="${item.roleid=='102'}">��Ʋ���Ա</c:when>
						<c:when test="${item.roleid=='103'}">ҵ�����Ա</c:when>
						<c:when test="${item.roleid=='104'}">��ƹ���Ա</c:when>
					</c:choose>
				</td>
			</tr>
		</c:forEach>
	</table>
  </body>
</html>
