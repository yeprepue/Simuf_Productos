$(function () {
    $('tr #btn-eliminarCtg').click(function (e) {

        e.preventDefault();
        var opcion = confirm("Desea eliminar este categoria de la tienda");
        if (opcion) {
            var fila = $(this).parent().parent();
            var IdCategoria = fila.find('#IdCategoria').text();
            var data = {IdCategoria: IdCategoria};
            $.post("borrarcategoria", data, function (res, est, jqXHR) {
                alert(res);
                fila.remove();
            });
        }
     });
     
   $('#btnmodificarCategoria').click(function (e){
      e.preventDefault(); 
      var data  = $('#frmmodificarCatg').serialize(); 
      $.post("updateCategoria", data, function (res,est,jqXHR){          
            alert(res); 
      });       
   });  
 });
