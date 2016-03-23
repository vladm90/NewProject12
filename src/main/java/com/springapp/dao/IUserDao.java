package com.springapp.dao;

import com.springapp.model.User;

import java.util.List;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 14.03.2016
 * Time: 16:29
 */

public interface IUserDao extends IGenericDao<User, Long>{

    public List<User> listUsers();

    //User findByUsername(String userName);

    User findByUsername(String username, Boolean enabled);

    User findByUsername(String userName);


}
