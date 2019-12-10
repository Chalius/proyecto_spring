<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


    </head>

    <body>
        <div style="text-align: center;">

            <h1>Movie Store</h1>

            <sec:authorize access="hasRole('ROLE_ANONYMOUS')">
                <a href="datos_de_usuario.htm" class="card-body px-lg-5 pt-0">Iniciar sesión</a>
            </sec:authorize>

            <sec:authorize access="!hasRole('ROLE_ANONYMOUS')">     
                <a href="datos_de_usuario.htm" class="card-body px-lg-5 pt-0">Datos de usuario</a>
                <a href="<c:url value="salir.htm" />" class="btn btn-danger">Cerrar Sesion</a> 
            </sec:authorize>

            <p>En esta página podrás comprar tus peliculas</p>

        </div>


    </body>
</html>
