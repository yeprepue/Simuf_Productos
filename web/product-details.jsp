<%@page import="controllers.Controlador_Producto"%>
<%@page import="classes.Producto"%>
<%
    int IdProducto = Integer.parseInt(request.getParameter("IdProducto"));
    Producto producto = new Controlador_Producto().getProducto(IdProducto);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Detalles de producto| Mundo-Friky</title>
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
                                </ul>
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
                        <div class="col-sm-4">
                            <div class="logo pull-left">
                                <a href="menucliente.jsp"><img src="images/home/LogoSimuf.png" width="400" height="80" alt="" /></a>
                            </div>                          
                        </div>
                        <div class="col-sm-8">
                            <div class="shop-menu pull-right">
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
                                    <li><a href="index.html">Inicio</a></li>
                                    <li class="dropdown"><a href="#">Opciones<i class="fa fa-angle-down"></i></a>
                                        <ul role="menu" class="sub-menu">
                                            <li><a href="shop.html">Mi cuenta</a></li>                                            
                                            <li><a href="#">Ofertas</a></li> 
                                            <li><a href="">Carrito</a></li> 
                                            <li><a href="#">Cerrar sesion</a></li> 
                                        </ul>
                                    </li>                                                                         
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="search_box pull-right">
                                <input type="text" height="110" width="100" placeholder="Buscas algo?"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header-bottom-->
        </header><!--/header-->

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
                                                Xbox One
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
                                                <li><a href="">Juegos</a></li>
                                                <li><a href="">Consolas</a></li>
                                                <li><a href="">Accesorios</a></li>

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
                                                <li><a href="">Juegos</a></li>
                                                <li><a href="">Consolas</a></li>
                                                <li><a href="">Accesorios</a></li>                                               
                                            </ul>
                                        </div>
                                    </div>
                                </div>                                                                
                            </div><!--/category-products-->                           
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
                        <div class="product-details"><!--product-details-->
                            <div class="col-sm-5">
                                <div class="view-product">
                                    <img src="<%= producto.getImagen_1()%>" alt="" />
                                    <h3>ZOOM</h3>
                                </div>
                                <div id="similar-product" class="carousel slide" data-ride="carousel">

                                    <!--Wrapper for slides --
                                    <div class="carousel-inner">
                                        <div class="item active">
                                            <a href=""><img src="images/product-details/similar1.jpg" alt=""></a>
                                            <a href=""><img src="images/product-details/similar2.jpg" alt=""></a>
                                            <a href=""><img src="images/product-details/similar3.jpg" alt=""></a>
                                        </div>
                                        <div class="item">
                                            <a href=""><img src="images/product-details/similar1.jpg" alt=""></a>
                                            <a href=""><img src="images/product-details/similar2.jpg" alt=""></a>
                                            <a href=""><img src="images/product-details/similar3.jpg" alt=""></a>
                                        </div>
                                        <div class="item">
                                            <a href=""><img src="images/product-details/similar1.jpg" alt=""></a>
                                            <a href=""><img src="images/product-details/similar2.jpg" alt=""></a>
                                            <a href=""><img src="images/product-details/similar3.jpg" alt=""></a>
                                        </div>
    
                                    </div>
    
                                    <!-- Controls -->
                                    <a class="left item-control" href="#similar-product" data-slide="prev">
                                        <i class="fa fa-angle-left"></i>
                                    </a>
                                    <a class="right item-control" href="#similar-product" data-slide="next">
                                        <i class="fa fa-angle-right"></i>
                                    </a>
                                </div>

                            </div>
                            <div class="col-sm-7">
                                <div class="product-information"><!--/product-information-->
                                    <img src="images/product-details/new.jpg" class="newarrival" alt="" />
                                    <h2><%= producto.getNombre()%></h2>
                                    <p>Web ID: <%= producto.getIdProducto()%></p>
                                    <img src="images/product-details/rating.png" alt="" />
                                    <form action="agregarproducto" method="post">
                                        <span>
                                            <span>$<%=producto.getPrecioVenta()%></span>
                                            <label>Cantidad:</label>
                                            <input type="hidden" value="<%= producto.getIdProducto()%>" name="IdProducto">
                                            <input type="text" value="1" id="txt-cantidad" name="cantidad"/>
                                            <button type="submit" class="btn btn-fefault cart">
                                                <i class="fa fa-shopping-cart"></i>
                                                Agregar a carrito
                                            </button>
                                        </span>
                                    </form>   
                                    <p><b>Disponibles: </b><%= producto.getCantidad()%></p>
                                    <p><b>Condicion:</b> Nuevo</p>
                                    <p><b>Marca:</b> <%=producto.getIdSubCategoria()%></p>
                                    <!--a href=""><img src="images/product-details/share.png" class="share img-responsive"  alt="" /></a-->
                                </div><!--/product-information-->
                            </div>
                        </div><!--/product-details-->

                        <div class="category-tab shop-details-tab"><!--category-tab-->
                            <div class="col-sm-12">
                                <ul class="nav nav-tabs">

                                    <li><a href="#details" data-toggle="tab">Detalles</a></li>                                                                        
                                </ul>
                            </div>
                            <div class="tab-content">
                                <div class="tab-pane fade" id="details" >
                                    <li><%=producto.getDescripcion()%></li>        

                                </div>
                                <div class="col-sm-3">

                                </div>

                            </div>
                            <!--div class="tab-pane fade active in" id="reviews" >
                                <div class="col-sm-12">
                                    <form action="#">
                                        <span>
                                            <input type="text" placeholder="Your Name"/>
                                            <input type="email" placeholder="Email Address"/>
                                        </span>
                                        <textarea name="" ></textarea>
                                        <b>Rating: </b> <img src="images/product-details/rating.png" alt="" />
                                        <button type="button" class="btn btn-default pull-right">
                                            Submit
                                        </button>
                                    </form>
                                </div-->
                        </div>

                    </div>


                </div>
            </div>
        </section>

        <footer id="footer"><!--Footer-->
            <div class="footer-top">

            </div>

            <div class="footer-widget">

            </div>
            <div class="col-sm-2">

            </div>
            <div class="col-sm-3 col-sm-offset-1">

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