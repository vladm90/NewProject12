package com.springapp.service;

import com.springapp.model.User;

import java.util.List;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 14.03.2016
 * Time: 16:28
 */
public interface IUserService extends IGenericService<User, Long> {


    public List<User> listUsers();

    User getByUsername(User loggedUser, String userName);

   /* @Override
    User save(User user);*/

}
