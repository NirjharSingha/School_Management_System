package com.schoolmanagementsystem.controllers;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;

import java.io.IOException;
import java.net.URL;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class ChooseProfileController extends Controller implements Initializable {

    @FXML
    private Button otherProfile;

    @FXML
    private Button self;

    //Controller.requiredID store the id of the user whose profile will be displayed
    //AllMembersController.AllUserFlag will be used to load the page

    public void handleSelf(ActionEvent actionEvent) throws IOException, SQLException {
        Controller.requiredID = loginController.getLoggedInID();
        Controller.allUserFlag = false;
        StaffProfileController cont = new StaffProfileController();
        cont.handleStaffProfile(actionEvent, loginController.getLoggedInID());
    }

    public void handleOther(ActionEvent actionEvent) throws SQLException, IOException {
        Controller.allUserFlag = true;
        AllMembersController.setAllUserFlag(true);
        AllMembersController controller = new AllMembersController();
        controller.handleAllMemberPage(actionEvent);
    }

    @Override
    public void initialize(URL location, ResourceBundle resources) {

    }
}
