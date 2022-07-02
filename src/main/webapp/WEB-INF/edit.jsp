<%--
  Created by IntelliJ IDEA.
  User: Aleksander
  Date: 2022-06-30
  Time: 2:45 p.m.
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
<div class="container d-flex flex-column mt-xl-5 align-items-center">
    <div class="d-flex justify-content-around align-items-center mb-xxl-4">
        <h1 style="color: saddlebrown;margin-right: 50px">Edit Dog</h1>
        <a href="/">Go back</a>
    </div>

    <div>
        <%--@elvariable id="forEditing" type="java"--%>
        <form:form action="/updateDog/${forEditing.id}" method="put" modelAttribute="forEditing" >
            <p>
                <form:label path="name">Name: </form:label>
                <form:errors cssClass="text-danger" path="name"/>
                <form:input path="name"/>
            </p>
            <p>
                <form:label path="breed">Breed: </form:label>
                <form:errors cssClass="text-danger" path="breed"/>
                <form:input path="breed"/>
            </p>
            <p>
                <form:label path="age">Age: </form:label>
                <form:errors cssClass="text-danger" path="age"/>
                <form:input type="number" path="age"/>
            </p>
            <p>
                <form:label path="house_broken" cssClass="align-top">House Broken:    </form:label>
                <form:errors cssClass="text-danger" path="house_broken"/>
                <form:label path="house_broken">Yes</form:label>
                <form:radiobutton value="true" path="house_broken"/>
                <form:label path="house_broken">No</form:label>
                <form:radiobutton value="false" path="house_broken"/>
            </p>
            <input style="margin-left: 200px" type="submit" value="Submit"/>
        </form:form>
    </div>
</div>

</body>
</html>
