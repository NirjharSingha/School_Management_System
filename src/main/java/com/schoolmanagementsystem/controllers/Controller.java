package com.schoolmanagementsystem.controllers;

import javafx.event.ActionEvent;
import javafx.event.Event;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.geometry.Insets;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.VBox;
import javafx.stage.FileChooser;
import javafx.stage.Stage;
import javafx.util.Pair;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.Objects;
import java.util.Optional;

public abstract class Controller {

    @FXML
    protected Button home;

    @FXML
    protected Button login;

    @FXML
    protected Button notice;

    @FXML
    protected Button profile;

    @FXML
    protected MenuButton reg;

    @FXML
    private Button result;

    @FXML
    protected Button routine;

    @FXML
    protected VBox vbox;

    @FXML
    protected ImageView icon;

    @FXML
    protected Button club;

    protected Stage stage;

    protected static boolean isUpdate;

    protected static int requiredID;

    protected static String requiredType;

    protected static boolean routineFlag;

    protected static boolean resultFlag;

    protected static boolean allUserFlag;

    public static int getRequiredID() {
        return requiredID;
    }

    @FXML
    void teacherReg(ActionEvent event) throws IOException {
        Controller.isUpdate = false;
        if (!Objects.equals(loginController.getLoggedInPerson(), "Admin")) {
            handleAlert("Registration Alert", "Only Admin has the right to add new teacher");
        } else {
            loadPage("menuButton", "/com/schoolmanagementsystem/fxml_Files/teacherRegistrationForm.fxml", event);
        }
    }

    @FXML
    void staffReg(ActionEvent event) throws IOException {
        Controller.isUpdate = false;
        if (!Objects.equals(loginController.getLoggedInPerson(), "Admin")) {
            handleAlert("Registration Alert", "Only Admin has the right to add new staff");
        } else {
            loadPage("menuButton", "/com/schoolmanagementsystem/fxml_Files/staffRegistrationForm.fxml", event);
        }
    }

    @FXML
    void studReg(ActionEvent event) throws IOException {
        Controller.isUpdate = false;
        if (!Objects.equals(loginController.getLoggedInPerson(), "Admin")) {
            handleAlert("Registration Alert", "Only Admin has the right to add new student");
        } else {
            loadPage("menuButton", "/com/schoolmanagementsystem/fxml_Files/studentRegistrationForm.fxml", event);
        }
    }

    @FXML
    void handleHome(ActionEvent event) throws IOException {
        loadPage("button", "/com/schoolmanagementsystem/fxml_Files/home.fxml", event);
    }

    @FXML
    void handleLogin(ActionEvent event) throws IOException {
        if (loginController.getLoggedInPerson() == null) {
            loadPage("button", "/com/schoolmanagementsystem/fxml_Files/login.fxml", event);
        } else {
            String m1 = "You are about to log out.";
            String m2 = "Your current session will be over. \nFor further use you need to log in again.";
            if (handleAlert(m1, m2)) {
                //erasing all the use history when one user is logging out
                loginController.setLoggedInPerson(null);
                loginController.setLoggedInID(0);
                Controller.requiredID = 0;
                RoutineController.setSelectedClass(0);
                RoutineController.setSelectedSection(null);
                AllMembersController.setCurrentIndex(0);
                AllMembersController.setCurrentList(null);
                ClubController.setSelectedClub(0);
                ClassResultController.setSelectedClass(0);
                ClassResultController.setSelectedSection(null);
                ClassResultController.setCurrentIndex(0);
                ClubMemberController.setCurrentIndex(0);
                NoticeController.setCurrentNotice(NoticeController.getLastNotice());
                AllMembersController.setSelectedClass(0);
                AllMembersController.setSelectedSection(null);
                handleHome(event);
            }
        }

    }

    @FXML
    void handleNotice(Event event) throws IOException, SQLException {
        if (loginController.getLoggedInPerson() == null) {
            handleAlert("Alert", "Log in first to view notice");
        } else {
            NoticeController cont = new NoticeController();
            cont.handleNoticePage(event);
        }
    }

