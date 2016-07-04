<%-- 
    Document   : sistema_reporte
    Created on : 04-jul-2016, 0:59:53
    Author     : alejandrovargas
--%>

<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="conexion.Conexion"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {
                Conexion con = new Conexion();
                File reportFile = new File(application.getRealPath("//reportes//sis_reporte.jasper"));
                byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), null, con.getConexion());
                response.setContentType("application/pdf");
                response.setContentLength(bytes.length);
                ServletOutputStream outputStream=response.getOutputStream();
                outputStream.write(bytes,0,bytes.length);
                outputStream.flush();
                outputStream.close();

            } catch (Exception ex) {
                out.println("ERROR DE CONEXION AL GENERAR EL REPORTE! :D");
            }
        %>
    </body>
</html>
