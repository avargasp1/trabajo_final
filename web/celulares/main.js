//$('select').select2();

$.getJSON("/Prueba_final/Api?modulo=so", function(data){
   $.each(data, function(i,d){
       $("#sis_operativo").append("<option value='"+d.sistema_id+"'>"+ d.nombre+"</option>");
   });
});

$.getJSON("/Prueba_final/Api?modulo=marca", function(data){
    
    $.each(data, function(i,d){
       //$("#marcas").empty().append('whatever');
       $("#marcas").append("<option value='"+d.marca_id+"'>"+ d.nombre+"</option>");
   });
});

$.getJSON("/Prueba_final/Api?modulo=modelo", function(data){
   $.each(data, function(i,d){
       $("#modelo").append("<option value='"+d.modelo_id+"'>"+ d.nombre+"</option>");
   });
});