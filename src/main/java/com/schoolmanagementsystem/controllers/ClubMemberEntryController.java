package com.schoolmanagementsystem.controllers;

import com.schoolmanagementsystem.co_curricular.Club;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.MenuButton;
import javafx.scene.control.TextField;
import javafx.scene.input.KeyEvent;

import java.io.IOException;
import java.net.URL;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class ClubMemberEntryController extends Controller implements Initializable {

    private static boolean addFund;

    private static boolean spendFund;

    @FXML
    private Button apply;

    @FXML
    private Button cross;

    @FXML
    private TextField inputField;

    @FXML
    private Label invalid;

    @FXML
    private Label label;

    @FXML
    private MenuButton selectMenu;

    @FXML
    void handleApply(ActionEvent event) throws SQLException {
        if (inputField.getText().isEmpty()) {
            //empty input
            invalid.setText("Empty input");
        } else {

            Club club = new Club();

            if (ClubController.isFundFlag()) {
                //handling fund
                if (validateNum(inputField.getText())) {
                    //invalid input
                    invalid.setText("Fund must be a number");
                } else {
                    //empty input
                    if (!ClubMemberEntryController.addFund && !ClubMemberEntryController.spendFund) {
                        invalid.setText("Select add or spend");
                    } else {
                        if (ClubMemberEntryController.addFund) {
                            //fund adding
                            club.addFund(inputField.getText());
                            invalid.setText("Fund added successfully");
                        } else {
                            //fund spending
                            if (club.spendFund(inputField.getText())) {
                                invalid.setText("Amount deducted successfully");
                            } else {
                                invalid.setText("Insufficient fund");
                            }
                        }
                    }
                }
            } else {
                //handling club member entry or delete
                if (validateNum(inputField.getText())) {
                    //invalid id
                    invalid.setText("ID must be a number");
                } else {
                    if (ClubController.isAddMemberFlag()) {
                        //adding new member
                        invalid.setText(club.addMember(Integer.parseInt(inputField.getText())));
                    } else if (ClubController.isDeleteMemberFlag()) {
                        //deleting an existing member
                        invalid.setText(club.removeMember(Integer.parseInt(inputField.getText())));
                    }
                }
            }
        }
    }

    @FXML
    void handleCross(ActionEvent event) throws SQLException, IOException {
        //the cross button will navigate to the previous page
        ClubController controller = new ClubController();
        controller.handleClubPage(event);
    }

    @FXML
    void handleInvalid(KeyEvent event) {
        invalid.setText("");
    }

    @FXML
    void handleAddFund(ActionEvent event) {
        ClubMemberEntryController.addFund = true;
        ClubMemberEntryController.spendFund = false;
        selectMenu.setText("Add Fund");
    }

    @FXML
    void handleSpendFund(ActionEvent event) {
        ClubMemberEntryController.addFund = false;
        ClubMemberEntryController.spendFund = true;
        selectMenu.setText("Spend Fund");
    }

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        if (!ClubController.isFundFlag()) {
            selectMenu.setVisible(false);
        } else {
            label.setText("Enter fund amount");
        }
        ClubMemberEntryController.addFund = false;
        ClubMemberEntryController.spendFund = false;
    }
}
