<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: junhyeok
  Date: 2021/02/14
  Time: 3:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Papers</title>

    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/menu.css">
    <link rel="stylesheet" href="css/papers.css">
</head>
<body>
<h1>Papers</h1>
<div>
    <ul id="menu">
        <li><button id="btn_home" onclick="location.href='/'">홈</button></li>
        <li><button id="btn_papers" onclick="location.href='/papers'">논문</button></li>
    </ul>
</div>
<c:forEach var="paper" items="${papers}">
    <div class="paper_item">
        <h1><c:out value="${paper.title}"/></h1>
        <h2><c:out value="${paper.author}"/></h2>
        <p><c:out value="${paper.abs}"/></p>
    </div>
</c:forEach>
<form method="GET" action="/papers">
    <select name="type">
        <option value="title">제목으로 검색</option>
        <option value="author">저자로 검색</option>
        <option value="abs">초록으로 검색</option>
    </select>
    <input id="search" type="text" name="keyword">
    <input type="submit" value="검색">
</form>
</body>
</html>
