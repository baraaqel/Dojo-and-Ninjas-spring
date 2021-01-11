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
    <title>Dojos n Ninjas</title>
</head>
<body>
<div class="container">
    <div style="text-align: center;"><h1>Bara Aqel Project</h1></div>
    <h1>Dojos and Ninjas</h1>
    <hr />
    <h2>Add a Dojo</h2>
    <form:form action="/dojos" method="post" modelAttribute="dojo">
        <div class="form-group">
            <form:label path="name">Dojo Name</form:label>
            <form:errors path="name"/>
            <form:input class="form-control" path="name"/>
        </div>
        <button>Add Dojo</button>
    </form:form>
</div>
</body>
</html>