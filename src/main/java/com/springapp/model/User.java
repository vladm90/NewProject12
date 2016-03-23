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
public class User implements UserDetails {

    @Id
    @GeneratedValue
    @Column(name = "ID")
    private Long id;

    @Column(name = "ENABLED",nullable = false)
    private Boolean enabled = Boolean.TRUE;

    @Column(name = "USERNAME", length = Constants.COLUMN_NORMAL_LENGTH, nullable = false)
    private String username;

    @Column(name = "PASSWORD", length = Constants.COLUMN_NORMAL_LENGTH, nullable = false)
    private String password;

    @Column(name = "FIRST_NAME", length = Constants.COLUMN_NORMAL_LENGTH, nullable = false)
    private String firstName;

    @Column(name = "LAST_NAME", length = Constants.COLUMN_NORMAL_LENGTH, nullable = false)
    private String lastName;

    @Column(name = "EMAIL", length = Constants.COLUMN_NORMAL_LENGTH, nullable = false)
    private String email;

    @ManyToOne(optional = false)
    @JoinColumn(name = "ROLE")
   // @Column(name = "ROLE")
    private Role role;
   // private Role role;

    @Column(name = "CREATION_DATE", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date creationDate = new Date();




    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Boolean getEnabled() {
        return enabled;
    }

    public void setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
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
        return getUsername();
    }


}
