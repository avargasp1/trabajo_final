//$('select').select2();

$.getJSON("/Prueba_final/Api?modulo=so", function (data) {
    $.each(data, function (i, d) {
        $("#sis_operativo").append("<option value='" + d.sistema_id + "'>" + d.nombre + "</option>");
    });
});

$.getJSON("/Prueba_final/Api?modulo=modelo", function (data) {
    $.each(data, function (i, d) {
        $("#modelo").append("<option value='" + d.modelo_id + "'>" + d.nombre + "</option>");
    });
});

$("#modelo").change(function() {
    var modelo_id = $("#modelo").val();
    $.getJSON("/Prueba_final/Api?modulo=marca&marca_id="+modelo_id, function (data) {
        $("#marcas").empty();
        $.each(data, function (i, d) {
            $("#marcas").append("<option value='" + d.marca_id + "'>" + d.nombre + "</option>");
        });
    });
});


$.getJSON("/Prueba_final/Api?modulo=lenguaje", function (data) {
    $.each(data, function (i, d) {
        $("#lenguaje").append("<option value='" + d.lenguaje_id + "'>" + d.nombre + "</option>");
    });
});