package com.springapp.model;

import javax.persistence.*;
import java.util.Date;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 27.04.2016
 * Time: 17:09
 */
@Entity
@Table(name = "CART")
public class Cart extends BaseEntity {

    @Column(name = "CREATION_DATE", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date creationDate = new Date();

    @ManyToOne(optional = true)
    @JoinColumn(name = "USER_ID", nullable = true)
    private User user;

    @ManyToOne(optional = false)
    @JoinColumn(name = "PRODUCT_ID")
    private Product product;

    @Column(name = "SESSION", length = Constants.COLUMN_NORMAL_LENGTH, nullable = false)
    private String session;

    @Column(name = "SOLD", nullable = false)
    private Boolean sold = Boolean.FALSE;

    @Column(name = "QUANTITY", length = Constants.COLUMN_SMALLER_LENGTH, nullable = false)
    private Long quantity;

    @Transient
    private Long totalPrice;


    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public String getSession() {
        return session;
    }

    public void setSession(String session) {
        this.session = session;
    }

    public Boolean getSold() {
        return sold;
    }

    public void setSold(Boolean sold) {
        this.sold = sold;
    }

    public Long getQuantity() {
        return quantity;
    }

    public void setQuantity(Long quantity) {
        this.quantity = quantity;
    }

    public Long getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(Long totalPrice) {
        this.totalPrice = totalPrice;
    }
}