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
        
    </head>
    <body>
        <%
            Conexion con = new Conexion ();
            String celular_id = request.getParameter("celular_id");
                con.setConsulta("select * from celulares where celular_id='"+celular_id+"'");
                while(con.getResult().next()){
        %>
        <div class="container">
            <h1>Editar</h1>
            <h3>Celulares</h3>
            <form class=" form-horizontal" method="post" action="/Prueba_final/CelularServ?editar=1">
                <div class="form-horizontal">
                    <label>ID</label>
                    <input type="text" class="form-control" readonly value="<% out.println(con.getResult().getString("celular_id")); %>">
                </div>
            
                <div class="form-group">
                    <label for="exampleInputName2">Chip</label>
                    <select class="form-control" name="chip">
                        <option>elija una opcion</option>
                        <option value="nano" >NanoSIM</option>
                        <option value="micro" >MicroSIM</option>
                        <option value="sim" >SIM</option>
                    </select>

                    <label for="exampleInputName2">Fecha de Creacion</label>
                    <input type="text" class="form-control tcal" name="fecha_creacion"  value="<% out.println(con.getResult().getString("fecha_creacion")); %>">
                    <label for="exampleInputName2">Numero</label>
                    <input type="text" class="form-control" name="numero" value="<% out.println(con.getResult().getString("numero")); %>">
                    <label for="exampleInputName2">Sistema Operativo</label>
                    <select class="form-control" name="sistema_operativo" id="sis_operativo">
                        <option value="">Elija una opcion...</option>
                        <%%>
                    </select>
                    <label for="exampleInputName2">Marca</label>
                    <select class="form-control" name="marca" id="marcas">
                        <option>elija una opcion...</option>
                    </select>
                    <label for="exampleInputName2">Modelo</label>
                    <select class="form-control" name="modelo" id="modelo" >
                        <option value="<% %>">Elija una opcion...</option>
                        
                    </select>
                </div>
                <div class="form-horizontal">
                    <label>creado por:</label>
                    <input type="text" class="form-control" readonly value="<%out.println(con.getResult().getString("creado_por")); %>">
                </div>    
                <br>
                <input type="submit" class=" btn btn-success pull-right" name="editar" value="Editar">
                <% }%>
            </form>          
        </div><!--container -->
        
       <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="   crossorigin="anonymous"></script>
        <script src="/Prueba_final/celulares/main.js"></script>
    </body>
</html>
