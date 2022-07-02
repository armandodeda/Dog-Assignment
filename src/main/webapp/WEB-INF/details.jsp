<%--
  Created by IntelliJ IDEA.
  User: Aleksander
  Date: 2022-06-30
  Time: 7:47 p.m.
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>

<div class="container d-flex align-items-center flex-column" style="margin-top: 15px" >
    <div class="d-flex align-items-center" style="margin-bottom: 30px">
        <h1 class="text-decoration-underline text-warning" style="margin-right: 150px">Dog Details</h1>
        <a href="/">Go back</a>
    </div>


    <div class="d-flex border-3">
        <div style="margin-right: 50px">
            <h2>Name:</h2>
            <h2>Breed:</h2>
            <h2>Age:</h2>
            <h2>House Broken</h2>
        </div>
        <div>
            <h2><c:out value="${dog.name}"></c:out></h2>
            <h2><c:out value="${dog.breed}"></c:out></h2>
            <h2><c:out value="${dog.age}"></c:out></h2>
            <h2><c:out value="${dog.house_broken}"></c:out></h2>
        </div>
    </div>
</div>

</body>
</html>

