<%--
  Created by IntelliJ IDEA.
  User: starr
  Date: 2018/12/4
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/style.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/mycss.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery.sorted.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/ckform.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/common.js"></script>
</head>
<body>
    <form class="form-inline definewidth m20" action="${pageContext.request.contextPath}/queryInventory" method="post" onsubmit="queryCommodityHandle()">
        <select name="commodityAttribute" >
            <option value="model">型号</option>
        </select>
        <input type="text" name="commodityAttributeDetails" class="abc input-default" value="">&nbsp;&nbsp;
        <button type="submit" class="btn btn-primary">查询库存</button>&nbsp;&nbsp;&nbsp;&nbsp;
        <button type="button" class="btn btn-success" id="addnewCommodity">新增产品</button>
    </form>



</body>
</html>
