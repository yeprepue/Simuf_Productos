$(function () {
    $('tr #btn-eliminar').click(function (e) {

        e.preventDefault();
        var opcion = confirm("Desea eliminar este producto de la tienda");

        if (opcion) {

            var fila = $(this).parent().parent();

            var IdProducto = fila.find('#IdProducto').text();

            var data = {IdProducto: IdProducto};
            $.post("borrarProducto", data, function (res, est, jqXHR) {
                alert(res);
                fila.remove();
            });
        }
    });

    $('#btnmodificarproducto').click(function (e) {
        e.preventDefault();
        var data = $('#frmmodificar').serialize(); 
        $.post("updateProducto", data, function (res, est, jqXHR) {
            alert(res);  
            
        });

    });
});
