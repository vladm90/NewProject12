package com.springapp.controller;

import com.springapp.model.BaseEntity;
import com.springapp.model.User;


/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 18.03.2016
 * Time: 11:22
 */
public class UserForm extends BaseEntity{
    /** user entity */
    private User user;

    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String confirmPassword;
    private String role;
    private String phone;
    private String address;
    private String county;
    private String locality;
    private boolean newsletter;



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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCounty() {
        return county;
    }

    public void setCounty(String county) {
        this.county = county;
    }

    public String getLocality() {
        return locality;
    }

    public void setLocality(String locality) {
        this.locality = locality;
    }

    public boolean isNewsletter() {
        return newsletter;
    }

    public void setNewsletter(boolean newsletter) {
        this.newsletter = newsletter;
    }

    @Override
    public String toString() {
        return "User [firstName=" + getFirstName() + ", lastName=" + getLastName() + ", email=" + getEmail() + "]";
    }

    public Boolean isEmpty(){
        if( (this.firstName == null || "".equals(this.firstName) ) && ( this.lastName == null || "".equals(this.lastName) ) &&
                ( this.email == null || "".equals(this.email) ) && ( this.password == null || "".equals(this.password) )) return true;
        return false;

    }
}
