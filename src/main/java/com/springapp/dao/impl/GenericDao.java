package com.springapp.dao.impl;

import com.springapp.dao.IGenericDao;
import com.springapp.model.BaseEntity;
import org.apache.commons.collections.MapUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 15.03.2016
 * Time: 18:06
 */

public abstract class GenericDao<T extends BaseEntity, PK extends Serializable> implements IGenericDao<T, PK> {

    /** log variable for all child classes */
    protected final Logger log = LoggerFactory.getLogger(getClass());

    /** persistent class */
    private Class<T> persistentClass;

    /** entity manager */
    protected EntityManager entityManager;


    public GenericDao() {
        this.persistentClass = (Class<T>) ((ParameterizedType) getClass()
                .getGenericSuperclass()).getActualTypeArguments()[0];
    }

    /**
     * Constructor that takes in a class type to persist.
     *
     * @param persistentClass
     *            the class type to persist
     */
    public GenericDao(Class<T> persistentClass) {
        this.persistentClass = persistentClass;

    }

    @PersistenceContext
    public void setEntityManager(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    @Override
    public T create(T t) {
        log.info("Creating entity of type - {}, Entity: {}", persistentClass, t);

        entityManager.persist(t);

        log.info("Entity of type - {} was CREATED, Entity: {}.", persistentClass, t);

        return t;
    }

    @Override
    public T findById(PK pk) {
        log.debug("Finding by ID entity of type - {}, ID: {}", persistentClass, pk);

        T t = null;

        try {
            t = (T) entityManager.find(persistentClass, pk);
        } catch (NoResultException e) {
            log.info("No entity of type {} found with id = {} .", persistentClass, pk);
        }

        return t;
    }


    @Override
    public T update(T t) {
        log.debug("Updating entity of type - {}, Entity: {}", persistentClass, t);

        T updatedEntity = (T) entityManager.merge(t);

        log.info("Entity of type - {} was UPDATED, Entity: {}.", persistentClass, t);

        return updatedEntity;
    }
}

