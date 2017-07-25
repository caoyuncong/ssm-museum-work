<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>work edit page</title>
    </head>
    <body>
        <h1>EDIT Work</h1>
        <form action="${ctx}/work/modify" method="post">
            <input type="hidden" name="id" value="${sessionScope.work.id}">
            TITLE: <input name="title" value="${sessionScope.work.title}"><br>
            PICTURE: <input name="picture" value="${sessionScope.work.picture}"><br>
            ARTIST: <input name="artist" value="${sessionScope.work.artist}"><br>
            YEAR: <input name="year" value="${sessionScope.work.year}"><br>
            MUSEUMID: <input name="museumId" value="${sessionScope.work.museumId}"><br>
            <input type="submit" value="SAVE">
        </form>
    </body>
</html>