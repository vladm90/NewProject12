package com.springapp.model;
import javax.persistence.*;
import java.io.Serializable;
/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 08.04.2016
 * Time: 16:45
 */

@MappedSuperclass
public class BaseEntity implements Serializable {

    /** serial version */
    private static final long serialVersionUID = 6811684856882333161L;

    @Id
    @GeneratedValue
    @Column(name = "ID")
    private Long id;

    /*@Version
    @Column(name = "VERSION_NUMBER",nullable = false)
    private Integer version;*/

    @Column(name = "ENABLED",nullable = false)
    private Boolean enabled = Boolean.TRUE;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

/*    public Integer getVersion() {
        return version;
    }

    public void setVersion(Integer version) {
        this.version = version;
    }*/

    public Boolean getEnabled() {
        return enabled;
    }

    public void setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }

}
