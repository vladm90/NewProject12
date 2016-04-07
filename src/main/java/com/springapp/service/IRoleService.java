package com.springapp.service;

import com.springapp.model.Role;
import com.springapp.service.impl.RoleService;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 07.04.2016
 * Time: 13:47
 */
public interface IRoleService extends IGenericService<Role, Long>{
    Role findByRole(String role);
}
