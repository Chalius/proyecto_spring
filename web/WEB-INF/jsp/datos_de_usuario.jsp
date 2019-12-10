
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style="text-align: center;">
            <h1>Datos de usuario</h1>
            <h3>Aquí podrás ver tus datos.</h3>
            <a href="index.htm">Ir a página principal</a>

            <sec:authorize access="!hasRole('ROLE_ANONYMOUS')">     
                <a href="<c:url value="salir.htm" />" class="btn btn-danger">Cerrar Sesion</a>       
            </sec:authorize>

    </div>







</body>
</html>
