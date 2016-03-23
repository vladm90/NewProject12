package com.springapp.model;

import javax.persistence.*;
import java.util.List;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 15.03.2016
 * Time: 16:29
 */
@Entity
@Table(name = "ROLES")
public class Role {


    @Id
    @GeneratedValue
    @Column(name = "ID")
    private Long id;

    @Column(name = "ROLE", length = Constants.COLUMN_NORMAL_LENGTH, nullable = false)
    private String role;

    @OneToMany(mappedBy = "role")
    private List<User> users;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }
}
