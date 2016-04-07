package com.springapp.dao.impl;

import com.springapp.dao.IRoleDao;
import com.springapp.model.Role;
import org.springframework.stereotype.Repository;
import javax.persistence.*;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 07.04.2016
 * Time: 13:54
 */

@Repository("roleDao")
public class RoleDao extends GenericDao<Role, Long> implements IRoleDao {

   /* public RoleDao() {
        super(Role.class);
    }*/

    /*@Override
        public Role findByRole(String role) {
            Query q = entityManager.createQuery("SELECT 1 FROM Role r WHERE r.role =:role");
            q.setParameter("role", role);

            return (Role)q.getResultList();
        }
    */


    @Override
    public Role findByRole(String role) {
        Query q = entityManager.createNativeQuery("SELECT * FROM roles r WHERE role =:role", Role.class);
        q.setParameter("role", role);

        return (Role)q.getSingleResult();
    }
}
