<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>museum list page</title>
        <script>
            function del() { return confirm('REMOVE?'); }
        </script>
    </head>
    <body>
        <c:import url="add.jsp"/>
        <hr/>
        <h1>LIST Museum</h1>
        <hr/>
        <table border="1">
            <tr>
                <th>COUNT</th>
                <th>NAME</th>
                <th>LOGO</th>
                <th>PICTURE</th>
                <th>ADDRESS</th>
                <th colspan="2">OPERATION</th>
            </tr>
            <c:forEach var="museum" items="${sessionScope.pagination.list}" varStatus="vs">
            <tr>
                <td>${vs.count}</td>
                <td>${museum.name}</td>
                <td>${museum.logo}</td>
                <td>${museum.picture}</td>
                <td>${museum.address}</td>
                <td><a href="${ctx}/museum/queryById/${museum.id}">EDIT</a></td>
                <td><a class="delete" href="${ctx }/museum/remove/${museum.id}" onclick="return del()">REMOVE</a></td>
            </tr>
            </c:forEach>
        </table>
        <c:import url="${ctx}/commons/page.jsp">
            <c:param name="path" value="museum/${sessionScope.pagination.statement}"/>
        </c:import>
    </body>
</html>