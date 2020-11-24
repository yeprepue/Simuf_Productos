<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        
        <div class="container mt-4 col-lg-4">                   
            <div class="card col-sm-10">
                <div class="card-body">
                    <form class="frm-login" action="Valida" method="POST">      
                        <div class="form-group text-center">     
                         
                            <img src="images/home/LogoSimuf.png" alt="800" width=300">
                            <label>Bienvenido!!</label>
                        </div>
                        <div class="form-group">   
                            <label>Usuario:</label>
                            <input type="text" name="txtuser" class="form-control">                    
                        </div>
                        <div class="form-group">                    
                            <label>Contraseña:</label>
                            <input type="password" name="txtpass" class="form-control">
                        </div>
                        <input type="submit" name="accion" value="Ingresar" class="btn btn-warning btn-block"  >
                    </form>   
                </div>
            </div>
        </div>       
    </body>
</html>
