-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tiendavirtual
-- ------------------------------------------------------
-- Server version	5.7.26-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tblcategoria`
--

DROP TABLE IF EXISTS `tblcategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblcategoria` (
  `IdCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Catg` varchar(45) NOT NULL,
  `Descripcion_Catg` varchar(500) NOT NULL,
  PRIMARY KEY (`IdCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcategoria`
--

LOCK TABLES `tblcategoria` WRITE;
/*!40000 ALTER TABLE `tblcategoria` DISABLE KEYS */;
INSERT INTO `tblcategoria` VALUES (1,'Xbox','En esta categoría se asociaran todos los productos'),(2,'Play Station','En esta categoría se asociaran todos los productos de Play Station'),(34,'Nintendo','En esta categoría pertenecen los productos de la marca Nintendo');
/*!40000 ALTER TABLE `tblcategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldetalleventa`
--

DROP TABLE IF EXISTS `tbldetalleventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbldetalleventa` (
  `IdDetalleVenta` int(11) NOT NULL AUTO_INCREMENT,
  `Cantidad` int(11) NOT NULL,
  `PrecioCantidad` float NOT NULL,
  `IdMetodoPago` int(11) NOT NULL,
  `IdProducto` int(11) NOT NULL,
  PRIMARY KEY (`IdDetalleVenta`),
  KEY `IdMetodoPago_idx` (`IdMetodoPago`),
  KEY `IdProducto_idx` (`IdProducto`),
  CONSTRAINT `IdMetodoPago` FOREIGN KEY (`IdMetodoPago`) REFERENCES `tblmetodopago` (`IdMetodoPago`),
  CONSTRAINT `IdProducto` FOREIGN KEY (`IdProducto`) REFERENCES `tblproducto` (`IdProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldetalleventa`
--

LOCK TABLES `tbldetalleventa` WRITE;
/*!40000 ALTER TABLE `tbldetalleventa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldetalleventa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblfactura`
--

DROP TABLE IF EXISTS `tblfactura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblfactura` (
  `IdFactura` int(11) NOT NULL,
  `FechaFactura` date NOT NULL,
  `TotalFactura` float NOT NULL,
  `IdDetalleVenta` int(11) NOT NULL,
  `IdUsuario` int(11) NOT NULL,
  PRIMARY KEY (`IdFactura`),
  KEY `IdDetalleVenta_idx` (`IdDetalleVenta`),
  KEY `IdUsuario_idx` (`IdUsuario`),
  CONSTRAINT `IdDetalleVenta` FOREIGN KEY (`IdDetalleVenta`) REFERENCES `tbldetalleventa` (`IdDetalleVenta`),
  CONSTRAINT `IdUsuario` FOREIGN KEY (`IdUsuario`) REFERENCES `tblusuario` (`IdUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfactura`
--

LOCK TABLES `tblfactura` WRITE;
/*!40000 ALTER TABLE `tblfactura` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblfactura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblinventario`
--

