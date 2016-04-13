package com.springapp.dao;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 15.03.2016
 * Time: 18:15
 */

import com.springapp.model.BaseEntity;

import java.io.Serializable;
import java.util.List;
import java.util.Map;


public interface IGenericDao<T extends BaseEntity, PK extends Serializable> {



    T create(T t);

    T findById(PK pk);

    T update(T t);



}
