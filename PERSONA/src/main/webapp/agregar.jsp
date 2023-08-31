<%-- 
    Document   : agregar
    Created on : 25/08/2023, 13:38:21
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="index.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar</title>
    </head>
    <body>
     
        <div style="display: flex; justify-content: flex-end;">
          <div class="col-lg-7 mt-5 mt-lg-0 d-flex align-items-stretch">
            <form action="perServlet" method="post" role="form" class="php-email-form">
              <div class="row">
                
                <div class="form-group col-md-8">
                  <label for="name">Nombre</label>
                  <input type="text" name="nombre" class="form-control" id="nombre" required>
                </div>
                <div class="form-group col-md-8">
                  <label for="name">Correo</label>
                  <input type="email" class="form-control" name="correo" id="correo" required>
                </div>
              <div class="form-group col-md-8">
                <label for="name">Telefono</label>
                <input type="text" class="form-control" name="telefono" id="telefono" required>
              </div>
              <div class="form-group col-md-8">
               <input type="file" name="foto" id="foto" />
              </div>
         
              <div class="text-center">
                  <button type="submit" class="btn btn-primary">Guardar</button>
                  <a href="perServlet" class="btn btn-warning">Cancelar</a>
              </div>
            </div>
            </form>
          </div>
        </div>
       
    </body>
</html>
