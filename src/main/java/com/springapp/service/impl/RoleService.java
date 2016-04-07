package com.springapp.service.impl;

import com.springapp.dao.IGenericDao;
import com.springapp.dao.IRoleDao;
import com.springapp.dao.IUserDao;
import com.springapp.model.Role;
import com.springapp.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 07.04.2016
 * Time: 13:49
 */
@Transactional
@Service("roleService")
public class RoleService extends GenericService<Role, Long> implements IRoleService{


    private IRoleDao roleDao;

    @Autowired(required = true)
    public RoleService(IRoleDao roleDao) {
        super(roleDao);
        this.roleDao = roleDao;
    }

    @Override
    public Role findByRole(String role) {
        return  roleDao.findByRole(role);
    }

}
