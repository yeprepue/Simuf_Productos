/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Angie
 */
public class Conexion_tiendavirtual {

    private String username = "root";
    private String password = "12345678";
    private String hostname = "localhost";
    private String port = "3306";
    private String database = "tiendavirtual";
    private String classname = "com.mysql.cj.jdbc.Driver";
    private String url = "jdbc:mysql://" + hostname + ":" + port + "/" + database + "?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
    private Connection conn;

    public Conexion_tiendavirtual() {

        try {
            Class.forName(classname);
            this.conn = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException e) {
            System.err.println(e.getMessage());
        } catch (SQLException esql) {
            System.err.println(esql.getMessage());
        }
    }

    public Connection getConexion() {
        return conn;
    }

}
