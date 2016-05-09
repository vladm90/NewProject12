package com.springapp.dao.impl;

import com.springapp.dao.ILocalityDao;
import com.springapp.dao.IProductDao;
import com.springapp.model.Locality;
import com.springapp.model.Product;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;
import java.util.List;

//import com.springapp.model.ReadOnlyConnection;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 14.03.2016
 * Time: 16:29
 */
@Repository("localityDao")
public class LocalityDao extends GenericDao<Locality, Long> implements ILocalityDao{

    public LocalityDao() {
        super(Locality.class);
    }

    @Override
      public List<Locality> getLocalities() {
        String sql = "SELECT l FROM Locality l WHERE l.enabled=true";
        Query query = entityManager.createQuery(sql);

        return query.getResultList();
    }

    @Override
    public List<Locality> getLocalitiesByCounty(String county) {
        String sql = "SELECT l FROM Locality l WHERE l.enabled=true and l.county=:county";
        Query query = entityManager.createQuery(sql).setParameter("county", county);

        return query.getResultList();
    }

    @Override
    public List<Locality> getCounties() {
        String sql = "SELECT l FROM Locality l WHERE l.enabled=true group by l.county";
        Query query = entityManager.createQuery(sql);

        return query.getResultList();
    }




}
