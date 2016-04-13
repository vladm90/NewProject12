package com.springapp.service.impl;

import com.springapp.dao.IGenericDao;
import com.springapp.model.BaseEntity;
import com.springapp.model.User;
import com.springapp.service.IGenericService;
import com.sun.xml.internal.bind.v2.TODO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import java.io.Serializable;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 21.03.2016
 * Time: 14:22
 */
@Transactional
public abstract class GenericService<T extends BaseEntity, PK extends Serializable> implements IGenericService<T, PK> {

    /** log variable for all child classes */
    protected final Logger log = LoggerFactory.getLogger(getClass());

    /**
     * GenericDao instance, set by constructor of this class
     */
    protected IGenericDao<T, PK> genericDao;

    public GenericService(IGenericDao<T, PK> genericDao) {
        this.genericDao = genericDao;
    }

    @Override
    public T save(T object) {

        Assert.notNull(object, "Can not persist a NULL object.");

        log.info("Saving entity {} ...", object);

        object = genericDao.create(object);

        log.info("Entity {} saved.", object);
        return object;
    }

    @Override
    public T findById(PK id) {

        if (id == null) {
            return null;
        }

        log.debug("Getting entity with id={} ...", id);

        T entity = genericDao.findById(id);

        log.info("Entity with id={} retrieved.", id);

        return entity;
    }

    // TODO trebuie sa extind baseentiry in generic dao service.  si sa modific in metoda de mai jos "T entitiy" cu alte 3 randuri vezi bac. acum adauga un obiect nou in baza de date, nu actializeaza existentul. am si comentat cateva chestii ID si enable
    @SuppressWarnings("unchecked")
    @Override
    public T update(User loggedUser, T object) {

        Assert.notNull(object, "Can not update a NULL object.");
        Assert.notNull(object.getId(), "Can not update an object with id=NULL.");

        log.debug("Updating entity {} ...", object);
        T entity = genericDao.update(object);
        log.info("Entity {} updated.", entity);

        return entity;
    }


}
