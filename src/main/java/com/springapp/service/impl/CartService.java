package com.springapp.service.impl;

import com.springapp.dao.ICartDao;
import com.springapp.dao.IProductDao;
import com.springapp.model.Cart;
import com.springapp.model.Product;
import com.springapp.model.User;
import com.springapp.service.ICartService;
import com.springapp.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 14.03.2016
 * Time: 16:27
 */
@Transactional
@Service("cartService")
public class CartService extends GenericService<Cart, Long> implements ICartService {

    private ICartDao cartDao;

    @Autowired(required = true)
    public CartService(ICartDao cartDao) {
        super(cartDao);
        this.cartDao = cartDao;
    }


    @Override
    public List<Cart> getCart(User user, String session) {
        return cartDao.getCart(user, session);
    }


}

