package com.springapp.service;

import com.springapp.model.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 14.03.2016
 * Time: 16:28
 */
public interface IUserService extends IGenericService<User, Long> {


    List<User> listUsers();

    User getByEmail(User loggedUser, String email);





}