    @FXML
    void handleClub(Event event) throws SQLException, IOException {
        if (loginController.getLoggedInPerson() == null) {
            handleAlert("Alert", "Log in first to view club.");
        } else {
            ClubController cont = new ClubController();
            cont.handleClubPage(event);
        }
    }

    @FXML
    void handleResult(Event event) throws SQLException, IOException {
        if (loginController.getLoggedInPerson() == null) {
            handleAlert("Alert", "Log in first to view result.");
        } else {
            Controller.resultFlag = true;
            ClassResultController cont = new ClassResultController();
            cont.handleClassResultPage(event);
        }
    }

    @FXML
    void handleRoutine(Event event) throws SQLException, IOException {
        if (loginController.getLoggedInPerson() == null) {
            handleAlert("Alert", "Log in first to view routine.");
        } else {
            Controller.routineFlag = true;
            RoutineController cont = new RoutineController();
            cont.handleRoutinePage(event);
        }
    }

    @FXML
    void handleProfile(ActionEvent actionEvent) throws IOException, SQLException {
        //checking whether the user is a teacher, staff or admin himself
        if (loginController.getLoggedInPerson() == null) {
            handleAlert("Alert", "Log in first to view your profile.");
        } else if (loginController.getLoggedInPerson().equals("Teacher")) {
            Controller.allUserFlag = false;
            TeacherProfileController cont = new TeacherProfileController();
            cont.handleTeacherProfile(actionEvent, loginController.getLoggedInID());
        } else if (loginController.getLoggedInPerson().equals("Staff")) {
            Controller.allUserFlag = false;
            StaffProfileController cont = new StaffProfileController();
            cont.handleStaffProfile(actionEvent, loginController.getLoggedInID());
        } else if (loginController.getLoggedInPerson().equals("Admin")) {
            loadPage("button", "/com/schoolmanagementsystem/fxml_Files/chooseProfile.fxml", actionEvent);
        }
    }

    public FXMLLoader loadPage(String buttonType, String str, Event event) throws IOException {
        //helper function to load different pages
        FXMLLoader fxmlLoader = new FXMLLoader(getClass().getResource(str));
        Parent root = fxmlLoader.load();

        //the buttonType is used here to load the page
        if (Objects.equals(buttonType, "menuButton")) {
            stage = (Stage) ((MenuItem) event.getSource()).getParentPopup().getOwnerWindow();
        } else if (Objects.equals(buttonType, "button")) {
            stage = (Stage) ((Node) event.getSource()).getScene().getWindow();
        } else if (Objects.equals(buttonType, "hyperLink")) {
            stage = (Stage) ((Hyperlink) event.getSource()).getScene().getWindow();
        } else if (Objects.equals(buttonType, "label")) {
            stage = (Stage) ((Node) event.getSource()).getScene().getWindow();
        }

        Controller controller = fxmlLoader.getController();

        if (Objects.equals(loginController.getLoggedInPerson(), "Teacher")) {
            //the features that are not accessible for the teacher will be invisible
            controller.reg.setVisible(false);
            controller.reg.setManaged(false);

            controller.login.setText("Log out");
            VBox.setMargin(controller.home, new Insets(10, 25, 10, 61));
            VBox.setMargin(controller.profile, new Insets(10, 25, 10, 61));
            VBox.setMargin(controller.login, new Insets(10, 25, 10, 61));
            VBox.setMargin(controller.notice, new Insets(10, 25, 10, 61));
            VBox.setMargin(controller.club, new Insets(10, 25, 10, 61));
            VBox.setMargin(controller.result, new Insets(10, 25, 10, 61));
            VBox.setMargin(controller.routine, new Insets(10, 25, 10, 61));
            VBox.setMargin(controller.icon, new Insets(29, 25, 15, 71));
        }

        if (Objects.equals(loginController.getLoggedInPerson(), "Staff")) {
            //the features that are not accessible for the staff will be invisible
            controller.reg.setVisible(false);
            controller.reg.setManaged(false);

            controller.result.setVisible(false);
            controller.result.setManaged(false);

            controller.routine.setVisible(false);
            controller.routine.setManaged(false);

            controller.login.setText("Log out");
            VBox.setMargin(controller.home, new Insets(16, 25, 16, 61));
            VBox.setMargin(controller.profile, new Insets(16, 25, 16, 61));
            VBox.setMargin(controller.login, new Insets(16, 25, 16, 61));
            VBox.setMargin(controller.notice, new Insets(16, 25, 16, 61));
            VBox.setMargin(controller.club, new Insets(16, 25, 16, 61));
            VBox.setMargin(controller.icon, new Insets(55, 25, 22, 71));
        }

        if (Objects.equals(loginController.getLoggedInPerson(), "Admin")) {
            controller.login.setText("Log out");
        }

        Scene scene = new Scene(root);
        stage.setScene(scene);
        stage.setResizable(false);
        stage.show();

        return fxmlLoader;
    }

