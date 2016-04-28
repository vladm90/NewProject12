package com.springapp.controller;

import com.springapp.model.Cart;
import com.springapp.model.Product;
import com.springapp.model.ProductCategoryEnum;
import com.springapp.model.User;
import com.springapp.service.ICartService;
import com.springapp.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;
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

    @RequestMapping(value = "/shop/products" , method = RequestMethod.GET)
    public ModelAndView products(@RequestParam(value = "page", required = false) Integer page,
                                 ModelMap model, HttpServletRequest req, HttpServletResponse res) {

        User loggedUser = getCurrentUser();
        model.put("loggedUser", loggedUser);

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

        List<Cart> cartList;
        if(loggedUser != null){
            cartList = cartService.getCart(loggedUser, req.getRequestedSessionId());
            if(cartList != null) {
                for (Cart cart : cartList) {
                    if (cart.getUser() == null) {
                        cart.setUser(loggedUser);
                        cartService.update(null, cart);
                    }
                }
            }
        }else{
            cartList = cartService.getCart(null, req.getRequestedSessionId());
        }



        model.put("cart", cartList);



        return new ModelAndView("/shop/products", model);
    }

    @RequestMapping(value = "/shop/addProductCart" , method = RequestMethod.GET)
    public ModelAndView addProductCart (@RequestParam(value = "product_id", required = false) Long productId,
                                        ModelMap model, HttpServletRequest req, HttpServletResponse res) {

        User loggedUser = getCurrentUser();
        model.put("loggedUser", loggedUser);

        //add product in cart
        Product product = productService.getById(productId);
        Cart cart = new Cart();
        if(loggedUser != null) {
            cart.setUser(loggedUser);
        }
        cart.setProduct(product);
        cart.setSession(req.getRequestedSessionId());
        cart.setQuantity(1L);


        cartService.save(cart);

        return new ModelAndView(redirect("/shop/products"), model);
    }

    @RequestMapping(value = "/shop/productDetail" , method = RequestMethod.GET)
    public ModelAndView productDetail (@RequestParam(value = "product_id", required = false) Long productId,
                                        ModelMap model, HttpServletRequest req, HttpServletResponse res) {

        User loggedUser = getCurrentUser();
        model.put("loggedUser", loggedUser);


        Product product = productService.getById(productId);
        model.put("product", product);

        return new ModelAndView("/shop/productDetail", model);
    }


}
