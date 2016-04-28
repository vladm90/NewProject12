package com.springapp.service.impl;

import com.springapp.dao.IProductDao;
import com.springapp.dao.IUserDao;
import com.springapp.model.Product;
import com.springapp.model.User;
import com.springapp.service.IProductService;
import com.springapp.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 14.03.2016
 * Time: 16:27
 */
@Transactional
@Service("productService")
public class ProductService extends GenericService<Product, Long> implements IProductService {

    private IProductDao productDao;

    @Autowired(required = true)
    public ProductService(IProductDao productDao) {
        super(productDao);
        this.productDao = productDao;
    }

    @Override
    public List<Product> getProducts() {
        return productDao.getProducts();
    }

    @Override
    public Product getById(Long id) {
        return productDao.getById(id);
    }

}

