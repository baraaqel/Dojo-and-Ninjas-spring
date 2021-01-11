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
    <hr/>
    <h2>${ dojo.name } Area Ninjas</h2>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>Name</th>
            <th>Age</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${ dojo.ninjas }" var="ninja">
            <tr>
                <td>${ ninja.firstName } ${ ninja.lastName }</td>
                <td>${ ninja.age }</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>