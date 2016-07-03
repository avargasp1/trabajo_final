<%-- 
    Document   : crear
    Created on : 25-jun-2016, 19:59:22
    Author     : alejandrovargas
--%>

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
        <div class="container">
            <h1>Crea</h1>
            <h3>Marca</h3>

            <form class=" form-horizontal " method="post" action="/Prueba_final/MarcaServ?crear=1">
                <div class="form-group">
                    <label for="exampleInputName2">Nombre</label>
                    <input type="text" class="form-control" name="nombre">


                </div>
                <div class="form-horizontal">
                    <label>creado por:</label>
                    <input type="text" class="form-control" readonly value="">
                </div>    
                <br>
                <button type="submit" class="btn btn-success pull-right" name="crear" value="1">Crear</button>
            </form>          
        </div><!--container -->
    </body>
</html>
