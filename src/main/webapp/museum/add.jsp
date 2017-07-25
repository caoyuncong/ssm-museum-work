<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>museum add page</title>
    </head>
    <body>
        <h1>ADD Museum</h1>
        <form action="${ctx}/museum/create" method="post">
            <input name="name" placeholder="NAME"><br>
            <input name="logo" placeholder="LOGO"><br>
            <input name="picture" placeholder="PICTURE"><br>
            <input name="address" placeholder="ADDRESS"><br>
            <input type="submit" value="ADD">
        </form>
    </body>
</html>