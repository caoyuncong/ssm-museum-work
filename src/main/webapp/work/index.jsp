<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>work index page</title>
        <script src="${ctx}/assets/js/jquery.min.js"></script>
        <script>
            $(function () {
                $('button').click(function () {
                    $.ajax({
                        url: '/work/test',
                        type: 'post',
                        dataType: 'json',
                        success: function (data) {
                            $.each(data, function (index, item) {
                                console.log(index + ':' + item.title + "," + item.museum.name);
                            });

                        }
                    });
                });
            });
        </script>
    </head>
    <body>
        <h1>Work INDEX</h1>
        <p><a href="${ctx}/work/add.jsp">ADD</a></p>
        <p><a href="${ctx}/work/queryAll">LIST</a></p>
        <p><a href="${ctx}/work/queryWorks">作品->博物馆</a></p>
    <button>AJAX</button>
    </body>
${requestScope.message}
</html>