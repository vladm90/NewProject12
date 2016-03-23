package com.springapp.service;

import com.springapp.model.User;


import java.io.Serializable;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 21.03.2016
 * Time: 14:16
 */
public interface IGenericService<T, PK extends Serializable> {

    T save(T object) ;
}
