<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>museum edit page</title>
    </head>
    <body>
        <h1>EDIT Museum</h1>
        <form action="${ctx}/museum/modify" method="post">
            <input type="hidden" name="id" value="${sessionScope.museum.id}">
            NAME: <input name="name" value="${sessionScope.museum.name}"><br>
            LOGO: <input name="logo" value="${sessionScope.museum.logo}"><br>
            PICTURE: <input name="picture" value="${sessionScope.museum.picture}"><br>
            ADDRESS: <input name="address" value="${sessionScope.museum.address}"><br>
            <input type="submit" value="SAVE">
        </form>
    </body>
</html>