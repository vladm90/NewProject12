package com.springapp.service;

import com.springapp.model.Locality;
import com.springapp.model.Role;

import java.util.List;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 07.04.2016
 * Time: 13:47
 */
public interface ILocalityService extends IGenericService<Locality, Long>{

    List<Locality> getLocalities();

    List<Locality> getLocalitiesByCounty(String county);

    List<String> getLocalitiesByCountyForJson(String county);

    List<Locality> getCounties();
}
