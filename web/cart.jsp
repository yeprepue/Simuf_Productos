<%@page import="classes.Producto"%>
<%@page import="controllers.Controlador_Producto"%>
<%@page import="classes.Articulo"%>
<%@page import="java.util.ArrayList"%>
<%
    HttpSession sesion = request.getSession(true);
    ArrayList<Articulo> articulos = sesion.getAttribute("carrito") == null ? null : (ArrayList) sesion.getAttribute("carrito");

%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Carrito|Mundo Friky</title>
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
                        <div class="col-md-4 clearfix">
                            <div class="logo pull-left">
                                <a href="menucliente.jsp"><img src="images/home/LogoSimuf.png" width="400" height="80" alt="" /></a>
                            </div>																							
                        </div>
                        <div class="col-md-8 clearfix">
                            <div class="shop-menu clearfix pull-right">
                                <ul class="nav navbar-nav">
                                    <li><a href=""><i class="fa fa-user"></i> Mi Cuenta</a></li>
                                    <li><a href=""><i class="fa fa-star"></i> Ofertas</a></li>														
                                    <li><a href="login.html"><i class="fa fa-lock"></i> Cerrar sesion</a></li>
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
                                    <li class="dropdown"><a href="#">Shop<i class="fa fa-angle-down"></i></a>
                                        <ul role="menu" class="sub-menu">
                                            <li><a href="shop.html">Productos</a></li>
                                            <li><a href="product-details.html">Ofertas</a></li> 
                                            <li><a href="checkout.html">Mis compras</a></li> 
                                            <li><a href="cart.html" class="active">Carrito de compras</a></li> 
                                            <li><a href="login.html">Cerrar sesion</a></li> 
                                        </ul>
                                    </li> 															
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>          
        </header><!--/header-->	
        <section id="cart_items">
            <div class="container">
                <div class="breadcrumbs">
                    <ol class="breadcrumb">
                        <li><a href="#">Inicio</a></li>
                        <li class="active">Carrito de compras</li>
                    </ol>
                </div>
                <div class="table-responsive cart_info" id="cart-container">
                    <table class="table table-condensed" id="shop-table">
                        <thead>
                            <tr class="cart_menu">
                                <td class="image">Producto</td>
                                <td class="description"></td>
                                <td class="price">Precio</td>
                                <td class="quantity">Cantidad</td>
                                <td class="total">Total</td>
                                <td></td>
                            </tr>
                        </thead>
                        <!-- Productos carrito de compras hasta la 207-->
                        <tbody>

                            <%                                Controlador_Producto cp = new Controlador_Producto();
                                float total = 0;
                                if (articulos != null) {
                                    for (Articulo a : articulos) {
                                        Producto producto = cp.getProducto(a.getIdProducto());
                                        total += a.getCantidad() * producto.getPrecioVenta();
                            %>


                            <tr>
                                <td class="cart_product">
                                    <a href=""><img src="<%=producto.getImagen_1()%>" width="150" alt=""></a>
                                </td>
                                <td class="cart_description">
                                    <h4><a href=""><%=producto.getNombre()%></a></h4>
                                    <p>Web ID: <%=producto.getIdProducto()%></p>
                                </td>
                                <td class="cart_price">
                                    <p id="pre">$<%=producto.getPrecioVenta()%></p>
                                </td>
                                <td class="cart_quantity">
                                    <div class="cart_quantity_button">
                                        <a class="cart_quantity_up" href="" id="add"> + </a>
                                        <input class="cart_quantity_input" type="text" name="quantity" value="<%=a.getCantidad()%>" autocomplete="off" size="2">
                                        <a class="cart_quantity_down" href=""> - </a>
                                    </div>
                                </td>
                                <td class="cart_total">
                                    <p class="cart_total_price" id="total">$<%= Math.round(producto.getPrecioVenta() * a.getCantidad() * 100.0 / 100.0)%></p>
                                </td>
                                <td class="cart_delete">
                                    <span id="idarticulo" style="display: none;"><%=producto.getIdProducto()%></span>
                                    <a class="cart_quantity_delete" href="" id="deleteitem"><i class="fa fa-times"></i></a>
                                </td>
                            </tr>	

                            <%}}%>                                                
                        </tbody>
                    </table>
                    <%if(articulos==null){%>
                    <h4>No hay articulos en el carrito de compras</h4>
                    <%}%>
                </div>                            
                <a href="javascript:window.history.go(-2) ">Seguir Comprando</a>                                      
            </div>
        </section> <!--/#cart_items-->

        <section id="do_action">
            <div class="container">			
                <div class="row">
                    <div class="col-sm-6">
                        <div class="chose_area">
                            <ul class="user_option">																		
                            </ul>																		
                            <a class="btn btn-default update" href=""></a>
                            <a class="btn btn-default check_out" href="">Continuar!!</a>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="total_area">
                            <ul>
                                <li>Sub Total <span id="txt-subtotal">$<%= Math.round(total * 100.0) / 100.0%></span></li>
                                <li>Costo de envio<span>Free</span></li>
                                <li>Total <span id="txt-total">$<%= Math.round(total * 100.0) / 100.0%></span></li>
                            </ul>
                            <a class="btn btn-default update" href="">Actualizar</a>							
                        </div>
                    </div>
                </div>
            </div>
        </section><!--/#do_action-->

        <footer id="footer"><!--Footer-->
            <div class="footer-top">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-2">
                            <div class="companyinfo">
                                <h2><span>Mundo</span>- Friky</h2>
                                <p>Somos la mejor tienda con exelentes precios y lo mejor del mundo Friky</p>
                            </div>
                        </div>									
                    </div>
                </div>
            </div>											
        </footer><!--/Footer-->	
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/main.js"></script>
        <script src="js/carrito_1.js"></script>
    </body>
</html>