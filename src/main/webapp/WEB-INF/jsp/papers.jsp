<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Papers</title>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <script src="js/window.js"></script>

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
