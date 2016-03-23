/*
package com.springapp.model;

import com.springapp.model.ReadOnlyConnection;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.hibernate.Session;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.Ordered;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

*/
/**
 * Created by IntelliJ IDEA. User: aconstantinescu Date: 11/28/12 Time: 6:53 PM To change this template use File |
 * Settings | File Templates.
 *//*

@Aspect
public class ConnectionInterceptor implements Ordered {

    protected final Logger log = LoggerFactory.getLogger(ConnectionInterceptor.class);

    private int order;
    private EntityManager entityManager;

    public void setOrder(int order) {
        this.order = order;
    }

    @Override
    public int getOrder() {
        return order;
    }

    @PersistenceContext
    public void setEntityManager(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    @Around("@annotation(readOnlyConnection)")
    public Object proceed(ProceedingJoinPoint pjp, ReadOnlyConnection readOnlyConnection) throws Throwable {
        //jpa 2.0 onwards
        Session hibernateSession = (Session) entityManager.getDelegate();
        ConnectionReadOnly readOnlyWork = new ConnectionReadOnly();

        try {
            hibernateSession.doWork(readOnlyWork);
            return pjp.proceed();
        } catch (Throwable t) {
            log.error("Failed to do work on a readonly connection", t);
            throw t;
        } finally {
            readOnlyWork.switchBack();
            hibernateSession.doWork(readOnlyWork);
        }

    }
}
*/
