package com.springapp.dao.impl;

import com.springapp.dao.IUserDao;
//import com.springapp.model.ReadOnlyConnection;
import com.springapp.model.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;


import javax.jws.soap.SOAPBinding;
import javax.persistence.*;
import java.util.List;
import java.util.Map;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 14.03.2016
 * Time: 16:29
 */
@Repository("userDao")
public class UserDao extends GenericDao<User, Long> implements IUserDao{



   /* *//** log instance *//*
    private static final Logger log = LoggerFactory.getLogger(UserDao.class);*/

   /* protected EntityManager entityManager;*/

   /* @PersistenceContext
    public void setEntityManager(EntityManager entityManager) {
        this.entityManager = entityManager;
    }*/



    @Override
    public List<User> listUsers() {
        Query q = entityManager.createNativeQuery("select * from users", User.class);

        return q.getResultList();
    }

    @Override
    public User findByEmail(String email) {
        return findByEmail(email, Boolean.TRUE);
    }


    @Override
    public User findByEmail(String email, Boolean enabled) {
        User user = null;
        try {
            String sql = "SELECT u FROM User u WHERE u.email=:email" + (enabled != null ? " AND u.enabled=:enabled" : "");
            Query q = entityManager.createQuery(sql).setParameter("email", email);
            if (enabled != null) {
                q.setParameter("enabled", enabled);
            }

            user = (User) q.getSingleResult();
            log.info("########## Entity found with email = {} .", email);
        } catch (NoResultException e) {
            log.info("########## No entity found with email = {} .", email);
        }

        return user;
    }


}
