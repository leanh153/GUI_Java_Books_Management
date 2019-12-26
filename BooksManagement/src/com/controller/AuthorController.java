/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.dal.AuthorDAO;
import com.entity.Author;
import javax.swing.JDialog;
import javax.swing.JOptionPane;

/**
 *
 * @author leanh
 */
public class AuthorController {

    private AuthorDAO authorDAO;

    public AuthorController() {
        authorDAO = new AuthorDAO();
    }

    public boolean addAuthor(JDialog root, Author author) throws Exception {
        if (!authorDAO.isValidAuthor(author)) {
            authorDAO.addAuthor(author);
            return true;
        } else {
            JOptionPane.showConfirmDialog(root, "Registered phone already in use");
            return false;
        }
    }

    public void updateAuthor(Author author) throws Exception {
        authorDAO.updateAuthor(author);
    }

}
