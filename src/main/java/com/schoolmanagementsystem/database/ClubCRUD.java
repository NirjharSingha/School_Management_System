package com.schoolmanagementsystem.database;

import com.schoolmanagementsystem.co_curricular.Club;
import com.schoolmanagementsystem.controllers.ClubController;
import javafx.util.Pair;

import java.sql.*;
import java.util.ArrayList;

public class ClubCRUD {

    public void addOrUpdateHelp(String ID, String query, String clubName) throws SQLException {
        //helper function to add or update a club
        ConnectDatabase db = new ConnectDatabase();
        Connection con = db.getCon();

        if (ID == null) {
            return;
        }

        PreparedStatement statement = con.prepareStatement(query);

        statement.setInt(1, Integer.parseInt(ID));
        statement.setString(2, clubName);
        statement.executeUpdate();

        try{
            statement.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void addOrUpdateClub(Club club) throws SQLException {
        ConnectDatabase db = new ConnectDatabase();
        Connection con = db.getCon();

        String query;
        PreparedStatement statement = null;

        if (ClubController.isAddClubFlag()) {
            query = "INSERT INTO club (clubName) VALUES (?)";
            statement = con.prepareStatement(query);
            statement.setString(1, club.getNameOfClub());
            statement.executeUpdate();

            query = "ALTER TABLE clubMembers ADD COLUMN " + club.getNameOfClub() + " BOOLEAN NOT NULL DEFAULT FALSE";
            statement = con.prepareStatement(query);
            statement.executeUpdate();
        }

        addOrUpdateHelp(club.getPresidentID(), "UPDATE club SET president = ? WHERE clubName = ?",
                club.getNameOfClub());
        addOrUpdateHelp(club.getVicePresidentID(), "UPDATE club SET vicePresident = ? WHERE clubName = ?",
                club.getNameOfClub());
        addOrUpdateHelp(club.getTreasurerID(), "UPDATE club SET treasurer = ? WHERE clubName = ?",
                club.getNameOfClub());
        addOrUpdateHelp(club.getGeneralSecretaryID(), "UPDATE club SET generalSecretary = ? WHERE clubName = ?",
                club.getNameOfClub());
        addOrUpdateHelp(club.getClubModeratorID(), "UPDATE club SET clubModerator = ? WHERE clubName = ?",
                club.getNameOfClub());
        addOrUpdateHelp(club.getAssistantGSID(), "UPDATE club SET assistantGS = ? WHERE clubName = ?",
                club.getNameOfClub());
        addOrUpdateHelp(club.getPublicRelationsID(), "UPDATE club SET publicRelations = ? WHERE clubName = ?",
                club.getNameOfClub());
        addOrUpdateHelp(club.getSecretaryID(), "UPDATE club SET secretary = ? WHERE clubName = ?",
                club.getNameOfClub());
        addOrUpdateHelp(club.getExecutive_1_ID(), "UPDATE club SET executive_1 = ? WHERE clubName = ?",
                club.getNameOfClub());
        addOrUpdateHelp(club.getExecutive_2_ID(), "UPDATE club SET executive_2 = ? WHERE clubName = ?",
                club.getNameOfClub());
        addOrUpdateHelp(club.getExecutive_3_ID(), "UPDATE club SET executive_3 = ? WHERE clubName = ?",
                club.getNameOfClub());

        if (club.getFundAmount() != null) {
            query = "UPDATE club SET fund = ? WHERE clubName = ?";
            statement = con.prepareStatement(query);
            statement.setString(2, club.getNameOfClub());
            statement.setString(1, club.getFundAmount());
            statement.executeUpdate();
        }

        try{
            if(statement != null) {
                statement.close();
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void deleteClub(String str) throws SQLException {

        ConnectDatabase db = new ConnectDatabase();
        Connection con = db.getCon();

        String deleteSql = "DELETE FROM club WHERE clubName = ?";
        String alterSql = "ALTER TABLE clubMembers DROP COLUMN " + str;

        PreparedStatement delStatement = con.prepareStatement(deleteSql);
        PreparedStatement alterStatement = con.prepareStatement(alterSql);
        delStatement.setString(1, str);
        delStatement.executeUpdate();
        alterStatement.executeUpdate();

        //the club id is auto-incremented when a new club is added
        //so reset the id of the clubs when one club is deleted
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT MAX(clubID) FROM club");
        rs.next();
        int maxId = rs.getInt(1);

        // Reset the id values of the remaining rows
        int resetId = 0;
        stmt.executeUpdate("SET @reset_id = " + resetId);
        stmt.executeUpdate("UPDATE club SET clubID = (@reset_id := @reset_id + 1) WHERE clubID <= " + maxId);

        // Reset the auto-increment value
        stmt.executeUpdate("ALTER TABLE club AUTO_INCREMENT = " + resetId);

        try{
            rs.close();
            delStatement.close();
            alterStatement.close();
            stmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void addFund(String fund) throws SQLException {
        ConnectDatabase db = new ConnectDatabase();
        Connection con = db.getCon();

        String selectQuery = "SELECT fund FROM club WHERE clubID = ?";
        PreparedStatement st = con.prepareStatement(selectQuery);
        st.setInt(1, ClubController.getSelectedClub() + 1);
        ResultSet r = st.executeQuery();
        int currentFund = 0;
        if (r.next()) {
            if (r.getString("fund") != null) {
                currentFund = Integer.parseInt(r.getString("fund"));
            }
        }
        currentFund += Integer.parseInt(fund);
        String query = "UPDATE club SET fund = ? WHERE clubID = ?";
        PreparedStatement statement = con.prepareStatement(query);
        statement.setString(1, String.valueOf(currentFund));
        statement.setInt(2, ClubController.getSelectedClub() + 1);
        statement.executeUpdate();

        try{
            r.close();
            st.close();
            statement.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean spendFund(String fund) throws SQLException {
        ConnectDatabase db = new ConnectDatabase();
        Connection con = db.getCon();

        String selectQuery = "SELECT fund FROM club WHERE clubID = ?";
        PreparedStatement st = con.prepareStatement(selectQuery);
        st.setInt(1, ClubController.getSelectedClub() + 1);
        ResultSet r = st.executeQuery();
        int currentFund = 0;

        //fetching the  current fund amount from database
        if (r.next()) {
            if (r.getString("fund") != null) {
                currentFund = Integer.parseInt(r.getString("fund"));
            }
        }
        int deductedFund = Integer.parseInt(fund);
        //insufficient balance to spend
        if (deductedFund > currentFund) {
            try{
                r.close();
                st.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            return false;
        }

        //amount deducted successfully
        currentFund -= Integer.parseInt(fund);
        String query = "UPDATE club SET fund = ? WHERE clubID = ?";
        PreparedStatement statement = con.prepareStatement(query);
        statement.setString(1, String.valueOf(currentFund));
        statement.setInt(2, ClubController.getSelectedClub() + 1);
        statement.executeUpdate();

        try{
            r.close();
            st.close();
            statement.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return true;
    }

    public String addMember(int id) throws SQLException {
        ConnectDatabase db = new ConnectDatabase();
        Connection con = db.getCon();

        String selectQuery = "SELECT * FROM studentInfo WHERE studentID = ?";
        PreparedStatement st = con.prepareStatement(selectQuery);
        st.setInt(1, id);
        ResultSet r = st.executeQuery();

        //checking whether the id is a valid id or not before adding that member
        if (!r.next()) {
            try{
                r.close();
                st.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            return "This id doesn't exist";
        }

        //if valid id, then check whether the member is in executive panel or not
        //executive panel members already belong to the club
        Club club = new Club();
        ArrayList<Pair<String, Integer>> ecPanel = club.ecPanel();
        for (Pair<String, Integer> stringIntegerPair : ecPanel) {
            if (stringIntegerPair.getValue() == id) {
                try{
                    r.close();
                    st.close();
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                return "This member is in ec panel";
            }
        }

        String query = "SELECT clubName FROM club WHERE clubID = ?";
        PreparedStatement statement = con.prepareStatement(query);
        statement.setInt(1, ClubController.getSelectedClub() + 1);
        ResultSet resultSet = statement.executeQuery();
        String clubName = "";
        if (resultSet.next()) {
            clubName = resultSet.getString("clubName");
        }

        selectQuery = "SELECT * FROM clubMembers WHERE studentID = ?";
        st = con.prepareStatement(selectQuery);
        st.setInt(1, id);
        r = st.executeQuery();

        if (r.next()) {
            //the id has an entry in club members table in database
            if (r.getBoolean(clubName)) {
                try{
                    r.close();
                    resultSet.close();
                    st.close();
                    statement.close();
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                //this is already a member. no need to add again
                return "This is already a member";
            } else {
                String q = "UPDATE clubMembers SET " + clubName + " = ? WHERE studentID = ?";
                PreparedStatement stat = con.prepareStatement(q);
                stat.setInt(2, id);
                stat.setBoolean(1, true);
                stat.executeUpdate();

                try{
                    r.close();
                    resultSet.close();
                    st.close();
                    statement.close();
                    stat.close();
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                //member added successfully  via update query
                return "Member added successfully";
            }
        }
        //the id has no entry in club members table in database. so it is added via insert query
        String q = "INSERT INTO clubMembers (studentID, " + clubName + " ) VALUES (?, ?)";
        PreparedStatement stat = con.prepareStatement(q);
        stat.setInt(1, id);
        stat.setBoolean(2, true);
        stat.executeUpdate();

        try{
            r.close();
            resultSet.close();
            st.close();
            statement.close();
            stat.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "Member added successfully";
    }

    public String deleteMember(int id) throws SQLException {
        ConnectDatabase db = new ConnectDatabase();
        Connection con = db.getCon();

        //checking whether the id is a valid id or not before deleting that member
        String selectQuery = "SELECT * FROM studentInfo WHERE studentID = ?";
        PreparedStatement st = con.prepareStatement(selectQuery);
        st.setInt(1, id);
        ResultSet r = st.executeQuery();

        if (!r.next()) {
            try{
                r.close();
                st.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }

            return "This id doesn't exist";
        }

        //if valid id, then check whether the member is in executive panel or not
        //there are other methods to delete a member who is in executive panel
        Club club = new Club();
        ArrayList<Pair<String, Integer>> ecPanel = club.ecPanel();
        for (Pair<String, Integer> stringIntegerPair : ecPanel) {
            if (stringIntegerPair.getValue() == id) {
                try{
                    r.close();
                    st.close();
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }

                return "This member is in ec panel";
            }
        }

        String query = "SELECT clubName FROM club WHERE clubID = ?";
        PreparedStatement statement = con.prepareStatement(query);
        statement.setInt(1, ClubController.getSelectedClub() + 1);
        ResultSet resultSet = statement.executeQuery();
        String clubName = "";
        if (resultSet.next()) {
            clubName = resultSet.getString("clubName");
        }

        selectQuery = "SELECT * FROM clubMembers WHERE studentID = ?";
        st = con.prepareStatement(selectQuery);
        st.setInt(1, id);
        r = st.executeQuery();

        if (r.next()) {
            //this id is entered in club members table in database
            if (!r.getBoolean(clubName)) {
                try{
                    r.close();
                    resultSet.close();
                    st.close();
                    statement.close();
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }

                //if the previous two case satisfied, then check whether that person is a member of this club or not
                return "This is not a member";
            } else {
                String q = "UPDATE clubMembers SET " + clubName + " = ? WHERE studentID = ?";
                PreparedStatement stat = con.prepareStatement(q);
                stat.setInt(2, id);
                stat.setBoolean(1, false);
                stat.executeUpdate();

                try{
                    r.close();
                    resultSet.close();
                    st.close();
                    statement.close();
                    stat.close();
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }

                //all cases checked. member deleted successfully
                return "Member deleted successfully";
            }
        }

        try{
            r.close();
            resultSet.close();
            st.close();
            statement.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        //this id has no entry in club members table in database
        return "This is not a member";
    }
}
