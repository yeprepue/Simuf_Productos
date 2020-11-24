$(function () {
    function validarFields(nombre, descripcion, cantidad, precioventa) {
        if (nombre.length > 1 && nombre.length <= 100) {
            if (descripcion.length > 1 && descripcion.length <= 1000) {
                if (cantidad != "Seleccione una opcion") {
                    if (precioventa.length > 1 && precioventa.length < 10) {
                        if ($.isNumeric(precioventa)) {

                            //valida comapos de tipo file 
                            var archivos = document.getElementById('archivos').files;
                            if (archivos.length == 5) {
                                for (var i = 0; i < archivos.length; i++) {
                                    var name = archivos[i].name;
                                    var ext = name.substring(name.lastIndexOf('.') + 1).toLowerCase();
                                    if (ext != 'jpg' && ext != "png") {
                                        alert('Archivo' + name + ' Incorrecto solo imagenes en jpg o png');
                                        return false;
                                    }
                                }
                                return  true;
                            } else {
                                alert("Por favor seleccione 5 imagenes");
                            }
                        } else {
                            alert("Debe ingresar un numero valido");
                        }
                    } else {
                        alert("Debe ingresar el precio de venta");
                    }
                } else {
                    alert("Ingrese la cantidad del producto que esta creando");
                }
            } else {
                alert("Escriba una descripcion correcta");
            }
        } else {
            alert("Escriba un nombre correcto");
        }
        return false;
    }
    $('#btncrearproducto').click(function (e) {       
        var nombre = $('#nombre').val();
        var descripcion = $('#descripcion').val();
        var cantidad = $('#cantidad').val();
        var precioventa = $('#precioventa').val();
        if (validarFields(nombre, descripcion, cantidad, precioventa)) {
            var data = new FormData($('#frm_nuevo')[0]);
            $.ajax({
                url: "crearproducto",
                type: 'POST',
                data: data,
                contentType: false,
                processData: false,
                success: function (data) {

                    alert(data);
                    location.reload();
                }
            });
        }
        validarFields(nombre, descripcion, cantidad, precioventa);
    });
});


if ($.fn.slider) {
    $('#sl2').slider();
}

var RGBChange = function () {
    $('#RGB').css('background', 'rgb(' + r.getValue() + ',' + g.getValue() + ',' + b.getValue() + ')')
};



/*scroll to top*/

$(document).ready(function () {
    $(function () {
        $.scrollUp({
            scrollName: 'scrollUp', // Element ID
            scrollDistance: 300, // Distance from top/bottom before showing element (px)
            scrollFrom: 'top', // 'top' or 'bottom'
            scrollSpeed: 300, // Speed back to top (ms)
            easingType: 'linear', // Scroll to top easing (see http://easings.net/)
            animation: 'fade', // Fade, slide, none
            animationSpeed: 200, // Animation in speed (ms)
            scrollTrigger: false, // Set a custom triggering element. Can be an HTML string or jQuery object
            //scrollTarget: false, // Set a custom target element for scrolling to the top
            scrollText: '<i class="fa fa-angle-up"></i>', // Text for element, can contain HTML
            scrollTitle: false, // Set a custom <a> title if required.
            scrollImg: false, // Set true to use image
            activeOverlay: false, // Set CSS color to display scrollUp active point, e.g '#00FFFF'
            zIndex: 2147483647 // Z-Index for the overlay
        });
    });

});





