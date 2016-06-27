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
            <h1>Editar</h1>
            <h3>Celulares</h3>
            <div class="form-horizontal">
                <label>ID</label>
                <input type="text" class="form-control" readonly value="">
            </div>
            <form class=" form-horizontal ">
                <div class="form-group">
                    <label for="exampleInputName2">Chip</label>
                    <select class="form-control" name="chip">
                        <option>elija una opcion</option>
                        <option value="nano" >NanoSIM</option>
                        <option value="micro" >MicroSIM</option>
                        <option value="sim" >SIM</option>
                    </select>

                    <label for="exampleInputName2">Fecha de Creacion</label>
                    <input type="text" class="form-control tcal" name="fecha_creacion"  value="">
                    <label for="exampleInputName2">Numero</label>
                    <input type="text" class="form-control" name="numero" value="">
                    <label for="exampleInputName2">Sistema Operativo</label>
                    <select class="form-control" name="sistema_operativo">
                        <option value="">hola hola</option>
                        <%%>
                    </select>

                    <label for="exampleInputName2">Modelo</label>
                    <select class="form-control" name="modelo" >
                        <option value="">hola hola</option>
                        <%%>
                    </select>
                </div>
                <div class="form-horizontal">
                    <label>creado por:</label>
                    <input type="text" class="form-control" readonly value="">
                </div>    
                <br>
                <button type="submit" class="btn btn-success pull-right">Crear</button>
            </form>          
        </div><!--container -->
    </body>
</html>
