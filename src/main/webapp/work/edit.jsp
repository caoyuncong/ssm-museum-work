<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>work edit page</title>
    </head>
    <body>
        <h1>EDIT Work</h1>
        <form action="${ctx}/work/modify" method="post" enctype="multipart/form-data">
            <input type="hidden" name="id" value="${sessionScope.work.id}">
            <input type="hidden" name="picture" value="${sessionScope.work.picture}">
            TITLE: <input name="title" value="${sessionScope.work.title}"><br>
            <img src="${ctx}/assets/photo/${sessionScope.work.picture}" alt="${sessionScope.work.picture}" height="50"><br>
            PICTURE: <input type="file" name="pictureFile"><br>

            ARTIST: <input name="artist" value="${sessionScope.work.artist}"><br>
            YEAR: <input name="year" value="${sessionScope.work.year}"><br>
            MUSEUMID: <input name="museumId" value="${sessionScope.work.museumId}"><br>
            <input type="submit" value="SAVE">
        </form>
    </body>
</html>