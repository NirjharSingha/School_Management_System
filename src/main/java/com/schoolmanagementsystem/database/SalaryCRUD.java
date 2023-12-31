package com.schoolmanagementsystem.database;

import com.schoolmanagementsystem.others.Salary;

import java.sql.*;

public class SalaryCRUD {
    public void addOrUpdateSalary(Salary salary, int id) throws SQLException {
        ConnectDatabase db = new ConnectDatabase();
        Connection con = db.getCon();

        String selectQuery = "SELECT * FROM employeeSalary WHERE employeeID = ?";
        PreparedStatement statement = con.prepareStatement(selectQuery);

        statement.setInt(1, id);

        ResultSet r = statement.executeQuery();

        String query;

        if (r.next()) {
            //update query if the employee data is already present in the salary table in database
            query = "UPDATE employeeSalary SET baseSalary = ?, houseRent = ?, medical = ?, noOfChild = ?, receivedDate = ? WHERE employeeID = ?";
        } else {
            //insert query if there is no entry of the employee in salary table
            query = "INSERT INTO employeeSalary (baseSalary, houseRent, medical, noOfChild, receivedDate, employeeID) VALUES (?, ?, ?, ?, ?, ?)";
        }

        PreparedStatement state = con.prepareStatement(query);
        state.setInt(1, salary.getBaseSalary());
        state.setInt(2, salary.getRentPercentage());
        state.setInt(3, salary.getMedicalAllowance());
        state.setInt(4, salary.getNoOfChildren());
        state.setDate(5, Date.valueOf(salary.getDate()));
        state.setInt(6, id);

        state.executeUpdate();

        try{
            r.close();
            statement.close();
            state.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
