<%-- 
    Document   : verPersona
    Created on : 25/08/2023, 19:25:50
    Author     : admin
--%>

<%@page import="logica.Persona"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="index.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Personas</title>
    </head>
    <body>

<div style="display: flex; justify-content: flex-end;">
 
  <table class="table table-striped" style="width: 100%; max-width: 700px;">
           <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Nombre</th>
            <th scope="col">correo</th>
            <th scope="col">telefono</th>
            <th scope="col">Imagen</th>
            <th scope="col">Accion</th>

          </tr>
        </thead>
        <%
            List<Persona> listaPer=(List)request.getSession().getAttribute("listaPer");
        %>
        <tbody>
       
            <% 
                for (Persona per : listaPer){%>
            <tr>
            <td id="id_per<%= per.getId() %>"><%= per.getId() %></td>
            <td><%= per.getNombre()%></td>
             <td><%= per.getCorreo() %></td>
             <td><%= per.getTelefono() %></td>
             <td><img src="assets/img/<%= per.getFoto() %>" width="100px" height="100px"></td>
            <td style="display:flex; width: 230px;">
                <form name="eliminar" action="EliminarPer" method="POST">
                    <button type="submit" class="btn btn-primary" style="background-color: red; margin-right: 5px">
                        <i class="fas fa-trash-alt"></i>Eliminar
                    </button>
                    <input type="hidden" name="id" value="<%=per.getId()%>">
                </form>
                <form name="editar" action="EditPer" method="GET">
                    <button type="submit" class="btn btn-primary" style="margin-right: 5px">
                        <i class="fas fa-pencil-alt"></i>Editar
                    </button>
                    <input type="hidden" name="id" value="<%=per.getId()%>">
                </form>    
            </td>
           </tr>
        <%}%>
    </tbody>
  </table>
</div>


        
    </body>
</html>
