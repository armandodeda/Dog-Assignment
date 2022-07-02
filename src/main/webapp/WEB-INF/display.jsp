<%--
  Created by IntelliJ IDEA.
  User: Aleksander
  Date: 2022-06-30
  Time: 12:21 a.m.
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <!-- for Bootstrap CSS -->
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
<div class="container">
    <div class="mb-lg-5">
        <h1 class="text-center" >All Dogs</h1>
        <a href="/new" >Add Dog</a>
        <table class="table table-striped table-bordered mt-5">
            <tr >
                <th>Name</th>
                <th>Breed</th>
                <th>Age</th>
                <th>House Broken</th>
                <th>Action</th>
            </tr>
            <c:forEach var="dog" items="${dogs}">
                <tr>
                    <td><a href="/dogDetails/${dog.id}"><c:out value="${dog.name}"></c:out></a></td>
                    <td><c:out value="${dog.breed}"></c:out></td>
                    <td><c:out value="${dog.age}"></c:out></td>
                    <td><c:out value="${dog.house_broken}"></c:out></td>
                    <td class="d-inline-flex">
                        <a href="/edit/${dog.id}">edit</a> <h4>|</h4>
                        <form action="/dog/${dog.id}" method="post" >
                            <input type="hidden" name="_method" value="delete"  >
                        <input type="submit" value="Delete" class="button p-1" style="background-color: darkred;color: white">
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>

</div>

</body>
</html>

