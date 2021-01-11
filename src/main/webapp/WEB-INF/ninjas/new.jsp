<%--
  Created by IntelliJ IDEA.
  User: REZOO FAMILY
  Date: 1/11/2021
  Time: 8:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link rel="stylesheet" href="css/main.css" />
    <title>Dojos and Ninjas</title>
</head>
<body>
<div class="container">
    <div style="text-align: center;"><h1>Bara Aqel Project</h1></div>
    <h1>Dojos and Ninjas</h1>
    <hr />
    <h2>Add a Ninja</h2>
    <form:form action="/ninjas" method="post" modelAttribute="ninja">
        <div class="form-group">
            <form:label path="dojo">Dojo Name</form:label>
            <form:errors path="dojo"/>
            <form:select class="form-control" path="dojo">
                <c:forEach items="${ dojos }" var="doj">
                    <option value="${ doj.id }">${ doj.name }</option>
                </c:forEach>
            </form:select>
        </div>
        <div class="form-group">
            <form:label path="firstName">First Name</form:label>
            <form:errors path="firstName"/>
            <form:input class="form-control" path="firstName"/>
        </div>
        <div class="form-group">
            <form:label path="lastName">Last Name</form:label>
            <form:errors path="lastName"/>
            <form:input class="form-control" path="lastName"/>
        </div>
        <div class="form-group">
            <form:label path="age">Age</form:label>
            <form:errors path="age"/>
            <form:input class="form-control" path="age"/>
        </div>
        <button>Add Ninja</button>
    </form:form>
</div>
</body>
</html>