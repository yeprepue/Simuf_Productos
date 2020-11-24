<%-- 
    Document   : Registro
    Created on : 17-ago-2019, 12:25:37
    Author     : Briin
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.List" %>
<%@page import="classes.Perfil" %>
<%@page import="models.ModeloPerfil" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta name="description" content="">
<meta name="author" content="">
<title>Login | E-Shopper</title>
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
                                <li><a href=""><i class="fa fa-envelope"></i> correo corporativo</a></li>
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
                            <a href="index.jsp"><img src="images/home/LogoSimuf.png" alt="" width="300" height="45"/></a>
                        </div>

                    </div>
                    <div class="col-md-8 clearfix">
                        <div class="shop-menu clearfix pull-right">
                            <ul class="nav navbar-nav">								
                                <li><a href=""><i class="fa fa-shopping-cart"></i> Carrito de compras</a></li>
                                <li><a href="login.jsp"><i class="fa fa-lock"></i> Inicio de sesion</a></li>
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
                                <li><a href="index.jsp">Inicio</a></li>
                                <li class="dropdown"><a href="#">Mundo Friky<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="index.jsp">Productos</a></li>									
                                        <li><a href="">Ofertas</a></li> 
                                        <li><a href="cart.html">Carrito de compras</a></li> 										 
                                    </ul>
                                </li> 																							</ul>
                        </div>
                    </div>

                </div>
            </div>
        </div><!--/header-bottom-->
    </header><!--/header-->
    <section id="form"><!--form-->
        <div class="container">
            <div class="col-sm-4">
                <div class="signup-form"><!--sign up form-->
                    <h2>Registrate!!! </h2>
                    <form method="POST" id="frm-RegistroUsuario" class="form-horizontal" action="Registrar">
                        <table>
                            <tr>
                                <td><label for="TipoDocumento">Tipo Docuemento</label></td>
                                <td>
                                    <select name="TipoDocumento" id="TipoDocumento">
                                        <option value="Seleccione una opcion">Seleccione una opcion</option>
                                        <option>Cédula Ciudadania</option>
                                        <option>Cédula de Extranjería</option>
                                        <option>Pasaporte</option>
                                    </select>
                                </td>

                            </tr>                                                                         
                            <tr>
                                <td><label for="DocuementoU">Docuemento</label></td>
                                <td><input type="text" name="DocumentoU" id="DocumentoU"></input></td>
                            </tr>
                            <tr>
                                <td><label for="PrimerNombre">Primer Nombre</label></td>
                                <td><input type="text" name="PrimerNombre" id="PrimerNombre"></input></td>
                            </tr>
                            <tr>
                                <td><label for="SegundoNombre">Segundo Nombre</label></td>
                                <td><input type="text" name="SegundoNombre" id="SegundoNombre"></input></td>
                            </tr>
                            <tr>
                                <td><label for="PrimerAppellido">PrimerApellido</label></td>
                                <td><input type="text" name="PrimerApellido" id="PrimerApellido"></input></td>
                            </tr>
                            <tr>
                                <td><label for="PrimerAppellido">SegundoApellido</label></td>
                                <td><input type="text" name="SegundoApellido" id="SegundoApellido"></input></td>
                            </tr>
                            <tr>
                                <td><label for="Direccion">Direccion</label></td>
                                <td><input type="text" name="Direccion" id="Direccion"></input></td>
                            </tr>
                            <tr>
                                <td><label for="Telefono">Telefono</label></td>
                                <td><input type="text" name="Telefono" id="Telefono"></input></td>
                            </tr>
                            <tr>
                                <td><label for="Celular">Calular</label></td>
                                <td><input type="text" name="Celular" id="Celular"></input></td>
                            </tr>                                    
                            <tr>
                                <td><label for="Correo">Correo</label></td>
                                <td><input type="email" name="Correo" id="Correo"></input></td>
                            </tr>
                            <tr>
                                <td><label for="Password">Password</label></td>
                                <td><input type="Password" name="Password" id="Password"></input></td>
                            </tr>
                            <tr>
                                <td><label for="Password2">Verificar Password</label></td>
                                <td><input type="Password" name="Password2" id="Password2"></input></td>
                            </tr>
                            <tr>
                                <!--td><label for="Perfil">Perfil:</label></td-->
                                <td>
                                    <jsp:useBean id="cn" class="models.ModeloPerfil" scope="page"></jsp:useBean>
                                    <%List<Perfil> lista = cn.ConsultarPerfiles();%>
                                    <select style="visibility: hidden" name="PerfilU"id="PerfilU">
                                        <%
                                            for (int i = 0; i < lista.size(); i++) {
                                        %>
                                        <option value="<%=lista.get(i).getIdPerfil()%>"><%=lista.get(i).getNombrePerfil()%></option>
                                        <%
                                            }
                                        %>
                                    </select>

                            </tr>
                            <tr>
                                <!--td><label for="Estado">Estado</label></td-->
                                <td>
                                    <select style="visibility: hidden" name="Estado"id="Estado">                                                
                                        <option>Activo</option>
                                        <option>Inactivo</option>                                                
                                    </select>
                                </td>

                            </tr>
                            <tr>
                                <td></td>
                                <td><button type="submit" class="btn btn-danger" id="btnRegistro">Registrarme</button></input></td>
                            </tr>
                        </table>
                    </form>
                </div><!--/sign up form-->
            </div>
        </div>    
    </section><!--/form-->


    <footer id="footer"><!--Footer-->


        <div class="footer-widget">
            <div class="container">
                <div class="row">




                    <div class="col-sm-3 col-sm-offset-1">
                        <div class="single-widget">
                            <h2>About Shopper</h2>
                            <form action="#" class="searchform">
                                <input type="text" placeholder="Your email address" />
                                <button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
                                <p>Get the most recent updates from <br />our site and be updated your self...</p>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <p class="pull-left">Copyright © 2013 E-SHOPPER Inc. All rights reserved.</p>					
                </div>
            </div>
        </div>

    </footer><!--/Footer-->	

    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript" src="js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
    <script src="js/mein.js"></script>
</body>
</html>