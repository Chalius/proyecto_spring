
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    </head>
    <body>
        <div style="text-align: center;">
            <h1>Datos de usuario</h1>
            <h3>Bienvenido <sec:authentication property="principal.username" />!</h3>
            <a href="index.htm">Ir a página principal</a>

            <sec:authorize access="!hasRole('ROLE_ANONYMOUS')">     
                <a href="<c:url value="salir.htm" />" class="btn btn-danger">Cerrar Sesion</a>       
            </sec:authorize>

            <br>


        </div>







    </body>
</html>
