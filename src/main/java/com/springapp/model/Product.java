package com.springapp.model;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
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
@Table(name = "PRODUCTS")
public class Product extends BaseEntity {

    @Column(name = "NAME", length = Constants.COLUMN_NORMAL_LENGTH, nullable = false)
    private String name;

    @Column(name = "DESCRIPTION", length = Constants.COLUMN_NORMAL_LENGTH, nullable = false)
    private String description;

    @Column(name = "PRICE", length = Constants.COLUMN_SMALLER_LENGTH, nullable = false)
    private Long price;

    @Column(name = "PICTURE", length = Constants.COLUMN_NORMAL_LENGTH, nullable = false)
    private String picture;

    @Column(name = "STOCK",nullable = false)
    private Boolean stock = Boolean.TRUE;

    @Column(name = "CATEGORY", length = Constants.COLUMN_SMALLER_LENGTH, nullable = false)
    private ProductCategoryEnum productCategoryEnum;

    @Column(name = "WEIGHT", length = Constants.COLUMN_SMALLER_LENGTH, nullable = false)
    private String weight;

    @Column(name = "CREATION_DATE", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date creationDate = new Date();


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public Boolean getStock() {
        return stock;
    }

    public void setStock(Boolean stock) {
        this.stock = stock;
    }

    public ProductCategoryEnum getProductCategoryEnum() {
        return productCategoryEnum;
    }

    public void setProductCategoryEnum(ProductCategoryEnum productCategoryEnum) {
        this.productCategoryEnum = productCategoryEnum;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

   /* @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Product product = (Product) o;

        if (!name.equals(product.name)) return false;
        if (!description.equals(product.description)) return false;
        if (!price.equals(product.price)) return false;
        if (!picture.equals(product.picture)) return false;
        return productCategoryEnum == product.productCategoryEnum;

    }

    @Override
    public int hashCode() {
        int result = name.hashCode();
        result = 31 * result + description.hashCode();
        result = 31 * result + price.hashCode();
        result = 31 * result + picture.hashCode();
        result = 31 * result + productCategoryEnum.hashCode();
        return result;
    }*/
}