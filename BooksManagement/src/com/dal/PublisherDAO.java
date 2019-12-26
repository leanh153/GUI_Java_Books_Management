/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dal;

import com.context.DBContext;
import com.entity.Publisher;
import com.entity.Users;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.Random;

public class PublisherDAO {

    //return the list of all publishers
    public List<Publisher> selectAll() throws Exception {
        String select = " select * from publishers ";
        Connection con = new DBContext().getConnection();
        PreparedStatement ps = con.prepareStatement(select);
        ResultSet rs = ps.executeQuery();
        List<Publisher> publishers = new ArrayList<>();
        while (rs.next()) {
            String id = rs.getString("pub_id");
            String name = rs.getString("pub_name");
            String address = rs.getString("pub_address");
            publishers.add(new Publisher(id, name, address));
        }
        rs.close();
        con.close();
        return publishers;
    }

    //return information of a Publisher by publisher id, 
    //return null if a given publisher id does not exists
    public Publisher getPublisherByID(String pid) throws Exception {
        List<Publisher> publishers = selectAll();
        Optional<Publisher> match = publishers.stream()
            .filter(p -> p.getId().equalsIgnoreCase(pid))
            .findFirst();
        return match.isPresent() ? match.get() : null;
    }

    public void updatePublisher(Publisher p) throws Exception {
        String query = " update publishers set pub_name = ?, pub_address = ? where"
            + " pub_id = '" + p.getId() + "'";
        Connection con = new DBContext().getConnection();
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, p.getName());
        ps.setString(2, p.getAddress());
        ps.executeUpdate();
        con.close();
    }

    public String addPublisher(Publisher p) throws Exception {
        String query = " insert into publishers values(?,?,?)";
        Connection con = new DBContext().getConnection();
        PreparedStatement ps = con.prepareStatement(query);
        String generateID = generatePublisherID();
        ps.setString(1, generateID);
        ps.setString(2, p.getName());
        ps.setString(3, p.getAddress());
        ps.executeUpdate();
        con.close();
        return generateID;
    }

    public boolean isValidPublisher(Publisher p) throws Exception {
        List<Publisher> publishers = selectAll();
        Optional<Publisher> match = publishers.stream()
            .filter(pu -> pu.getName().equalsIgnoreCase(p.getName()))
            .findFirst();
        return match.isPresent();
    }

    private String generatePublisherID() throws Exception {
        List<Publisher> list = selectAll();
        String id = "";
        do {            
            id = String.valueOf(new Random().nextInt(9999));
        } while (isExistID(list, id));
        return id;
    }

    private boolean isExistID(List<Publisher> list, String id) {
        Optional<Publisher> match = list.stream()
            .filter(p -> p.getId().equalsIgnoreCase(id))
            .findFirst();
        return match.isPresent();
    }

}
