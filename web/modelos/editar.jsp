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
            String modelo_id = request.getParameter("modelo_id");
            con.setConsulta("select * from modelos where modelo_id='" + modelo_id + "'");
            while (con.getResult().next()) {
        %>
        <div class="container">
            <h1>Editar</h1>
            <h3>Modelos</h3>

            <form class=" form-horizontal " method="post" action="/Prueba_final/ModeloServ?editar=<% out.println(con.getResult().getString("modelo_id")); %>">
                <div class="form-group">
                    <div class="form-horizontal">
                        <label>ID</label>
                        <input type="text" class="form-control" readonly value="<% out.println(con.getResult().getString("modelo_id")); %>">
                    </div>

                    <label for="exampleInputName2">Nombre</label>
                    <input type="text" class="form-control" name="nombre"  value="<% out.println(con.getResult().getString("nombre")); %>">

                    <label for="exampleInputName2">Marca</label>
                    <select class="form-control" name="marca" id="marcas" >
                        <option value="<% out.println(con.getResult().getString("marca_id")); %>">elija una opcion...</option>
                    </select>
                    <label>creado por:</label>
                    <input type="text" class="form-control" readonly Value="<%out.println(con.getResult().getString("creado_por"));%>">
                </div>    
                <br><% }%>
                <button type="submit" class="btn btn-success pull-right">Editar</button>
            </form>          
        </div><!--container -->
    </body>
</html>
