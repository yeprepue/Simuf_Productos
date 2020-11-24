<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controllers.Controlador_Producto" %> 
<%

    Controlador_Producto cp = new Controlador_Producto();

%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Inicio | Mundo Friky</title>
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
    </head><!--/head-->

    <body>
        <header id="header"><!--header-->
            <div class="header_top"><!--header_top-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="contactinfo">
                                <ul class="nav nav-pills">								
                                    <li><a href="#"><i class="fa fa-envelope"></i>Correo corporativo</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="social-icons pull-right">
                                <ul class="nav navbar-nav">
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>								
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header_top-->

            <div class="header-middle"><!--header-middle-->
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 clearfix">
                            <div class="logo pull-left">
                                <a href="index.jsp"><img src="images/home/LogoSimuf.png" alt="" width="300" height="45"/></a>
                            </div>

                        </div>
                        <div class="col-md-8 clearfix">
                            <div class="shop-menu clearfix pull-right">
                                <ul class="nav navbar-nav">
                                    <li><a href="Registro.jsp"><i class="fa fa-user"></i> Crear cuenta</a></li>
                                    <!--li><a href=""><i class="fa fa-star"></i>lista de deseos</a></li>
                                    <li><a href=""><i class="fa fa-crosshairs"></i>Ofertas </a></li-->
                                    <li><a href="cart.jsp"><i class="fa fa-shopping-cart"></i>Carito de compras</a></li>
                                    <li><a href="login.jsp"><i class="fa fa-lock"></i>Inicio de sesion </a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header-middle-->

            <div class="header-bottom"><!--header-bottom-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-9">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>
                            <div class="mainmenu pull-left">
                                <ul class="nav navbar-nav collapse navbar-collapse">
                                    <li><a href="index.jsp" class="active">Inicio</a></li>
                                    <li class="dropdown"><a href="#">Mundo Friky<i class="fa fa-angle-down"></i></a>
                                        <ul role="menu" class="sub-menu">
                                            <li><a href="Registro.jsp">Crea tu cuenta</a></li>
                                            <!--<li><a href="">Ofertas</a></li> -->
                                            <li><a href="#">Productos</a></li> 
                                            <li><a href="cart.jsp">Carrito de compras</a></li> 
                                            <li><a href="login.jsp">Inicio sesion</a></li> 
                                        </ul>
                                    </li> 																
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="search_box pull-right">
                                <input type="text" placeholder="Buscar"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header-bottom-->
        </header><!--/header-->

        <section id="slider"><!--slider-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
                                <li data-target="#slider-carousel" data-slide-to="1"></li>
                                <li data-target="#slider-carousel" data-slide-to="2"></li>
                            </ol>
                            <!--Realizar control 130 - 140-->
                            <div class="carousel-inner">
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
                                </div-->

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
        </section><!--/slider-->

        <section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="left-sidebar">
                            <h2>Categorias</h2>
                            <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordian" href="#sportswear">
                                                <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                                XBOX
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="sportswear" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <ul>
                                                <li><a href="#">Juegos </a></li>
                                                <li><a href="#">Consolas </a></li>
                                                <li><a href="#">Accesorios </a></li>											
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordian" href="#mens">
                                                <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                                PlayStation
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="mens" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <ul>
                                                <li><a href="#">Juegos </a></li>
                                                <li><a href="#">Consolas </a></li>
                                                <li><a href="#">Accesorios </a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordian" href="#womens">
                                                <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                                Nintendo
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="womens" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <ul>
                                                <li><a href="#">Juegos </a></li>
                                                <li><a href="#">Consolas </a></li>
                                                <li><a href="#">Accesorios </a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#">Ofertas</a></h4>
                                    </div>
                                </div>
                            </div><!--/category-products-->

                            <!--/brands_products-->

                            <div class="price-range"><!--price-range-->
                                <h2>Rango de precio</h2>
                                <div class="well text-center">
                                    <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />
                                    <b class="pull-left">$ 0</b> <b class="pull-right">$ 600</b>
                                </div>
                            </div><!--/price-range-->

                            <div class="shipping text-center"><!--shipping-->
                                <img src="images/home/shipping.jpg" alt="" />
                            </div><!--/shipping-->

                        </div>
                    </div>
                    <!--incluir conrolador productos-->
                    <div class="col-sm-9 padding-right">
                        <div class="features_items"><!--features_items-->
                            <h2 class="title text-center">Productos</h2>					
                            <div>
                                <%= cp.getProductos()%> 
                            </div> 				
                           
                            <div class="col-sm-4">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/Nintendo-swich.jpg" alt="" />
                                            <h2>$1.184.900</h2>
                                            <p>Consola Nintendo Switch Neon</p>
                                            <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Agregar a Carrito</a>
                                        </div>
                                        <div class="product-overlay">
                                            <div class="overlay-content">
                                                <img src="images/home/" alt="" />
                                                <h2>$1.184.900</h2>
                                                <p>Consola Nintendo Switch Neon</p>
                                                <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Agregar a Carrito</a>
                                            </div>
                                        </div>
                                        <!--Imagen superior derecha de producto-->
                                        <img src="images/home/oferta.png" width="70" height="60" class="new" alt="" />
                                    </div>
                                    <div class="choose">
                                        <ul class="nav nav-pills nav-justified">
                                            <li><a href="#"><i class="fa fa-plus-square"></i>Detalles</a></li>
                                            <li><a href="#"><i class="fa fa-plus-square"></i>Comprar</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>






                        </div><!--features_items-->

                        <!--/category-tab-->

                        <!--/recommended_items-->

                    </div>
                </div>
            </div>
        </section>

        <footer id="footer"><!--Footer-->
            <div class="footer-top">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-2">
                            <div class="companyinfo">
                                <h2><span>Mundo</span>-Friky</h2>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,sed do eiusmod tempor</p>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="footer-bottom">
                    <div class="container">
                        <div class="row">
                        </div>
                    </div>

                    </footer><!--/Footer-->



                    <script src="js/jquery.js"></script>
                    <script src="js/bootstrap.min.js"></script>
                    <script src="js/jquery.scrollUp.min.js"></script>
                    <script src="js/price-range.js"></script>
                    <script src="js/jquery.prettyPhoto.js"></script>
                    <script src="js/main.js"></script>
                    </body>
                    </html>