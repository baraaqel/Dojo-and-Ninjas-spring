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
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link rel="stylesheet" href="css/main.css" />
    <title>Dojos n Ninjas</title>
</head>
<body>
<div class="container">
    <div style="text-align: center;"><h1>Bara Aqel Project</h1></div>
    <h1>Dojos and Ninjas</h1>
    <h3><a href="/dojos">Dojos</a></h3>
    <a href="/ninjas/new">Add Ninja</a>
    <hr />
    <h2>All Ninjas</h2>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>Name</th>
            <th>Age</th>
            <th>Dojo</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${ ninjas }" var="ninja">
            <tr>
                <td>${ ninja.firstName } ${ ninja.lastName }</td>
                <td>${ ninja.age }</td>
                <td>${ ninja.dojo.name }</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>