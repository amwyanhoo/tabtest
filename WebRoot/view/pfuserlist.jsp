<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>人员列表 </title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/js/easyui/js/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/js/easyui/js/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/static/js/easyui/demo.css">
	<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/easyui/js/jquery-1.4.2.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/easyui/js/jQuery.easyui.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/easyui/easyloader.js"></script>
</head>
<body>
	<h2>人员列表</h2>
	
	<table>
		<tr>
			<td>ID</td>
			<td>人员名称</td>
			<td>在用状态</td>
		</tr>
		<c:forEach var="item" items="${items}" varStatus="index">
			<tr>
				<td>${item.userid}</td>
				<td>${item.username}</td>
				<td>
					<c:choose>
						<c:when test="${item.ieventresult=='1'}">正常</c:when> 
						<c:otherwise>已注销</c:otherwise>
					</c:choose>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>