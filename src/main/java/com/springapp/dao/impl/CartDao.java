package com.springapp.dao.impl;

import com.springapp.dao.ICartDao;
import com.springapp.dao.IProductDao;
import com.springapp.model.Cart;
import com.springapp.model.Product;
import com.springapp.model.User;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;
import java.util.List;

//import com.springapp.model.ReadOnlyConnection;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 14.03.2016
 * Time: 16:29
 */
@Repository("cartDao")
public class CartDao extends GenericDao<Cart, Long> implements ICartDao {

    public CartDao() {
        super(Cart.class);
    }


    @Override
    public List<Cart> getCart(User user, String session) {
        String sql = "SELECT c FROM Cart c WHERE c.enabled=true ";
        if (user == null && session != null) sql += "and c.session = :session ";
        if (user != null && session != null) sql += "and (c.session = :session or c.user = :user )";

        Query query = entityManager.createQuery(sql);
        if (user != null) query.setParameter("user", user);
        if (session != null) query.setParameter("session", session);

        return query.getResultList();
    }




}
