package com.springapp.controller;

import com.springapp.model.BaseEntity;
import com.springapp.model.Role;
import com.springapp.model.User;

import java.util.Date;


/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 20.04.2016
 * Time: 11:30
 */
public class UserFacebook extends BaseEntity{
    /** user entity */
    private User user;

    private String email;
    private String password;
    private String confirmPassword;
    private String firstName;
    private String lastName;
    private Role role;
    private Long fbId;
    private String fbLocale;
    private String fbGender;
    private Long fbAgeRange;
    private String fbLink;
    private String fbPicture;
    private Boolean newsletter;



    // *******************************************
    // Setters & Getters
    // *******************************************


    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
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

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public Long getFbId() {
        return fbId;
    }

    public void setFbId(Long fbId) {
        this.fbId = fbId;
    }

    public String getFbLocale() {
        return fbLocale;
    }

    public void setFbLocale(String fbLocale) {
        this.fbLocale = fbLocale;
    }

    public String getFbGender() {
        return fbGender;
    }

    public void setFbGender(String fbGender) {
        this.fbGender = fbGender;
    }

    public Long getFbAgeRange() {
        return fbAgeRange;
    }

    public void setFbAgeRange(Long fbAgeRange) {
        this.fbAgeRange = fbAgeRange;
    }

    public String getFbLink() {
        return fbLink;
    }

    public void setFbLink(String fbLink) {
        this.fbLink = fbLink;
    }

    public String getFbPicture() {
        return fbPicture;
    }

    public void setFbPicture(String fbPicture) {
        this.fbPicture = fbPicture;
    }

    public Boolean getNewsletter() {
        return newsletter;
    }

    public void setNewsletter(Boolean newsletter) {
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
