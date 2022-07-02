<%--
  Created by IntelliJ IDEA.
  User: Aleksander
  Date: 2022-07-01
  Time: 6:52 p.m.
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
  <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body >

<div>

    <h1 style="color: darkred">Add Dog</h1>

    <%--@elvariable id="newDog" type="java"--%>
    <form:form action="/new/dog" method="post" modelAttribute="newDog" >
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
        <input style="margin-left: 200px;background-color: royalblue;color: white" type="submit" value="Add"/>
    </form:form>
</div>

</body>
</html>

