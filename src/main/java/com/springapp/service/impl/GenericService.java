package com.springapp.service.impl;

import com.springapp.dao.IGenericDao;
import com.springapp.service.IGenericService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
public abstract class GenericService<T, PK extends Serializable> implements IGenericService<T, PK> {

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
}
