
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

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Movie store</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.htm">Principal <span class="sr-only">(current)</span></a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="#">Categorias</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link disabled" href="#">Disabled</a>
                    </li>
                </ul>

                <div class="form-inline my-2 my-lg-0">

                    <sec:authorize access="hasRole('ROLE_ANONYMOUS')">
                        <a href="datos_de_usuario.htm" class="btn btn-outline-success my-2 my-sm-0">Iniciar sesión</a>
                    </sec:authorize>

                    <sec:authorize access="!hasRole('ROLE_ANONYMOUS')">     
                        <!-- a href="datos_de_usuario.htm" class="btn btn-outline-success my-2 my-sm-0">Iniciar sesión</a -->
                        <a href="<c:url value="salir.htm" />" class="btn btn-danger">Cerrar Sesion</a> 
                    </sec:authorize>
                </div>
            </div>
        </nav>

















        <div style="text-align: center;">
            <h1>Datos de usuario</h1>
            <h3>Bienvenido <sec:authentication property="principal.username" />!</h3>
            <a href="index.htm">Ir a página principal</a>
            <br>
        </div>









    </body>

</html>
