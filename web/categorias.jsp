<%@page import="controllers.Controlador_Categoria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Controlador_Categoria cc = new Controlador_Categoria();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Categorias |Mundo Friky</title>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <title>JSP Page</title>        
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
                    <li ><a href="administracion.jsp">Inicio</a></li>
                    <li class="dropdown"><a href="#" class="active">Opciones rapidas<i class="fa fa-angle-down"></i></a>
                        <ul role="menu" class="sub-menu">                        
                            <li><a href="administracion.jsp">Productos</a></li>
                            <li><a href="administracion.jsp">Categorias </a></li>
                            <li><a href="">Usuarios</a></li> 
                            <li><a href="#">Cerrar sesion</a></li> 
                        </ul>
                    </li>                                                                                       
                </ul>
            </div>
        </div>
        <div class="container">
            <a href="crearcategoria.jsp" id='btn-nuevaCatg' class="btn btn-warning btn-block">Crear nueva categoria</a>
        </div>
        <section>
            <div class="container">
                
                
            </div>
            
        </section>
        <h1 align="center" >Categorias</h1>

        <% Controlador_Categoria cp = new Controlador_Categoria();%>
        <%=cp.getPanelCategorias()%>
        <script src="js/jquery.js"></script>
        <script src="js/administracionCategorias.js"></script>
        <script src="js/price-range.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>         
    </body>                      
</html>
