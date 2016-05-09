package com.springapp.dao.impl;

import com.springapp.dao.ICartDao;
import com.springapp.dao.IProductDao;
import com.springapp.model.Cart;
import com.springapp.model.Product;
import com.springapp.model.User;
import org.springframework.stereotype.Repository;

import javax.persistence.NoResultException;
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

    @Override
    public Cart getProduct(Product product, String session, User user){
        try{
            String sql = "SELECT c FROM Cart c WHERE c.enabled=true " ;
            if (product != null) sql += "and c.product = :product ";
            if (user == null && session != null) sql += "and c.session = :session ";
            if (user != null && session != null) sql += "and (c.session = :session or c.user = :user )";

            Query query = entityManager.createQuery(sql);
            if (product != null) query.setParameter("product", product);
            if (session != null) query.setParameter("session", session);
            if (user != null) query.setParameter("user", user);

            return (Cart)query.getSingleResult();
        } catch(NoResultException e) {
            return null;
        }
    }




}
