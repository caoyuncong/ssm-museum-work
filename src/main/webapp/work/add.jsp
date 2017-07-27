<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>work add page</title>
    </head>
    <body>
        <h1>ADD Work</h1>
        <form action="${ctx}/work/create" method="post" enctype="multipart/form-data">
            <input name="title" placeholder="TITLE"><br>
            <input type="file" name="pictureFile"><br>
            <input name="artist" placeholder="ARTIST"><br>
            <input name="year" placeholder="YEAR"><br>
            <input name="museumId" placeholder="MUSEUMID"><br>
            <input type="submit" value="ADD">
        </form>
    </body>
</html>