<%-- 
    Document   : Principal
    Created on : 22-jun-2016, 17:09:35
    Author     : alejandrovargas
--%>

<%@page import="conexion.Conexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Celulares - Evaluacion final</title>
        <link href="/Prueba_final/template/css/bootstrap.min.css" rel="stylesheet">
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
                        <li><a href="#">Celulares</a></li>
                        <li><a href="#about">Sistemas Operativos</a></li>
                        <li><a href="#contact">Lenguajes de Programacion</a></li>
                        <li><a href="#contact">Sistemas Operativos</a></li>

                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </nav>
        <br><br><br><br>
        <div class="container">
            <h4>crear:</h4>
            <a class="btn btn-primary btn-lg btn-block" href="/Prueba_final/celulares/index.jsp">Celular</a><br><br>
            <a class="btn btn-primary btn-lg btn-block" href="/Prueba_final/Sistemas_operativos/index.jsp">Sistemas operativos</a><br><br>
            <a class="btn btn-primary btn-lg btn-block" href="/Prueba_final/lenguajes_programacion/index.jsp">Lenguajes de Progamacion</a><br><br>
            
            <!--<a class="btn btn-primary" href=""></a>-->
        </div>
        <br><br><br>
        <div class="container">

          

        </div><!-- /.container -->

        <script src="/Prueba_final/template/js/bootstrap.min.js"></script>
    </body>
</html>
