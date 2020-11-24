<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Crear productos | Mundo Friky</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/price-range.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->       
        <link rel="shortcut icon" href="images/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
        <title>Agregar producto</title>
    </head>
    <body>
        <div class="header-middle"><!--header-middle-->
            <div class="container">
                <div class="row">
                    <div class="col-md-4 clearfix">
                        <div class="logo pull-left">
                            <a href="administracion.jsp"><img src="images/home/LogoSimuf.png" width="400" height="80" alt="" /></a>
                        </div>
                        <div class="btn-group pull-right clearfix">
                            <div class="btn-group">
                            </div>                              
                        </div>
                    </div>
                    <div class="col-md-8 clearfix">
                        <div class="shop-menu clearfix pull-right">
                            <ul class="nav navbar-nav">
                                <li><a href=""><i class="fa fa-user"></i> Mi cuenta</a></li>
                                <li><a href="administracion.jsp"><i class="fa fa-star"></i> Inicio</a></li>								                                
                                <li><a href=""><i class="fa fa-lock"></i> Cerrar sesion</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="mainmenu pull-left">
                <ul class="nav navbar-nav collapse navbar-collapse">
                    <li><a href="administracion.jsp">Inicio</a></li>
                    <li class="dropdown"><a href="#" class="active">Opciones<i class="fa fa-angle-down"></i></a>
                        <ul role="menu" class="sub-menu">
                            <li><a href="crearproducto.jsp" class="active">Crear producto</a></li>
                            <li><a href="administracion.jsp">Administracion </a></li> 										
                            <li><a href="">Usuarios</a></li> 
                            <li><a href="#">Cerrar sesion</a></li> 
                        </ul>
                    </li>                                                                                       
                </ul>
            </div>
        </div>    
        <h2 align="center">Nuevo producto</h2>            
        <div class="container mt-4 col-lg-4">                   
            <div class="card col-sm-10">
                <div class="card-body">                    
                        <div class="form-group text-center">                 
                            <form action="crearproducto" name="frmnuevo" method="POST" enctype="multipart/form-data" id="frm_nuevo">
                                <table>
                                    <tr> 
                                        <td> <label for="">Nombre: </label></td> 
                                        <td><input type="text" name="nombre" id="nombre" class="form-control"></td>
                                    </tr>
                                    <tr>
                                        <td> <label for="">Descripcion: </label></td> 
                                        <td><textarea cols="30" rows="6" name="descripcion" id="descripcion" class="form-control"></textarea></td>                                       
                                    </tr>
                                    <tr>
                                        <td> <label for="">Cantidad: </label></td> 
                                        <td>
                                            <select name="cantidad" id="cantidad" class="form-control">
                                                <option value="Seleccione una opcion">seleccione una opcion</option>
                                                <%for (int i = 1; i <= 100; i++) {%>
                                                <option value='<%=i%>'><%=i%></option>
                                                <%}%>
                                            </select>        
                                        </td>
                                    </tr>    
                                    <tr>
                                        <td> <label for="">Imagenes: </label></td> 
                                        <td><input class="form-control" type="file" name="file[]" id="archivos" multiple ></td>                                     
                                    </tr>                                            
                                    <tr>
                                        <td> <label for="">Estado: </label></td> 
                                        <td><select type="text" name="estado" id="estado">
                                                <option value="Activo">Activo</option>        
                                                <option value="Inactivo">Inactivo</option>        
                                            </select></td>
                                        <!--td><input class="form-control" ></td-->                                     
                                    </tr>
                                    <tr>
                                        <td> <label for="">Id Sub Categoria:</label></td> 
                                        <td><input class="form-control" type="text" name="idsubcategoria" id="idsubcategoria"></td>                                     
                                    </tr>
                                    <tr>
                                        <td> <label for="">Id Sub Inventario:</label></td> 
                                        <td><input class="form-control" type="idinventario" name="idinventario" id="idinventario"></td>                                     
                                    </tr>
                                    <tr>
                                        <td> <label for="">Precio venta:</label></td> 
                                        <td><input class="form-control" type="precioventa" name="precioventa" id="precioventa"></td>                                     
                                    </tr>
                                    <tr>
                                        <td> <label for="">Precio compra:</label></td> 
                                        <td><input class="form-control" type="preciocompra" name="preciocompra" id="preciocompra"></td>                                     
                                    </tr>              
                                    <tr>
                                        <td></td> 
                                        <td>
                                            <input  type="button" class="form-control" value="Crear producto" id="btncrearproducto" style="background:orange" multiple>
                                            <!input  type="submit" class="form-control" value="Cancelar" id="cancelar" style="background:gainsboro" multiple>
                                    </td>                                     
                                    </tr>                        
                                </table>
                    </form>
                </div>                            
                </div>
            </div>
        </div>
    </div>                            
                                                           
                        
    <script src="js/jquery.js"></script>
    <script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>        

</body>
</html>
