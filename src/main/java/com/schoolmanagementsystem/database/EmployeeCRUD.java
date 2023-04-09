package com.schoolmanagementsystem.database;

import com.schoolmanagementsystem.users.Employee;
import com.schoolmanagementsystem.users.Student;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;

public class EmployeeCRUD {
    public void addEmployee(Employee emp) throws SQLException {
        ConnectDatabase db = new ConnectDatabase();
        Connection con = db.getCon();

        String insertQuery = "INSERT INTO employeeInfo (employeeID, name, profession, fatherName, motherName, maritalStatus, address, dateOfBirth, joiningDate, gender, contactNumber) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        PreparedStatement statement = con.prepareStatement(insertQuery);

        java.sql.Date sqlDate = java.sql.Date.valueOf(emp.getDateofbirth());

        LocalDate localDate = LocalDate.now();
        Date joinDate = Date.valueOf(localDate);

        // set values for the insert query
        statement.setInt(1, emp.getId());
        statement.setString(2, emp.getName());
        statement.setString(3, emp.getDesignation());
        statement.setString(4, emp.getFather());
        statement.setString(5, emp.getMother());
        statement.setString(6, emp.getMaritalstatus());
        statement.setString(7, emp.getAdderss());
        statement.setDate(8, sqlDate);
        statement.setDate(9, joinDate);
        statement.setString(10, emp.getGender());
        statement.setString(11, emp.getContact());

        statement.executeUpdate();
    }
}
