<%-- 
    Document   : crear
    Created on : 25-jun-2016, 19:59:22
    Author     : alejandrovargas
--%>

<%@page import="conexion.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Celulares - Evaluacion final</title>
        <link href="/Prueba_final/template/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="../template/calendar/tcal.css" />
        <script type="text/javascript" src="../template/calendar/tcal.js"></script>
        <%  
            if(session.getAttribute("nombre") != null){
                
            }else {
                response.sendRedirect("/Prueba_final/index.jsp");
            }
        %>
    </head>
    <body>
        <%
            Conexion con = new Conexion();
            String sistema_id = request.getParameter("sistema_id");
            con.setConsulta("select * from sistemas_operativos where sistema_id='" + sistema_id + "'");
            while (con.getResult().next()) {
        %>
        <div class="container">
            <h1>Editar</h1>
            <h3>Sistemas Operativos</h3>

            <form class=" form-horizontal " method="post" action="/Prueba_final/SistemaServ?editar=<% out.println(con.getResult().getString("sistema_id")); %>">
                <div class="form-group">
                    <div class="form-horizontal">
                        <label>ID</label>
                        <input type="text" class="form-control" readonly value="<% out.println(con.getResult().getString("sistema_id")); %>">
                    </div>

                    <label for="exampleInputName2">Nombre</label>
                    <input type="text" class="form-control" name="nombre"  value="<% out.println(con.getResult().getString("nombre")); %>">

                    <label for="exampleInputName2">Fecha de Creacion</label>
                    <input type="text" class="form-control tcal" name="fecha_creacion"  value="<% out.println(con.getResult().getString("fecha_creacion")); %>">

                    <label for="exampleInputName2">Programado en:</label>
                    <select class="form-control" name="lenguaje_id" id="lenguaje">
                        <option value="">Elija una Opcion...</option>
                        <%}%>
                    </select>

                </div>
                <div class="form-horizontal">
                    <label>creado por:</label>
                    <input type="text" class="form-control" readonly value="">
                </div>    
                <br>
                <button type="submit" class="btn btn-success pull-right">Editar</button>
            </form>          
        </div><!--container -->
        <script src="https://code.jquery.com/jquery-1.12.4.min.js"   integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="   crossorigin="anonymous"></script>
        <script src="/Prueba_final/celulares/main.js"></script>
    </body>
</html>
