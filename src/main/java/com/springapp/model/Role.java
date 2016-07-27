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
public class Role extends BaseEntity {

    @Column(name = "ROLE", length = Constants.COLUMN_NORMAL_LENGTH, nullable = false)
    private String role;


    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

}
