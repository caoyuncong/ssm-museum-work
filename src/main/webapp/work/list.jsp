<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>work list page</title>
        <script>
            function del() { return confirm('REMOVE?'); }
        </script>
    </head>
    <body>
        <c:import url="add.jsp"/>
        <hr/>
        <h1>LIST Work</h1>
        <hr/>
        <table border="1">
            <tr>
                <th>COUNT</th>
                <th>TITLE</th>
                <th>PICTURE</th>
                <th>ARTIST</th>
                <th>YEAR</th>
                <th>MUSEUMID</th>
                <th colspan="2">OPERATION</th>
            </tr>
            <c:forEach var="work" items="${sessionScope.pagination.list}" varStatus="vs">
            <tr>
                <td>${vs.count}</td>
                <td>${work.title}</td>
                <td>${work.picture}</td>
                <td>${work.artist}</td>
                <td>${work.year}</td>
                <td>${work.museumId}</td>
                <td><a href="${ctx}/work/queryById/${work.id}">EDIT</a></td>
                <td><a class="delete" href="${ctx }/work/remove/${work.id}" onclick="return del()">REMOVE</a></td>
            </tr>
            </c:forEach>
        </table>
        <c:import url="${ctx}/commons/page.jsp">
            <c:param name="path" value="work/${sessionScope.pagination.statement}"/>
        </c:import>
    </body>
</html>