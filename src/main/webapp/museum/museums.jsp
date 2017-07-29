<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/7/25
  Time: 21:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/commons/inc.jsp"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
    <h1>${sessionScope.pagination.list}</h1>
    <tr>
        <th>COUNT</th>
        <th>NAME</th>
        <th>LOGO</th>
        <th>PICTURE</th>
        <th>ADDRESS</th>
        <th>WORKS</th>
    </tr>
    <c:forEach var="museum" items="${sessionScope.pagination.list}" varStatus="vs">
        <tr>
            <td>${vs.count}</td>
            <td>${museum.name}</td>
            <td>${museum.logo}</td>
            <td>${museum.picture}</td>
            <td>${museum.address}</td>
            <td>
                <c:forEach var="work" items="${museum.works}">
                    ${work.title}
                </c:forEach>
            </td>
        </tr>
    </c:forEach>
</table>
<c:import url="${ctx}/commons/page.jsp">
    <c:param name="path" value="museum/${sessionScope.pagination.statement}"/>
</c:import>
</body>
</html>
