package com.springapp.service.impl;

import com.springapp.dao.IGenericDao;
import com.springapp.dao.IUserDao;
import com.springapp.model.User;
import com.springapp.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import java.util.*;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 14.03.2016
 * Time: 16:27
 */
@Transactional
@Service("userService")
public class UserService extends GenericService<User, Long> implements IUserService, UserDetailsService{

  //  @Autowired
    private IUserDao userDao;

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
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException, DataAccessException {
        return this.getByEmail(null, email);
    }


    @Override
    public User getByEmail(User loggedUser, String email) {
        User user = userDao.findByEmail(email);
        return user;
    }

    @Override
    @Transactional
    public User save(User user) {
        User u = super.save(user);
        return u;
    }


}
