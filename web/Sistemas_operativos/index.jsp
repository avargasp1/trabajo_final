<%-- 
    Document   : index
    Created on : 22-jun-2016, 17:17:11
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
        <%  
            if(session.getAttribute("nombre") != null){
                
            }else {
                response.sendRedirect("/Prueba_final/index.jsp");
            }
        %>
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand active" href="#">Prueba Final</a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="/Prueba_final/celulares/index.jsp">Celulares</a></li>
                        <li><a href="/Prueba_final/Sistemas_operativos/index.jsp">Sistemas Operativos</a></li>
                        <li><a href="/Prueba_final/lenguajes_programacion/index.jsp">Lenguajes de Programacion</a></li>
                        <li><a href="/Prueba_final/index.jsp" class="pull-right">Log Out</a></li>
                        
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </nav>
        <br><br><br>
        <div class="container">
            <h1>Sistemas Operativos</h1>
            <br>
            <a class="btn btn-success" href="/Prueba_final/Sistemas_operativos/crear.jsp" role="button">Crear Sistema Operativo</a>
            <br>
            <div class="pull-right">
                <label> Buscar</label>
                <form>
                  <input type="text" name="buscar">
                <input type="submit" class="btn btn-success" name="buscar">
                <%
                Conexion con = new Conexion();
                
                if (request.getParameter("buscar") != null) {
                    if (request.getParameter("buscar").isEmpty()) {

                        con.setConsulta("select * from sistemas_operativos where estado='activo'");
                    } else {
                        String nombre = request.getParameter("buscar");
                        con.setConsulta("select * from sistemas_operativos where nombre like '%" + nombre + "%' and estado='activo'");
                    }
                } else {
                    con.setConsulta("select * from sistemas_operativos where estado='activo'");                }
            %>  
                </form>
                
            </div>
            <table class="table table-striped">
                <thead>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Fecha de creacion</th>
                    <th>Lenguaje de programacion</th>
                </thead>
                <tbody>
                    <%
                       while (con.getResult().next()){
                            out.println("<tr>");
                            out.println("<td>"+con.getResult().getString("sistema_id")+"</td>");
                            out.println("<td>"+con.getResult().getString("nombre")+"</td>");
                            out.println("<td>"+con.getResult().getString("fecha_creacion")+"</td>");
                            out.println("<td>"+con.getResult().getString("lenguaje_id")+"</td>");
                            out.println("<td>" + "<a href='/Prueba_final/Sistemas_operativos/editar.jsp?sistema_id=" + con.getResult().getString("sistema_id") + "'>Editar</a>" + "</td>");
                            out.println("<td>" + "<a href='/Prueba_final/SistemaServ?eliminar=" + con.getResult().getString("sistema_id") + "'>Eliminar</a>" + "</td>");
                            out.println("</tr>");
                        }
                    %>
                    
                </tbody>
                   
            </table>
        <a class="btn btn-success pull-right" href="/Prueba_final/Sistemas_operativos/sistema_reporte.jsp">Generar reporte</a>
        </div>

    </body>
</html>
