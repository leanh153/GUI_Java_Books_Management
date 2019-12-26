/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entity;

/**
 *
 * @author LeAnh
 */
public class Users {
    
    private String username, displayName, password, description;

    public Users(String username, String password) {
        this.username = username;
        this.password = password;
    }

    
    
    public Users() {
    }

    public Users(String username, String displayName, String password, String description) {
        this.username = username;
        this.displayName = displayName;
        this.password = password;
        this.description = description;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    
}
