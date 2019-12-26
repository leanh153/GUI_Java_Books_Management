/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.dal.PublisherDAO;
import com.entity.Publisher;
import javax.swing.JDialog;
import javax.swing.JOptionPane;

/**
 *
 * @author leanh
 */
public class PublisherController {

    private PublisherDAO publisherDAO;

    public PublisherController() {
        publisherDAO = new PublisherDAO();
    }

    /**
     *
     * @param root
     * @param p
     * @throws Exception
     */
    public String addPublisher(JDialog root, Publisher p) throws Exception {
        if (!publisherDAO.isValidPublisher(p)) {
            return publisherDAO.addPublisher(p);
        } else {
            JOptionPane.showConfirmDialog(root, "Registered name already in use");
            return null;
        }

    }

    public void updatePublisher(Publisher p) throws Exception {
        publisherDAO.updatePublisher(p);
    }
}
