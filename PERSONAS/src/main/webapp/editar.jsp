<%-- 
    Document   : editar
    Created on : 25/08/2023, 13:22:07
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="index.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar</title>
    </head>
    <body>
       <div style="display: flex; justify-content: flex-end;">
          <div class="col-lg-7 mt-5 mt-lg-0 d-flex align-items-stretch">
              <% Persona per = (Persona)request.getSession().getAttribute("perEditar");%>
            <form action="EditPer" method="post" role="form" class="php-email-form">
              <div class="row">
                
                <div class="form-group col-md-8">
                  <label for="name">Nombre</label>
                  <input type="text" name="nombre" class="form-control" id="nombre" required value="<%= per.getNombre()%>">
                </div>
                <div class="form-group col-md-8">
                  <label for="name">Correo</label>
                  <input type="email" class="form-control" name="correo" id="correo" required value="<%= per.getCorreo() %>">
                </div>
              <div class="form-group col-md-8">
                <label for="name">Telefono</label>
                <input type="text" class="form-control" name="telefono" id="telefono" required value="<%= per.getTelefono() %>">
              </div>
              <div class="form-group col-md-8">
               <input type="file" name="foto" id="foto" />
              </div>
         
              <div class="text-center"><button type="submit">Guardar</button></div>
            </div>
            </form>
          </div>
        </div>
       
    </body>
</html>