DROP TABLE IF EXISTS `tblinventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblinventario` (
  `IdInventario` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Inventario` varchar(45) NOT NULL,
  `Descripcion_Inventario` varchar(500) DEFAULT NULL,
  `CantidadInventario` int(11) NOT NULL,
  PRIMARY KEY (`IdInventario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblinventario`
--

LOCK TABLES `tblinventario` WRITE;
/*!40000 ALTER TABLE `tblinventario` DISABLE KEYS */;
INSERT INTO `tblinventario` VALUES (1,'Consolas','Prueba Prueba Prueba Prueba',7),(3,'Juegos','Prueba controlador',10);
/*!40000 ALTER TABLE `tblinventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblmetodopago`
--

DROP TABLE IF EXISTS `tblmetodopago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblmetodopago` (
  `IdMetodoPago` int(11) NOT NULL,
  `NombreMtd` varchar(45) NOT NULL,
  `DescripcionMtd` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`IdMetodoPago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmetodopago`
--

LOCK TABLES `tblmetodopago` WRITE;
/*!40000 ALTER TABLE `tblmetodopago` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblmetodopago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblperfil`
--

DROP TABLE IF EXISTS `tblperfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblperfil` (
  `IdPerfil` int(11) NOT NULL AUTO_INCREMENT,
  `Perfil` varchar(45) NOT NULL,
  `DescripcionPerfil` varchar(100) NOT NULL,
  PRIMARY KEY (`IdPerfil`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblperfil`
--

LOCK TABLES `tblperfil` WRITE;
/*!40000 ALTER TABLE `tblperfil` DISABLE KEYS */;
INSERT INTO `tblperfil` VALUES (1,'Cliente','El que realiza las compras'),(2,'Administrador','Maneja la pagina');
/*!40000 ALTER TABLE `tblperfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproducto`
--

DROP TABLE IF EXISTS `tblproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblproducto` (
  `IdProducto` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` varchar(1000) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Imagen_1` varchar(100) DEFAULT NULL,
  `Imagen_2` varchar(100) DEFAULT NULL,
  `Imagen_3` varchar(100) DEFAULT NULL,
  `Imagen_4` varchar(100) DEFAULT NULL,
  `Imagen_5` varchar(100) DEFAULT NULL,
  `Estado` enum('Activo','Inactivo') NOT NULL,
  `IdSubCategoria` int(11) NOT NULL,
  `IdInventario` int(11) NOT NULL,
  `PrecioVenta` float NOT NULL,
  `PrecioCompra` float NOT NULL,
  PRIMARY KEY (`IdProducto`),
  KEY `IdInventario_idx` (`IdInventario`),
  KEY `IdSubCategoria_idx` (`IdSubCategoria`),
  CONSTRAINT `IdInventario` FOREIGN KEY (`IdInventario`) REFERENCES `tblinventario` (`IdInventario`),
  CONSTRAINT `IdSubCategoria` FOREIGN KEY (`IdSubCategoria`) REFERENCES `tblsubcategoria` (`IdSubCteg`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproducto`
--

LOCK TABLES `tblproducto` WRITE;
/*!40000 ALTER TABLE `tblproducto` DISABLE KEYS */;
INSERT INTO `tblproducto` VALUES (59,'xbox One ','xbox One  xbox One ',11,'images/home/one.jpg','images/home/one2.jpg','images/home/one3.jpg','images/home/one4.jpg','images/home/one5.jpg','Activo',1,1,1300000,70000);
/*!40000 ALTER TABLE `tblproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblregla`
--

DROP TABLE IF EXISTS `tblregla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblregla` (
  `IdRegla` int(11) NOT NULL,
  `NombreRegla` varchar(45) NOT NULL,
  `DescripcionRegla` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IdRegla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblregla`
--

LOCK TABLES `tblregla` WRITE;
/*!40000 ALTER TABLE `tblregla` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblregla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsubcategoria`
--

DROP TABLE IF EXISTS `tblsubcategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblsubcategoria` (
  `IdSubCteg` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Sctg` varchar(50) NOT NULL,
  `Descripcion_Sctg` varchar(500) DEFAULT NULL,
  `IdCategoria` int(11) NOT NULL,
  PRIMARY KEY (`IdSubCteg`),
  KEY `IdCategoria_idx` (`IdCategoria`),
  CONSTRAINT `IdCategoria` FOREIGN KEY (`IdCategoria`) REFERENCES `tblcategoria` (`IdCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsubcategoria`
--

LOCK TABLES `tblsubcategoria` WRITE;
/*!40000 ALTER TABLE `tblsubcategoria` DISABLE KEYS */;
INSERT INTO `tblsubcategoria` VALUES (1,'Consolas Xbox','Prueba Prueba Prueba',1),(2,'Juegos Xbox','Prueba',1);
/*!40000 ALTER TABLE `tblsubcategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltranspr`
--

DROP TABLE IF EXISTS `tbltranspr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbltranspr` (
  `tblPerfil_IdPerfil` int(11) NOT NULL,
  `tblRegla_IdRegla` int(11) NOT NULL,
  PRIMARY KEY (`tblPerfil_IdPerfil`,`tblRegla_IdRegla`),
  KEY `fk_tblPerfil_has_tblRegla_tblRegla1_idx` (`tblRegla_IdRegla`),
  KEY `fk_tblPerfil_has_tblRegla_tblPerfil1_idx` (`tblPerfil_IdPerfil`),
  CONSTRAINT `fk_tblPerfil_has_tblRegla_tblPerfil1` FOREIGN KEY (`tblPerfil_IdPerfil`) REFERENCES `tblperfil` (`IdPerfil`),
  CONSTRAINT `fk_tblPerfil_has_tblRegla_tblRegla1` FOREIGN KEY (`tblRegla_IdRegla`) REFERENCES `tblregla` (`IdRegla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltranspr`
--

LOCK TABLES `tbltranspr` WRITE;
/*!40000 ALTER TABLE `tbltranspr` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltranspr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblusuario`
--

DROP TABLE IF EXISTS `tblusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblusuario` (
  `IdUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `TipoDocumento` varchar(45) NOT NULL,
  `Documento` int(11) NOT NULL,
  `PrimerNombre` varchar(45) NOT NULL,
  `SegundoNombre` varchar(45) DEFAULT NULL,
  `PrimerApellido` varchar(45) NOT NULL,
  `SegundoApellido` varchar(45) DEFAULT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Celular` varchar(45) NOT NULL,
  `Correo` varchar(80) NOT NULL,
  `Pass` varchar(500) NOT NULL,
  `IdPerfil` int(11) NOT NULL,
  `EstadoUsuario` enum('Activo','Inactivo') NOT NULL,
  `LastSession` datetime NOT NULL,
  PRIMARY KEY (`IdUsuario`),
  UNIQUE KEY `nro_identificacion_UNIQUE` (`Documento`),
  KEY `IdPerfil_idx` (`IdPerfil`),
  CONSTRAINT `IdPerfil` FOREIGN KEY (`IdPerfil`) REFERENCES `tblperfil` (`IdPerfil`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblusuario`
--

LOCK TABLES `tblusuario` WRITE;
/*!40000 ALTER TABLE `tblusuario` DISABLE KEYS */;
INSERT INTO `tblusuario` VALUES (3,'Pasaporte',1030688805,'brayan','leandro','torres','gaona','call55','1234567','367890','bltorres@hotmail.com','123',2,'Activo','0000-00-00 00:00:00'),(4,'Pasaporte',34598345,'sjhdd','dfgdsfb','dfbdsfb','dzfbdfb','dzfbdfbdafb','345236424','34642562456','gbadfbadfba','1212',2,'Activo','0000-00-00 00:00:00'),(6,'Cedula Ciudadina',1030688809,'Brayan','Leandro','Robles','Gaona','hola no me la se','1045666','2434235235','Bltorres@misena.edu','7c222fb2927d828af22f592134e8932480637c0d',2,'Activo','2019-08-20 07:25:05'),(7,'CÃ©dula Ciudadania',78942323,'dafadf','qegr','adfbadfb','qrg','afdb','adfbad','qrg','m@m.com','7c222fb2927d828af22f592134e8932480637c0d',1,'Activo','2019-08-20 07:26:21'),(8,'CÃ©dula Ciudadania',1012384356,'Yeison','esteban','pretel','puentes','Diagonal 73','5975291','no tiene ','Yepretel@misena.edu.co','7c222fb2927d828af22f592134e8932480637c0d',2,'Activo','2019-08-20 07:30:53'),(14,'Cédula Ciudadania',1012384359,'Yeison','esteban','Pretel','Puentes','Diagonal 73h sur # 70 b 09','5975291','3506435557','yepretel@gmail.com','7f4e4f02ef1e11835a7c65ce5676ef372def3885',1,'Activo','2019-08-30 07:35:01'),(15,'Prueba',1111,'Prueba','Prueba','Prueba','Prueba','Prueba','Prueba','Prueba','Prueba','Prueba',1,'Activo','2019-04-09 10:36:10'),(16,'CÃ©dula Ciudadania',13435254,'andrea','luisa','martinez','paez','calle 123','1234567','3597543689','andrea123@gmail.com','de06c103ac9b54ce6d258faca2e04c025d5e1ae7',1,'Activo','2019-09-04 11:53:42'),(17,'CÃ©dula Ciudadania',13458254,'andrea','luisa','martinez','paez','calle 123','1234567','3597543689','andrea125@gmail.com','de06c103ac9b54ce6d258faca2e04c025d5e1ae7',1,'Activo','2019-09-04 01:57:42'),(18,'CÃ©dula Ciudadania',1345899254,'andrea','luisa','martinez','paez','calle 123','1234567','3597543689','andrea12@gmail.c6om','de06c103ac9b54ce6d258faca2e04c025d5e1ae7',1,'Activo','2019-09-04 02:03:29'),(20,'CÃ©dula Ciudadania',134589254,'andrea','luisa','martinez','paez','calle 123','1234567','3597543689','andrea122@gmail.c6om','de06c103ac9b54ce6d258faca2e04c025d5e1ae7',1,'Activo','2019-09-04 02:05:53'),(21,'CÃ©dula Ciudadania',13459254,'andrea','luisa','martinez','paez','calle 123','1234567','3597543689','andrea128@gmail.com','de06c103ac9b54ce6d258faca2e04c025d5e1ae7',1,'Activo','2019-09-04 02:06:49'),(23,'CÃ©dula Ciudadania',13458992,'andrea','luisa','martinez','paez','calle 123','123456','3597543689','andrea130@gmail.com','de06c103ac9b54ce6d258faca2e04c025d5e1ae7',1,'Activo','2019-09-04 02:17:20'),(24,'CÃ©dula Ciudadania',19764432,'andrea','luisa','martinez','paez','calle 123','1234567','3597543689','andrea168@gmail.com','de06c103ac9b54ce6d258faca2e04c025d5e1ae7',1,'Activo','2019-09-04 02:22:45'),(26,'Prueba',11121,'Prueba','Prueba','Prueba','Prueba','Prueba','Prueba','Prueba','Prueba','Prueba',1,'Activo','2019-04-09 10:36:10'),(27,'Prueba',10190000,'Prueba','Prueba','Prueba','Prueba','Prueba','Prueba','Prueba','Prueba@gmail.com','6639830f52aa12674a9e859c1bea1aed1ec9d2d0',2,'Activo','2019-09-04 06:42:47'),(29,'Prueba',101900,'Prueba','Prueba','Prueba','Prueba','Prueba','Prueba','Prueba','Prueba@gmail.com','6639830f52aa12674a9e859c1bea1aed1ec9d2d0',2,'Activo','2019-09-10 10:05:47'),(30,'Cédula Ciudadania',876298364,'Andres','mauricio','barrera','rabdi','calle 123','323423','3102808520','yeudud@hotmail.com','7c222fb2927d828af22f592134e8932480637c0d',1,'Activo','2019-09-10 10:36:40'),(31,'Cédula Ciudadania',5464863,'Andres','mauricio','barrera','adfasdf','calle 123','234567','3102808520','andres1234567@gmail.com','de06c103ac9b54ce6d258faca2e04c025d5e1ae7',1,'Activo','2019-09-10 10:50:37'),(32,'Cédula Ciudadania',1012384350,'Yeison','Manuel','Rosas ','Cuebas','calle falsa 123','4567890','350768009','yepre@mimail.com','f7c3bc1d808e04732adf679965ccc34ca7ae3441',1,'Activo','2019-09-28 06:10:55'),(34,'Prueba',1234566789,'Prueba','Prueba','Prueba','Prueba','Prueba','Prueba','Prueba','Prueba@gmail.com','6639830f52aa12674a9e859c1bea1aed1ec9d2d0',2,'Activo','2019-09-29 12:28:26'),(35,'Cédula Ciudadania',67498963,'paola ','andrea','giraldo','ramirez','calle falsa 123','4346379','3125214567','prueba@mail.com','7c222fb2927d828af22f592134e8932480637c0d',1,'Activo','2019-09-29 03:51:17'),(36,'Cédula Ciudadania',1012436876,'yeison','prueba','prueba','prueba','prurba','prueba','2345678','clientep1@mail.com','7c222fb2927d828af22f592134e8932480637c0d',1,'Activo','2019-09-30 07:57:01'),(37,'Cédula Ciudadania',19263535,'yeison','esteban','pretel','kjhdfhhfh','prueba ','3333344','27464646|','pruba@mail23.com','7c222fb2927d828af22f592134e8932480637c0d',1,'Activo','2019-10-01 07:32:00'),(38,'Cédula Ciudadania',18565945,'Yeison','Esteban','Pretel','Puentes','calle 123','33333','33333333','adminl@admin.co','7c222fb2927d828af22f592134e8932480637c0d',2,'Activo','2020-11-23 10:17:07');
/*!40000 ALTER TABLE `tblusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'tiendavirtual'
--

--
-- Dumping routines for database 'tiendavirtual'
--
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_categoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_categoria`(in 
_IdCategoria int(11),
_Nombre_Catg varchar(45),
_Descripcion_Catg varchar(500))
BEGIN
update tblcategoria set Nombre_Catg=_Nombre_Catg, Descripcion_Catg=_Descripcion_Catg where IdCategoria= _IdCategoria; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_producto`(
in _IdProducto int(11), 
_Nombre varchar(100), 
_Descripcion varchar(1000), 
_Cantidad int(11),  
_Estado varchar(200), 
_PrecioVenta float, 
_PrecioCompra float )
BEGIN
update tblproducto set 
Nombre = _Nombre,
Descripcion = _Descripcion,
Cantidad = _Cantidad,
Estado= _Estado,
PrecioVenta= _PrecioVenta,
PrecioCompra=_PrecioCompra

 where IdProducto=_IdProducto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crear_categoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crear_categoria`(
IN _Nombre_Catg varchar(45),
Descripcion_Catg varchar(500))
BEGIN
insert into tblcategoria (Nombre_Catg,Descripcion_Catg)values(_Nombre_Catg,Descripcion_Catg);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crear_inventario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crear_inventario`(
IN _Nombre_Inventario varchar(45),
_Descripcion_Inventario varchar(500), 
_CantidadInventario int(11))
BEGIN
insert  tblinventario (Nombre_Inventario,Descripcion_Inventario,CantidadInventario)values
(_Nombre_Inventario,_Descripcion_Inventario,_CantidadInventario );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crear_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crear_producto`(
in _Nombre varchar(100),
_Descripcion varchar(1000),
_Cantidad int(11), 
_Imagen_1 varchar(100), 
_Imagen_2 varchar(100), 
_Imagen_3 varchar(100), 
_Imagen_4 varchar(100), 
_Imagen_5 varchar(100), 
_Estado varchar(200), 
_IdSubCategoria int(11), 
_IdInventario int(11), 
_PrecioVenta float, 
_PrecioCompra float
)
BEGIN
insert into tblProducto (Nombre, Descripcion, Cantidad, Imagen_1, Imagen_2, Imagen_3, Imagen_4, Imagen_5,Estado,IdSubCategoria,IdInventario,PrecioVenta,PrecioCompra) 
values (_Nombre,_Descripcion,_Cantidad,_Imagen_1,_Imagen_2,_Imagen_3,_Imagen_4,_Imagen_5,_Estado,_IdSubCategoria,_IdInventario,_PrecioVenta,_PrecioCompra);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crear_Sctg` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crear_Sctg`(
in _Nombre_Sctg varchar(50),
_Descripcion_Sctg varchar(500),
_IdCategoria int(11))
BEGIN
insert into tblsubcategoria(Nombre_Sctg,Descripcion_Sctg,IdCategoria)values(_Nombre_Sctg,_Descripcion_Sctg,_IdCategoria);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_categoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_categoria`(in _IdCategoria int)
BEGIN
delete from tblcategoria where IdCategoria =  _IdCategoria; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_invetario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_invetario`(in _IdInventario int(11))
BEGIN
delete from tblinventario where  IdInventario = _IdInventario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_producto`( in _IdProducto int )
BEGIN
delete from tblproducto where IdProducto= _IdProducto; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_perfil` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_perfil`(
in _Perfil varchar(45),
_DescripcionPerfil varchar(100),
_EstadoPerfil varchar(45)

)
BEGIN
insert into tblperfil(Perfil,DescripcionPerfil,EstadoPerfil) values (_Perfil,_DescripcionPerfil,_EstadoPerfil);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_procedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_procedure`(
in _IdInventario int(11), 
_Nombre_Inventario varchar(45), 
_Descripcion_Inventario varchar(500), 
_CantidadInventario int(11))
BEGIN
update tbltinventario set  Nombre_Inventario = _Nombre_Inventario, Descripcion_Inventario= _Descripcion_Inventario, CantidadInventario=_CantidadInventario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `select_categoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_categoria`(in _IdCategoria int(11))
BEGIN
select * from tblcategoria where IdCategoria = _IdCategoria;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `select_inventario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_inventario`(in _IdInventario int(11))
BEGIN
select * from tblinventario where IdInventario =_IdInventario; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `select_inventarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_inventarios`(

)
BEGIN
select * from tblinventario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `select_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_producto`(
in _IdProducto int(11))
BEGIN
select * from tblproducto where IdProducto =_IdProducto; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `select_Productos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `select_Productos`(
/*in IdProducto int(11), 
_Nombre varchar(100) ,
_Descripcion varchar(1000), 
_Cantidad int(11) ,
_Imagen_1 varchar(100), 
_Imagen_2 varchar(100), 
_Imagen_3 varchar(100), 
_Imagen_4 varchar(100), 
_Imagen_5 varchar(100), 
_Estado varchar(200), 
_IdSubCategoria int(11), 
_IdInventario int(11), 
_PrecioVenta float, 
_PrecioCompra float	*/
)
BEGIN
select * from tblproducto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Sp_Autenticar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_Autenticar`(in _Correo VARCHAR(80) ,
in _Pass VARCHAR(500))
BEGIN
select IdPerfil from tblusuario where  Correo=_Correo and Pass= _Pass;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Sp_NuevoUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Sp_NuevoUsuario`(in _TipoDocumento varchar(45),
_Documento	int(11),
_PrimerNombre	varchar(45),
_SegundoNombre	varchar(45),
_PrimerApellido	varchar(45),
_SegundoApellido	varchar(45),
_Direccion	varchar(100),
_Telefono	varchar(20),
_Celular	varchar(45),
_Correo	varchar(80),
_Pass	varchar(500),
_IdPerfil	int(11),
_EstadoUsuario	enum('Activo','Inactivo'),
_LastSession	datetime)
BEGIN
INSERT INTO tblusuario(TipoDocumento,Documento,PrimerNombre,SegundoNombre,PrimerApellido,SegundoApellido,Direccion,Telefono,Celular,Correo,Pass,IdPerfil,EstadoUsuario,LastSession)
 values(_TipoDocumento,_Documento,_PrimerNombre,_SegundoNombre,_PrimerApellido,_SegundoApellido,_Direccion,_Telefono,_Celular,_Correo,_Pass,_IdPerfil,_EstadoUsuario,_LastSession);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-23 22:37:01
