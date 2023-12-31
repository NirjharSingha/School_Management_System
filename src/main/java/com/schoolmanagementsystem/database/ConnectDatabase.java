package com.schoolmanagementsystem.database;

import java.sql.*;

public class ConnectDatabase {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/SchoolManagementSystem";
    private static final String DB_USER = "School_DB_User";
    private static final String DB_PASSWORD = "password";

    private final Connection con;

    public ConnectDatabase() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public Connection getCon() {
        return con;
    }
}
