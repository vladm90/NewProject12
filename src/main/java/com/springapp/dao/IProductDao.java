package com.springapp.dao;

import com.springapp.model.Product;
import com.springapp.model.User;

import java.util.List;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 14.03.2016
 * Time: 16:29
 */

public interface IProductDao extends IGenericDao<Product, Long>{

    List<Product> getProducts();




}
