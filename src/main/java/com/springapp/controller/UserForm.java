package com.springapp.controller;

import com.springapp.model.User;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 18.03.2016
 * Time: 11:22
 */
public class UserForm {
    /** user entity */
    private User user;

    @Size(min=2, max=30, message = "Your password must between 1 and 30 characters")
    private String firstName;

    private String lastName;

    private String email;

    private String username;

    private String password;



    // *******************************************
    // Setters & Getters
    // *******************************************

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User [firstName=" + getFirstName() + ", lastName=" + getLastName() + ", userName=" + getUsername() + "]";
    }

    public Boolean isEmpty(){
        if( (this.firstName == null || "".equals(this.firstName) ) && ( this.lastName == null || "".equals(this.lastName) ) &&
                ( this.email == null || "".equals(this.email) ) &&  ( this.username == null || "".equals(this.username) ) &&
                ( this.password == null || "".equals(this.password) )) return true;
        return false;

    }
}
