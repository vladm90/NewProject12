package com.springapp.service;

import com.springapp.model.Product;
import com.springapp.model.User;

import java.util.List;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 14.03.2016
 * Time: 16:28
 */
public interface IProductService extends IGenericService<Product, Long> {


    List<Product> getProducts();






}
