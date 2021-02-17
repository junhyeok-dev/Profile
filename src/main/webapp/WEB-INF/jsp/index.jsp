<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jDev</title>

    <link rel="shortcut icon" href="images/favicon.ico" type="images/x-icon">

    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <script src="js/window.js"></script>

    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/menu.css">
</head>
<body>
<h1><img src="images/jdev.png" alt="jDev"></h1>
<div>
    <ul id="menu">
        <li><button id="btn_home" onclick="location.href='/'">홈</button></li>
        <li><button id="btn_papers" onclick="location.href='/papers'">논문</button></li>
    </ul>
</div>
</body>
</html>
