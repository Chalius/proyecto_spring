
package com.empresa.proyecto.clases;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class conexion {

    public DriverManagerDataSource conexion() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();

        // Para mysql 8.x:
        dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3306/JDBC?useSSL=false&serverTimezone=UTC");

        // Para mysql 5.x;
        //dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        //dataSource.setUrl("jdbc:mysql://localhost/JDBC");
        dataSource.setUsername("gon");
        dataSource.setPassword("123");
        return dataSource;
        /*
          String driver  = "com.mysql.cj.jdbc.Driver";
        String url     = "jdbc:mysql://localhost/test?useSSL=false&serverTimezone=UTC";
         */
    }

}
