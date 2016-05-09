package com.springapp.service;

import com.springapp.model.Cart;
import com.springapp.model.Product;
import com.springapp.model.User;

import java.util.List;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 27.04.2016
 * Time: 17:18
 */
public interface ICartService extends IGenericService<Cart, Long> {


    List<Cart> getCart(User user, String session);

    Cart getProduct(Product product, String session, User user);


}
