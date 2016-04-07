package com.springapp.dao;

import com.springapp.dao.impl.GenericDao;
import com.springapp.model.Role;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 07.04.2016
 * Time: 13:53
 */
public interface IRoleDao extends IGenericDao<Role, Long> {
    public Role findByRole(String role);
}
