package com.schoolmanagementsystem.database;

import com.schoolmanagementsystem.users.Student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class StudentCRUD {
    public void addStudent(Student st) throws SQLException {
        ConnectDatabase db = new ConnectDatabase();
        Connection con = db.getCon();

        String insertQuery = "INSERT INTO studentInfo (studentID, name, class, roll, section, fatherName, motherName, address, dateOfBirth, gender, contactNumber) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        PreparedStatement statement = con.prepareStatement(insertQuery);

        java.sql.Date sqlDate = java.sql.Date.valueOf(st.getDateofbirth());

        // set values for the insert query
        statement.setInt(1, st.getId());
        statement.setString(2, st.getName());
        statement.setInt(3, st.getclas());
        statement.setInt(4, st.getRoll());
        statement.setString(5, st.getSection());
        statement.setString(6, st.getFather());
        statement.setString(7, st.getMother());
        statement.setString(8, st.getAdderss());
        statement.setDate(9, sqlDate);
        statement.setString(10, st.getGender());
        statement.setString(11, st.getContact());

        statement.executeUpdate();
    }
}