    public boolean validateNum(String str) {
        //this function will validate whether a number is valid or not
        for (int i = 0; i < str.length(); i++) {
            if (str.charAt(i) >= '0' && str.charAt(i) <= '9') {
                continue;
            } else {
                return true;
            }
        }
        return false;
    }

    public boolean validateDate(DatePicker str) {
        //this function will validate whether a date is valid or not
        LocalDate selectedDate = str.getValue();

        try {
            DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
            LocalDate parsedDate = LocalDate.parse(dateFormatter.format(selectedDate), dateFormatter);
            if (!parsedDate.equals(selectedDate)) {
                return true;
            }
        } catch (DateTimeParseException e) {
            return true;
        }

        return false;
    }

    public boolean handleAlert(String head, String content) {
        //this is a helper function that generates alert message when necessary
        Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
        alert.setTitle("Alert");
        alert.setHeaderText(head);
        alert.setContentText(content);

        if (alert.showAndWait().get() == ButtonType.OK) {
            return true;
        }

        return false;
    }

    public Pair<String, String> passwordInputAlert() {
        //this function will make an alert message where will be a choice box and password input field
        //in log in page if one clicks on the hyperlink to navigate to the register page directly, then this alert message will be visible.
        //the user needs to select his role and give admin password for security

        Dialog<Pair<String, String>> dialog = new Dialog<>();
        dialog.setTitle("Verification");
        dialog.setHeaderText("Select your role and \nenter password of admin for security:");

        ButtonType loginButtonType = new ButtonType("Ok", ButtonBar.ButtonData.OK_DONE);
        dialog.getDialogPane().getButtonTypes().addAll(loginButtonType, ButtonType.CANCEL);

        ChoiceBox<String> roleChoice = new ChoiceBox<>();
        roleChoice.getItems().addAll("Teacher", "Staff");
        roleChoice.setValue("Teacher");

        PasswordField passwordField = new PasswordField();
        passwordField.setPromptText("Password of the admin");

        VBox vBox = new VBox(10);
        vBox.getChildren().addAll(roleChoice, passwordField);

        dialog.getDialogPane().setContent(vBox);

        dialog.setResultConverter(dialogButton -> {
            if (dialogButton == loginButtonType) {
                return new Pair<>(roleChoice.getValue(), passwordField.getText());
            }
            return null;
        });

        // Wait for the user to close the dialog
        Optional<Pair<String, String>> result = dialog.showAndWait();

        return result.orElse(null);
    }

    public String uploadImage(Stage stage, ImageView Img, Button imgButton) {
        //helper function to upload image
        String imagePath = null;
        FileChooser fileChooser = new FileChooser();

        fileChooser.setInitialDirectory(new File(System.getProperty("user.home")));

        fileChooser.getExtensionFilters().addAll(
                new FileChooser.ExtensionFilter("Image Files", "*.png", "*.jpg", "*.jpeg", "*.gif"));

        File selectedFile = fileChooser.showOpenDialog(stage);

        if (selectedFile != null) {
            imagePath = selectedFile.getPath();
            Image image = new Image(selectedFile.toURI().toString());
            Img.setImage(image);
            Img.setFitHeight(135); // Set the height to 135 pixels
            Img.setFitWidth(170); // Set the width to 170 pixels
            imgButton.setVisible(false);
        }

        return imagePath;
    }

    public Image createImageFromByteArray(byte[] data) throws IOException {
        if (data != null) {
            try (InputStream is = new ByteArrayInputStream(data)) {
                return new Image(is);
            }
        } else {
            return null;
        }
    }
}
