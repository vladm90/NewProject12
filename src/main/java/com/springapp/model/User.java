package com.springapp.model;

import javax.persistence.*;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 14.03.2016
 * Time: 15:03
 */

@Entity
@Table(name = "USERS")
public class User extends BaseEntity implements UserDetails {

    @Column(name = "EMAIL", length = Constants.COLUMN_NORMAL_LENGTH, nullable = false)
    private String email;

    @Column(name = "PASSWORD", length = Constants.COLUMN_NORMAL_LENGTH, nullable = false)
    private String password;

    @Column(name = "FIRST_NAME", length = Constants.COLUMN_NORMAL_LENGTH, nullable = true)
    private String firstName;

    @Column(name = "LAST_NAME", length = Constants.COLUMN_NORMAL_LENGTH, nullable = true)
    private String lastName;

    @Column(name = "PHONE", length = Constants.COLUMN_SMALLER_LENGTH, nullable = true)
    private String phone;

    @ManyToOne(optional = true)
    @JoinColumn(name = "LOCALITY", nullable = true)
    private Locality locality;

    @ManyToOne(optional = true)
    @JoinColumn(name = "ROLE", nullable = true)
    private Role role;

    @Column(name = "CREATION_DATE", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date creationDate = new Date();

    @Column(name = "FB_ID", length = Constants.COLUMN_SMALL_LENGTH, nullable = true)
    private Long fbId;

    @Column(name = "FB_LOCALE", length = Constants.COLUMN_SMALL_LENGTH, nullable = true)
    private String fbLocale;

    @Column(name = "FB_GENDER", length = Constants.COLUMN_SMALL_LENGTH, nullable = true)
    private String fbGender;

    @Column(name = "FB_AGE_RANGE", length = Constants.COLUMN_SMALL_LENGTH, nullable = true)
    private Long fbAgeRange;

    @Column(name = "FB_LINK", length = Constants.COLUMN_HIGH_LENGTH, nullable = true)
    private String fbLink;

    @Column(name = "FB_PICTURE", length = Constants.COLUMN_HIGH_LENGTH, nullable = true)
    private String fbPicture;

    @Column(name = "NEWSLETTER", nullable = true)
    private Boolean newsletter = Boolean.FALSE;



    public String getUsername() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Locality getLocality() {
        return locality;
    }

    public void setLocality(Locality locality) {
        this.locality = locality;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
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

    @Transient
    @Override
    public Collection<GrantedAuthority> getAuthorities() {
        Collection<GrantedAuthority> grantedAuthorities = new ArrayList<GrantedAuthority>(1);
        if (role != null) {
            GrantedAuthority grantedAuthority = new SimpleGrantedAuthority(role.getRole());
        grantedAuthorities.add(grantedAuthority);
    }

    return grantedAuthorities;
    }

    @Transient
    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Transient
    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Transient
    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Transient
    @Override
    public boolean isEnabled() {
        return this.getEnabled();
    }


    @Override
    public String toString() {
        return getEmail();
    }


}
