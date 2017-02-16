package com.springapp.controller;

import com.springapp.model.*;
import com.springapp.service.ICartService;
import com.springapp.service.ILocalityService;
import com.springapp.service.IProductService;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.cglib.core.Local;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 27.04.2016
 * Time: 16:44
 */
@Controller
public class ShopController extends AbstractController{

    @Autowired
    IProductService productService;

    @Autowired
    ICartService cartService;

    @Autowired
    ILocalityService localityService;

    @RequestMapping(value = "/shop/products" , method = RequestMethod.GET)
    public ModelAndView products(@RequestParam(value = "page", required = false) Integer page,
                                 ModelMap model, HttpServletRequest req, HttpServletResponse res) {

        User loggedUser = getCurrentUser();
        model.put("loggedUser", loggedUser);

        /*CART LIST*/
        List<Cart> cartList = cartList(loggedUser, req);
        model.put("cart", cartList);

        /*PAGINAREA PRODUSELOR*/
        List<Product> products = productService.getProducts();
        PagedListHolder<Product> pagedListHolder = new PagedListHolder<Product>(products);
        pagedListHolder.setPageSize(9);
        model.put("maxPages", pagedListHolder.getPageCount());
        if(page==null || page < 1 || page > pagedListHolder.getPageCount()) page = 1;

        model.put("page", page);
        if(page == null || page < 1 || page > pagedListHolder.getPageCount()){
            pagedListHolder.setPage(0);
            model.put("product", pagedListHolder.getPageList());
        }
        else if(page <= pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(page-1);
            model.put("product", pagedListHolder.getPageList());
        }

        model.put("productCategoryEnum", Arrays.asList(ProductCategoryEnum.values()));



        return new ModelAndView("/shop/products", model);
    }

    @RequestMapping(value = "/shop/addProductCart" , method = RequestMethod.GET)
    public ModelAndView addProductCart (@RequestParam(value = "product_id", required = false) Long productId,
                                        @RequestParam(value = "decrement", required = false) boolean decrement,
                                        ModelMap model, HttpServletRequest req, HttpServletResponse res) {

        User loggedUser = getCurrentUser();
        model.put("loggedUser", loggedUser);

        //check if product exist in cart
        Product product = productService.getById(productId);
        Cart cart = cartService.getProduct(product, req.getRequestedSessionId(), loggedUser);
        if(cart != null){
            if(decrement == false){
                cart.setQuantity(cart.getQuantity() + 1);
                cartService.update(null, cart);
            } else {
                cart.setQuantity(cart.getQuantity() - 1);
                cartService.update(null, cart);
            }
        //update cart product existent
        }else{
            //add product in cart
            cart = new Cart();
            if(loggedUser != null) {
                cart.setUser(loggedUser);
            }
            cart.setProduct(product);
            cart.setSession(req.getRequestedSessionId());
            cart.setQuantity(1L);

            cartService.save(cart);
        }


        return new ModelAndView(redirect("/shop/products"), model);
    }

    @RequestMapping(value = "/shop/productDetail" , method = RequestMethod.GET)
    public ModelAndView productDetail (@RequestParam(value = "product_id", required = false) Long productId,
                                        ModelMap model, HttpServletRequest req, HttpServletResponse res) {

        User loggedUser = getCurrentUser();
        model.put("loggedUser", loggedUser);


        Product product = productService.getById(productId);
        model.put("product", product);

        List<Cart> cartList = cartList(loggedUser, req);
        model.put("cart", cartList);

        return new ModelAndView("/shop/productDetail", model);
    }

