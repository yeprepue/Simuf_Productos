<%@page import="controllers.Controlador_Producto" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <title>Menu cliente|Mundo Friky</title>
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
                        <div class="col-sm-6 ">
                            <div class="contactinfo">                               
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="social-icons pull-right">
                                <ul class="nav navbar-nav">
                                    <li><a href=""><i class="fa fa-facebook"></i></a></li>
                                    <li><a href=""><i class="fa fa-twitter"></i></a></li>								
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
                                <a href="menucliente.jsp"><img src="images/home/LogoSimuf.png" width="400" height="80" alt="" /></a>
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
                                    <li><a href=""><i class="fa fa-star"></i> Ofertas</a></li>								
                                    <li><a href="cart.jsp"><i class="fa fa-shopping-cart"></i> Carrito</a></li>
                                    <li><a href=""><i class="fa fa-lock"></i> Cerrar sesion</a></li>
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
                                    <li><a href="menucliente.jsp">Inicio</a></li>
                                    <li class="dropdown"><a href="#" class="active">Tienda<i class="fa fa-angle-down"></i></a>
                                        <ul role="menu" class="sub-menu">
                                            <li><a href="shop.html" class="active">Mi cuenta</a></li>
                                            <li><a href="#">Ofertas </a></li> 										
                                            <li><a href="cart.jsp">Carrito</a></li> 
                                            <li><a href="#">Cerrar sesion</a></li> 
                                        </ul>
                                    </li>                                     
                                    </li>                                    
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="search_box pull-right">
                                <input type="text" placeholder="Buscas algo?"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <section id="advertisement">
            <div class="container">
                <!img src="images/shop/advertisement.jpg" alt="" />
            </div>
        </section>

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
                                                <li><a href="">Juegos </a></li>
                                                <li><a href="">Consolas </a></li>
                                                <li><a href="">Accesorios </a></li>											
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordian" href="#mens">
                                                <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                                Play Station
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="mens" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <ul>
                                                <li><a href="">Juegos </a></li>
                                                <li><a href="">Consolas </a></li>
                                                <li><a href="">Accesorios </a></li>
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
                                                <li><a href="">Juegos </a></li>
                                                <li><a href="">Consolas </a></li>
                                                <li><a href="">Accesorios </a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>																												

                            </div><!--/category-productsr-->

                            <!--/brands_products-->

                            <div class="price-range"><!--price-range-->
                                <h2>Rango de precio</h2>
                                <div class="well">
                                    <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />
                                    <b>$ 1</b> <b class="pull-right">$ 1000</b>
                                </div>
                            </div><!--/price-range-->

                            <div class="shipping text-center"><!--shipping-->
                                <img src="images/home/LogoSimuf.jpg"height="270" width="329" alt="" />
                            </div><!--/shipping-->
                        </div>
                    </div>

                    <div class="col-sm-9 padding-right">
                        <div class="features_items"><!--features_items-->
                            <h2 class="title text-center">Productos</h2>


                            <!--Cargar productos-->
                            <div>
                                <%= cp.getProductos()%> 
                            </div> 


                            <!--ul class="pagination">
                                <li class="active"><a href="">1</a></li>
                                <li><a href="">2</a></li>
                                <li><a href="">3</a></li>
                                <li><a href="">&raquo;</a></li>
                            </ul-->
                        </div><!--features_items-->


                        </section>
                        <footer id="footer"><!--Footer-->
                            <div class="footer-top">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-sm-2">
                                            <div class="companyinfo">
                                                <h2><span>Mundo</span>-Friky</h2>                                                
                                                <p>Somos la mejor tienda con exelentes precios y lo mejor del mundo Friky</p>                                          
                                            </div>
                                        </div>					

                                    </div>
                                </div>
                            </div>

                            <div class="footer-widget">
                                <div class="container">
                                    <div class="row">

                                    </div>
                                </div>
                            </div>

                            <div class="footer-bottom">
                                <div class="container">
                                    <div class="row">                                        
                                    </div>
                                </div>
                            </div>

                        </footer><!--/Footer-->



                        <script src="js/jquery.js"></script>
                        <script src="js/price-range.js"></script>
                        <script src="js/jquery.scrollUp.min.js"></script>
                        <script src="js/bootstrap.min.js"></script>
                        <script src="js/jquery.prettyPhoto.js"></script>
                        <script src="js/main.js"></script>
                        </body>
                        </html>