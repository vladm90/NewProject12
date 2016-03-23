package com.springapp.service.impl;

import com.springapp.dao.IGenericDao;
import com.springapp.dao.IUserDao;
import com.springapp.model.User;
import com.springapp.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 14.03.2016
 * Time: 16:27
 */
@Transactional
@Service("userService")
public class UserService extends GenericService<User, Long> implements IUserService, UserDetailsService{

    @Autowired
    private IUserDao userDao;


    public UserService(IGenericDao<User, Long> genericDao) {
        super(genericDao);
    }

    @Autowired(required = true)
    public UserService(IUserDao userDao) {
        super(userDao);
        this.userDao = userDao;
    }


    @Override
    public List<User> listUsers() {
           return userDao.listUsers();
    }


    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException, DataAccessException {
        return this.getByUsername(null, username);
    }

    @Override
    public User getByUsername(User loggedUser, String username) {
      //  log.debug("Get user by username={}", userName);
        User user = userDao.findByUsername(username);
        return user;
    }

    @Override
    @Transactional
    public User save(User user) {
        User u = super.save(user);
        return u;
    }
}
