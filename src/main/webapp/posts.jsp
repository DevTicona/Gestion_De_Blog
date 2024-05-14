<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Post"%>
<%
    List<Post> posts = (List<Post>) request.getAttribute("posts");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="estilos.css">
    </head>
    <body>
        <div class="container">
            <div class="title">
                <h1>Blog De Tecnologia</h1>
            </div>
            <div class="author">
                <h4>Autor: Primo Ticona Callizaya</h4>
            </div>
            <div class="new-entry">
                <button onclick="window.location.href='PostController?action=add'">Nueva Entrada</button>
            </div>

            <c:forEach var="item" items="${posts}">
                <div class="blog">
                    <h2>${item.titulo}</h2>
                    <p>Fecha: ${item.fecha}</p>
                    <p>${item.contenido}</p>
                    
                    <p class="derecha"><a href="PostController?action=edit&id=${item.id}">Editar</a> <a href="PostController?action=delete&id=${item.id}">Eliminar</a></p>
                </div>
            </c:forEach>
        </div>
    </body>
</html>