    @RequestMapping(value = "/shop/cart" , method = RequestMethod.GET)
    public ModelAndView cart (/*@RequestParam(value = "countyName", required = false) String countyName,*/
                              ModelMap model, HttpServletRequest req, HttpServletResponse res) {

        User loggedUser = getCurrentUser();
        model.put("loggedUser", loggedUser);

        /*CART LIST*/
        List<Cart> cartList = cartList(loggedUser, req);
        model.put("cart", cartList);

        List<Product> newProductsList = productService.getNewProducts();
        model.put("newProductsList", newProductsList);

        /*COUNTYS*/
        List<Locality> county = localityService.getCounties();
        model.put("county", county);

     /*   if (countyName != null){
            List<Locality> locality = localityService.getLocalitiesByCounty(countyName);
            model.put("locality", locality);
            model.put("countyName", countyName);
        }*/

        return new ModelAndView("/shop/cart", model);
    }

    @RequestMapping(value = "/shop/cart/delete" , method = RequestMethod.GET)
    public String cartActions (@RequestParam(value = "productId", required = false) Long productId,
                                     ModelMap model, HttpServletRequest req, HttpServletResponse res) {

        User loggedUser = getCurrentUser();
        if (productId != null){
            Product product = productService.getById(productId);
            Cart cart = null;
            if(loggedUser != null){
                cart = cartService.getProduct(product, null, loggedUser);
            }else{
                cart = cartService.getProduct(product, req.getRequestedSessionId(), null);
            }
            cart.setEnabled(false);
            cartService.update(null, cart);


        }
        return (redirect("/shop/cart"));
    }


    @ResponseBody
    @RequestMapping(value = "/shop/cart/getLocality" , method = RequestMethod.POST, consumes = "application/x-www-form-urlencoded")
    public List<String> getLocality (@RequestParam(value = "countyName", required = false) String countyName,
                              ModelMap model, HttpServletRequest req, HttpServletResponse res) {
            return localityService.getLocalitiesByCountyForJson(countyName);
    }


    @RequestMapping(value = "/shop/contact" , method = RequestMethod.GET)
    public ModelAndView contact (ModelMap model, HttpServletRequest req, HttpServletResponse res) {

        User loggedUser = getCurrentUser();
        model.put("loggedUser", loggedUser);

        /*CART LIST*/
        List<Cart> cartList = cartList(loggedUser, req);
        model.put("cart", cartList);


        return new ModelAndView("/shop/contact", model);
    }

    @RequestMapping(value = "/shop/gallery" , method = RequestMethod.GET)
    public ModelAndView gallery (ModelMap model, HttpServletRequest req, HttpServletResponse res) {

        User loggedUser = getCurrentUser();
        model.put("loggedUser", loggedUser);

        /*CART LIST*/
        List<Cart> cartList = cartList(loggedUser, req);
        model.put("cart", cartList);


        return new ModelAndView("/shop/gallery", model);
    }

    @RequestMapping(value = "/shop/aboutus" , method = RequestMethod.GET)
    public ModelAndView aboutus (ModelMap model, HttpServletRequest req, HttpServletResponse res) {

        User loggedUser = getCurrentUser();
        model.put("loggedUser", loggedUser);

        /*CART LIST*/
        List<Cart> cartList = cartList(loggedUser, req);
        model.put("cart", cartList);


        return new ModelAndView("/shop/aboutus", model);
    }

    @RequestMapping(value = "/shop/checkout" , method = RequestMethod.GET)
    public ModelAndView checkout (@RequestParam(value = "code", required = false) String code,
                              ModelMap model, HttpServletRequest req, HttpServletResponse res) {

        User loggedUser = getCurrentUser();
        model.put("loggedUser", loggedUser);

        /*CART LIST*/
        List<Cart> cartList = cartList(loggedUser, req);
        model.put("cart", cartList);

        List<Product> newProductsList = productService.getNewProducts();
        model.put("newProductsList", newProductsList);

        /*COUNTYS*/
        List<Locality> county = localityService.getCounties();
        model.put("county", county);

     /*   if (countyName != null){
            List<Locality> locality = localityService.getLocalitiesByCounty(countyName);
            model.put("locality", locality);
            model.put("countyName", countyName);
        }*/

        model.put("code", code);

        return new ModelAndView("/shop/checkout", model);
    }





}
