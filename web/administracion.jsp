<%-- 
    Document   : administracion
    Created on : 20/08/2019, 11:11:29 AM
    Author     : Angie
--%>

<%@page import="controllers.Controlador_Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Panel de administracion|Mundo Friky</title>
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
                    <li><a href="administracion.jsp">Inicio</a></li>
                    <li class="dropdown"><a href="#" class="active">Opciones rapidas<i class="fa fa-angle-down"></i></a>
                        <ul role="menu" class="sub-menu">
                            <!--li><a href="crearproducto.jsp" class="active">Crear producto</a></li-->
                            <li><a href="administracion.jsp">Productos </a></li> 
                            <li><a href="categorias.jsp">Categorias </a></li> 
                            <li><a href="">Usuarios</a></li> 
                            <li><a href="#">Cerrar sesion</a></li> 
                        </ul>
                    </li>                                                                                       
                </ul>
            </div>
        </div>
        <!--section id="slider"><!--slider-->
        <!--div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
                            <li data-target="#slider-carousel" data-slide-to="1"></li>
                            <li data-target="#slider-carousel" data-slide-to="2"></li>
                        </ol>
        <!--Realizar control 130 - 140-->
        <!--div class="carousel-inner">
            <div class="item active">
                <div class="col-sm-6">
                    <h1><span>Mundo</span>-Friky</h1>
                    <h2>XBOX</h2>
                    <p> Las mejores consolas, accesorios y juegos....</p>
                    <button type="button" class="btn btn-default get">Ver Productos</button>
                </div>
                <div class="col-sm-6">
                    <img src="images/home/" class="girl img-responsive" alt="" />
                    <img src="images/home/logoXbox.jpg" class="girl img-responsive" alt="" />
                </div>
            </div>
            <div class="item">
                <div class="col-sm-6">
                    <h1><span>Mundo</span>-Friky</h1>
                    <h2>Play Station</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                    <button type="button" class="btn btn-default get">Ver Productos</button>
                </div>
                <div class="col-sm-6">
                    <img src="images/home/logoplay.jpg" class="girl img-responsive" alt="" />
                    <img src="images/home/"  class="pricing" alt="" />
                </div>
            </div>

            <div class="item">
                <div class="col-sm-6">
                    <h1><span>Mundo</span>-Friky</h1>
                    <h2>Nintendo</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                    <button type="button" class="btn btn-default get">Ver Productos</button>
                </div>
                <div class="col-sm-6">
                    <img src="images/home/Nintendo-Logo-Red.png" class="girl img-responsive" alt="" />
                    <img src="images/home/" class="pricing" alt="" width="400" height="400"/>
                </div>
            </div>
        <!--div class="item">
            <div class="col-sm-6">
                <h1><span>Mundo</span>-Friky</h1>
                <h2>Ofertas</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                <button type="button" class="btn btn-default get">Conoce más</button>
            </div>
            <div class="col-sm-6">
                <img src="images/home/Ofertas.jpg" class="girl img-responsive" alt="" />
                <img src="images/home/pricing.png" class="pricing" alt="" />
            </div>
        </div>

    </div>

    <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
        <i class="fa fa-angle-left"></i>
    </a>
    <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
        <i class="fa fa-angle-right"></i>
    </a>
</div>

</div>
</div>
</div>
</section-->
        <div class="container">
            <a href="crearproducto.jsp" id='btn-nuevoProducto' class="btn btn-warning btn-block">CREAR PRODUCTO</a>
        </div>                                
        <h1 align="center" >PRODUCTOS</h1>       
        <% Controlador_Producto cp = new Controlador_Producto();%>
        <%=cp.getPanelView()%>
        <script src="js/jquery.js"></script>
        <script src="js/price-range.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/main.js"></script>   
        <script src="js/paneladministracion.js"></script>
    </body>                      
</html>
