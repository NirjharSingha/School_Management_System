package com.schoolmanagementsystem.controllers;

import com.schoolmanagementsystem.database.ConnectDatabase;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;

import javafx.scene.control.*;
import com.schoolmanagementsystem.others.LoginValidator;
import javafx.scene.input.KeyEvent;
import javafx.util.Pair;

import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Objects;
import java.util.ResourceBundle;

public class loginController extends Controller implements Initializable {

    private static String loggedInPerson;

    private static int loggedInID;

    public static int getLoggedInID() {
        return loggedInID;
    }

    public static void setLoggedInID(int loggedInID) {
        loginController.loggedInID = loggedInID;
    }

    @FXML
    private Button loginbutton;

    @FXML
    private TextField loginid;

    @FXML
    private Label loggable;

    @FXML
    private PasswordField loginpass;

    private int id;
    private String pass;

    @FXML
    private Hyperlink link;

    public loginController() {

    }

    public loginController(int id, String pass) {
        this.id = id;
        this.pass = pass;
        loginController.loggedInPerson = null;
        // controller = new Controller();
    }

    public int getId() {
        return id;
    }

    public String getPass() {
        return pass;
    }

    public static String getLoggedInPerson() {
        return loggedInPerson;
    }

    public static void setLoggedInPerson(String loggedInPerson) {
        loginController.loggedInPerson = loggedInPerson;
    }

    @FXML
    void loginVerify(ActionEvent event) throws IOException {

        if (validateNum(loginid.getText())) {
            loggable.setText("ID must be integer");
            return;
        }
        id = Integer.parseInt(loginid.getText());
        pass = loginpass.getText();

        loginController login = new loginController(id, pass);

        if (loginController.loggedInPerson == null) {
            //no one is logged int now
            try {
                int ans = LoginValidator.log(login);
                if (ans == 0) {
                    loggable.setText("Invalid Id. Register first");
                } else if (ans == 1) {
                    loggable.setText("Invalid password. Try again");
                } else {
                    //successful login
                    loggable.setText("");
                    handleHome(event);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            // the logged in person is logging out
            loginController.setLoggedInPerson(null);
            loginController.setLoggedInID(0);

            handleHome(event);
        }

    }


    public void handleLink(ActionEvent actionEvent) throws IOException, SQLException {
        //this link will navigate him/her to registration page if he doesn't have any account
        //only the admin has the right to add new user
        //so for verification the person needs to enter the admin password

        loggable.setText("");
        String adminPassword = "";
        String role = "";

        Pair<String, String> result = passwordInputAlert();
        if (result != null && result.getKey() != null && result.getValue() != null) {
            adminPassword = String.valueOf(result.getValue());
            role = String.valueOf(result.getKey());
        }

        ConnectDatabase db = new ConnectDatabase();
        Connection con = db.getCon();

        String query = "SELECT * FROM loginInfo WHERE userType = ?";

        PreparedStatement statement = con.prepareStatement(query);

        statement.setString(1, "Admin");

        ResultSet r = statement.executeQuery();

        String correctPass = null;

        if (r.next()) {
            correctPass = r.getString("password");
        }

        if (Objects.equals(adminPassword, correctPass)) {

            if (Objects.equals(role, "Teacher")) {
                loadPage("hyperLink", "/com/schoolmanagementsystem/fxml_Files/teacherRegistrationForm.fxml",
                        actionEvent);
            } else {
                loadPage("hyperLink", "/com/schoolmanagementsystem/fxml_Files/staffRegistrationForm.fxml", actionEvent);
            }
        } else {
            loggable.setText("Invalid password. Try again");
        }

        try{
            r.close();
            statement.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @FXML
    void inputChange(KeyEvent keyEvent) {
        //this function will make the text wrong input invisible if user gives new input
        loggable.setText("");
    }

    @Override
    public void initialize(URL location, ResourceBundle resources) {
    }
}
