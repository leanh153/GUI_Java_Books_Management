/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dal;

import com.context.DBContext;
import com.entity.Author;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

/**
 *
 * @author LeAnh
 */
public class AuthorDAO {

    //return the list of all authors
    public List<Author> selectAll() throws Exception {
        String query = " select * from authors ";
        Connection con = new DBContext().getConnection();
        PreparedStatement ps = con.prepareStatement(query);

        ResultSet rs = ps.executeQuery();
        List<Author> authors = new ArrayList<>();
        while (rs.next()) {
            String id = rs.getString("au_id");
            String name = rs.getString("au_name");
            String address = rs.getString("au_address");
            authors.add(new Author(id, name, address));
        }
        rs.close();
        con.close();
        return authors;
    }

    //return information of an Author by a given author id, 
    //return null if a given author id does not exists
    public Author getAuthorByID(String aid) throws Exception {
        List<Author> authors = selectAll();

        Optional<Author> match = authors.stream()
            .filter(a -> a.getId().equalsIgnoreCase(aid))
            .findFirst();
        return match.isPresent() ? match.get() : null;
    }

    //return a list of Authors who wrote the given book id
    public List<Author> selectAuthorsByBookID(String bookID) throws Exception {
        String query = " select a.* from authors a, TitleAuthor ta where a.au_id"
            + "= ta.au_id and ta.title_id = ?";
        Connection con = new DBContext().getConnection();
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, bookID);
        ResultSet rs = ps.executeQuery();
        List<Author> authors = new ArrayList<>();
        while (rs.next()) {
            String id = rs.getString("au_id");
            String name = rs.getString("au_name");
            String address = rs.getString("au_address");
            authors.add(new Author(id, name, address));
        }
        rs.close();
        con.close();
        return authors;
    }

    public void addAuthor(Author a) throws SQLException, Exception {
        String query = " insert into authors values(?,?,?)";
        Connection con = new DBContext().getConnection();
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, a.getId());
        ps.setString(2, a.getName());
        ps.setString(3, a.getAddress());
        ps.executeUpdate();
        con.close();
    }

    public void updateAuthor(Author a) throws SQLException, Exception {
         String query = " update authors set au_name = ?, au_address = ? where"
             + " au_id = '"+ a.getId() +"'";
        Connection con = new DBContext().getConnection();
        PreparedStatement ps = con.prepareStatement(query);
        ps.setString(1, a.getName());
        ps.setString(2, a.getAddress());
        ps.executeUpdate();
        con.close();
    }

    public boolean isValidAuthor(Author author) throws Exception {
       List<Author> authors = selectAll();
        Optional<Author> match = authors.stream()
            .filter(a -> a.getId().equals(author.getId()))
            .findFirst();
        return match.isPresent();
    }

}
