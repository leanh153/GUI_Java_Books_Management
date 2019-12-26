/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.dal.UsersDAO;
import com.entity.Users;
import javax.swing.JDialog;
import javax.swing.JOptionPane;

/**
 *
 * @author leanh
 */
public class UsersController {

    private UsersDAO usersDAO;

    public UsersController() {
        usersDAO = new UsersDAO();
    }
     
    public void addUser(JDialog root,Users user) throws Exception{
        if (!usersDAO.isValidUser(user)) {
        usersDAO.addUser(user);
        }else{
            JOptionPane.showConfirmDialog(root, "Registered name already in use");
        }
    }
    
    public void updateUser(Users user) throws Exception{
        usersDAO.updateUser(user);
    }
}
