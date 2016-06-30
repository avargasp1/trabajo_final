<%-- 
    Document   : index
    Created on : 22-jun-2016, 15:34:07
    Author     : alejandrovargas
--%>

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

            </div>
        </nav>
        <br><br>
        <br><br>
        <br><br>
        <div class="container">

            <div class="starter-template text-center">

                <form class="form-inline" method="post" action="login">
                    <div class="form-group">
                        <label class="sr-only" for="exampleInputEmail3">Usuario</label>
                        <input type="text" class="form-control" id="user" name="user" placeholder="Usuario">
                    </div>
                    <br><br>
                    <div class="form-group">
                        <label class="sr-only" for="exampleInputPassword3">Contraseña</label>
                        <input type="password" class="form-control" id="pass" name="pass" placeholder="Contraseña">
                    </div>
                     <br><br>
                    
                      <br><br>
                    <button type="submit" class="btn btn-default">Log In</button>
                </form>
            </div>

        </div><!-- /.container -->

        <script src="/Prueba_final/template/js/bootstrap.min.js"></script>
    </body>
</html>
