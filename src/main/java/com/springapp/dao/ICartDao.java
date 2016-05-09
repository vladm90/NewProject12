package com.springapp.dao;

import com.springapp.model.Cart;
import com.springapp.model.Product;
import com.springapp.model.User;

import java.util.List;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 14.03.2016
 * Time: 16:29
 */

public interface ICartDao extends IGenericDao<Cart, Long>{

    List<Cart> getCart(User user, String session);

    Cart getProduct(Product product, String session, User user);

}
