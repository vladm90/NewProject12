package com.springapp.model;

import javax.persistence.*;
import java.util.Date;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 14.03.2016
 * Time: 15:03
 */

@Entity
@Table(name = "LOCALITY")
public class Locality extends BaseEntity {

    @Column(name = "COUNTY", length = Constants.COLUMN_VERYSMALL_LENGTH, nullable = false)
    private String county;

    @Column(name = "LOCALITY", length = Constants.COLUMN_VERYSMALL_LENGTH, nullable = false)
    private String locality;

    @Column(name = "AGENCY", length = Constants.COLUMN_VERYSMALL_LENGTH, nullable = false)
    private String agency;

    @Column(name = "KM", length = Constants.COLUMN_SMALLER_LENGTH, nullable = false)
    private Long km;

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

    public String getAgency() {
        return agency;
    }

    public void setAgency(String agency) {
        this.agency = agency;
    }

    public Long getKm() {
        return km;
    }

    public void setKm(Long km) {
        this.km = km;
    }
}