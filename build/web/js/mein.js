/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//$(function (){
//    function validarFields(TipoDocumento,DocumentoU){
//        if(TipoDocumento != "Seleccione una opcion"){
//            if($.isNumeric(DocumentoU)){
//                
//            }else{alert("Debe ingresar un numero valido");}           
//        }else{alert("Seleccione un Tipo de Documento");}            
//        
//    }
//    $('#btnRegistro').click(function(e){
//   e.preventDefault();
//   var TipoDocumento = $('#TipoDocumento').val();
//   var DocumentoU = $('#DocumentoU').val();
//   validarFields(TipoDocumento,DocumentoU);
//});
//});

    

$(function (){
   $('#frm-RegistroUsuario').validate({
       rules : {
           DocumentoU : {
               required : true
           },
           PrimerNombre : {
               required : true
           },
           PrimerApellido : {
               required : true
           },
           Celular : {
               required : true
           },
           Direccion : {
               required : true
           },
           Correo : {
               required : true,
               email: true
           },
           Password : {
               required : true,
               minlength: 8,
               maxlength: 25
           },
           Password2 : {
               required : true,               
               equalTo: "#Password"
           }
           
       },
       messages : {
           DocumentoU : {
               required: "El campo documento es obligatorio"
           },
           PrimerNombre : {
               required: "El campo Primer Nombre es obligatorio"
           },
           PrimerApellido : {
               required: "El campo primer apellido es obligatorio"
           },
           Celular : {
               required: "El campo celular es obligatorio"
           },
           Direccion : {
               required: "El campo direccion es obligatorio"
           },
           Correo : {
               required: "El campo correo  es obligatorio",
               email: "No es un correo valido"
           },
           Password : {
                required: "El campo password es obligatorio",
                minlength: "Minimo 8 caracteres",
                maxlength: "Maximo 25 caracteres"
           },
           Password2 : {
               required: "El campo confirmacion de password es obligatorio",
               equalTo: "Las contraseñas no coinciden"
           }
       },
               submitHandler: function (form) {
            //funcion ajax para crear usuario
           var data =$("#frm-RegistroUsuario").serialize();
           $.post("Registrar", data , function(res,est,jqXHR){
              if(res=='1'){
                  location.reload();
//                $("#TipoDocumento").val("");
//                $("#Documento").val("");
//                $("#Nombre").val("");
//                $("#Apellidos").val("");
//                $("#Correo").val("");
//                $("#Telefono").val("");
//                $("#Celular").val("");
//                $("#Direccion").val("");
//                $("#Password").val("");
//                $("#Password2").val("");
                alert("Registro correcto, haga click para ser redireccionado al Login");
                setTimeout(function(){
                     window.location = "index.jsp";
                 },100);
                }else{
                    alert("Errror al registrarse, intente nuevamente");
                } 
           });
        }
//        submitHandler: function (form) { 
//            //funcion ajax para crear usuario
//            var data = $("#frm-RegistroUsuario").serialize();
//           $.post("",data, function (res, est, jqXHR) {
//               alert(res);
//           });
//           
//        }
   });
});


