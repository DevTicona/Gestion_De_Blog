<%@page import="com.emergentes.modelo.Post"%>
<%
    Post post = (Post) request.getAttribute("post");
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
                <h1>Nueva entrada</h1>
            </div>
            <div class="ce">
                <form action="PostController" method="post">
                <input type="hidden" name="id" value="${post.id}" />
                <table>
                    <tr>
                        <td>Fecha</td>
                        <td><input type="Date" name="fecha" value="${post.fecha}" /></td>
                    </tr>
                    <tr>
                        <td>Titulo</td>
                        <td><input type="text" name="titulo" value="${post.titulo}" cols="50" /></td>
                    </tr>
                    <tr>
                        <td>Contenido</td>
                        <td>
                            <textarea name="contenido" rows="3" cols="50">${post.contenido}</textarea>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" /></td>
                    </tr>
                </table>
            </form>
            </div>
            
        </div>

    </body>
</html>
