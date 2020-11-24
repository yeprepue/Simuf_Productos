$(function () {
    $('tr #deleteitem').click(function (e) {
        e.preventDefault();
        var elemento = $(this);
        var IdProducto = elemento.parent().find('#idarticulo').text();
        $.ajax({
            url: 'borraritem',
            type: 'POST',
            data: {IdProducto: IdProducto},
            success: function (r) {
                elemento.parent().parent().remove();
                var elementostabla = $('shop-table tr');
                if (elementostabla.length <= 1) {
                    $('#cart-container').append("<h4>No hay articulos en el carrito de compras</h4>");
                }                
                $('#txt-subtotal').text(r);
                $('#txt-total').text(r);
            }
        });

    });
        $('#add').click(function (e) {
           // pre
           alert("");
            document.getElementById("total").innerHtml =  "";
                        document.getElementById("total").value =  "";

            

    });
});

