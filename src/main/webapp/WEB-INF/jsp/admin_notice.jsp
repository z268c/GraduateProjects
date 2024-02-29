<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>公告</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js" ></script>
    <script>
        $(function () {
            $('#header').load('admin_header.html');
        })
    </script>
</head>
<body background="img/u5.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">
<div id="header"></div>

<div style="position: relative;padding-top: 100px">
    <c:if test="${!empty succ}">
        <div class="alert alert-success alert-dismissable">
            <button type="button" class="close" data-dismiss="alert"
                    aria-hidden="true">
                &times;
            </button>
                ${succ}
        </div>
    </c:if>
    <c:if test="${!empty error}">
        <div class="alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert"
                    aria-hidden="true">
                &times;
            </button>
                ${error}
        </div>
    </c:if>
</div>
<div class="panel panel-default" style="width: 90%;margin-left: 5%">
    <div class="panel-heading">
        <h3 class="panel-title">
            公告管理
        </h3>
    </div>
    <div class="panel-body">
        <table class="table table-hover">
            <thead style="background-color: lightgray;">
            <tr>
                <th>id</th>
                <th>公告内容</th>
                <th>发布时间</th>
                <th>发布人</th>
                <th>删除</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${list}" var="alog">
                <tr>
                    <td><c:out value="${alog.N_Id}"></c:out></td>
                    <td><c:out value="${alog.content}"></c:out></td>
                    <td><c:out value="${alog.publish_time}"></c:out></td>
                    <td><c:out value="${alog.publish_human}"></c:out></td>
                    <td>
                        <a href="deletelend.html?N_id=<c:out value='${alog.N_id}'></c:out>">
                            <c:if test="${!empty alog.publish_human}">
                                <button type="button" class="btn btn-danger btn-xs">删除</button>
                            </c:if>
                            <c:if test="${empty alog.publish_human}">
                                <button type="button" class="btn btn-default btn-xs" disabled="disabled">删除</button>
                            </c:if>
                        </a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
