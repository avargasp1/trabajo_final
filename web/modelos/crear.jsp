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
            <h3>Modelos</h3>

            <form class=" form-horizontal " method="post" action="/Prueba_final/ModeloServ?crear=1">
                <div class="form-group">
                    
                    <label for="exampleInputName2">Nombre</label>
                    <input type="text" class="form-control" name="nombre"  value="">

                    <label for="exampleInputName2">Marca</label>
                    <select class="form-control" name="marca" id="marcas" >
                        <option value="">elija una opcion...</option>
                    </select>
                    
                    <label>creado por:</label>
                    <input type="text" class="form-control" readonly Value="<%out.println(session.getAttribute("nombre"));%>">

                    <br>
                    <button type="submit" class="btn btn-success pull-right">Crear</button>
                </div>
            </form>          
        </div><!--container -->

        <script src="https://code.jquery.com/jquery-1.12.4.min.js"   integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="   crossorigin="anonymous"></script>
        <script src="/Prueba_final/celulares/main.js"></script>
    </body>
</html>
