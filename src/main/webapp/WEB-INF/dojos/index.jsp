<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link rel="stylesheet" href="css/main.css" />
    <title>Dojos and Ninjas</title>
</head>
<style>
    /**{*/
    /*    background-color: aqua;*/
    /*}*/
</style>
<body>
<div class="container">
    <div style="text-align: center;"><h1>Bara Aqel Project</h1></div>

    <h1>Dojos and Ninjas</h1>
    <button><h3><a href="/ninjas">Ninjas</a></h3></button>
    <a href="/dojos/new">Add Dojo</a>
    <hr />
    <h2>All Dojos</h2>
    <ul>
        <c:forEach items="${ dojos }" var="dojo">
            <li><a href="/dojos/${ dojo.id }">${ dojo.name }</a></li>
        </c:forEach>
    </ul>
</div>
</body>
</html>
