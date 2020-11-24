<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Crear Categoria | Mundo Friky</title>
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
        <title>Agregar categoria</title>
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
        <div class="container">
            <div class="row">
                <div class="col-sm-3">

                </div>
            </div>
        </div>
        <h2 align="center"type="color">Nuevo Categoria</h2>  

        <div class="container">            
            <form    action="crearcategoria" name="frmnuevo" method="POST" enctype="multipart/form-data" id="frm_nuevo">
                <table >
                    <tr> 
                        <th> <label for="">Nombre de la nueva categoria: </label></th> 
                        <td><input type="text" name="nombre_Catg" id="Nombre_Catg" class="form-control"></td>
                    </tr>
                    <tr>
                        <td> <label for="">Descripcion de la categoria: </label></td> 
                        <td><textarea cols="30" rows="6" name="descripcion_Catg" id="descripcion_Catg" class="form-control"></textarea></td>                                       
                    </tr>                                                           
                    <tr>
                        <td></td> 
                        <td>
                            <input  type="submit" class="form-control" value="Crear categoria" id="btncrearCtg" style="background:orange" multiple>
                            <!input  type="submit" class="form-control" value="Cancelar" id="cancelar" style="background:gainsboro" multiple>
                    </td>                                     
                    </tr>                        
                </table>
            </form>
        </div>                                                                                            
        <script src="js/jquery.js"></script>
        <script src="js/price-range.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>


    </body>
</html>
