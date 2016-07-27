package com.springapp.service.impl;

import com.springapp.dao.ILocalityDao;
import com.springapp.dao.IRoleDao;
import com.springapp.model.Locality;
import com.springapp.model.Role;
import com.springapp.service.ILocalityService;
import com.springapp.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 07.04.2016
 * Time: 13:49
 */
@Transactional
@Service("localityService")
public class LocalityService extends GenericService<Locality, Long> implements ILocalityService{


    private ILocalityDao localityDao;

    @Autowired(required = true)
    public LocalityService(ILocalityDao localityDao) {
        super(localityDao);
        this.localityDao = localityDao;
    }

    @Override
    public List<Locality> getLocalities() {
        return  localityDao.getLocalities();
    }

    @Override
    public List<Locality> getLocalitiesByCounty(String county) {
        return  localityDao.getLocalitiesByCounty(county);
    }

    @Override
    public Locality getLocalityByName(String county, String locality) {
        return  localityDao.getLocalityByName(county, locality);
    }

    @Override
    public List<String> getLocalitiesByCountyForJson(String county) {
        List<Locality> localities = localityDao.getLocalitiesByCounty(county);
        List<String> locality = new ArrayList<String>();
        for (Locality l : localities){
            locality.add(l.getLocality());
        }
        return locality;
    }

    @Override
    public List<Locality> getCounties() {
        return  localityDao.getCounties();
    }



}
