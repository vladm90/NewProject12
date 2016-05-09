package com.springapp.controller;

import com.springapp.model.Cart;
import com.springapp.model.User;
import com.springapp.service.ICartService;
import org.aspectj.org.eclipse.jdt.internal.core.SourceType;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 16.03.2016
 * Time: 15:48
 */
public class AbstractController extends MultiActionController {

    @Autowired
    private ICartService cartService;

    /** log variable for all child classes */
    protected final Logger log = LoggerFactory.getLogger(getClass());

    protected User getCurrentUser() {
        User currentUser = null;
        if (SecurityContextHolder.getContext().getAuthentication() != null && SecurityContextHolder.getContext().getAuthentication().getPrincipal() instanceof User) {
            currentUser = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        }

        return currentUser;
    }

    protected String redirect(String viewName) {
        return "redirect:" + viewName;
    }


    protected List<Cart> cartList(User loggedUser, HttpServletRequest req){
        List<Cart> cartList;
        if(loggedUser != null){
            cartList = cartService.getCart(loggedUser, req.getRequestedSessionId());
            /*List<Cart> cartListOnSession = cartService.getCart(null, req.getRequestedSessionId());*/
            List<Cart> c = new ArrayList<Cart>();
            if(cartList != null) {
                c = new ArrayList<Cart>();
                for (Cart cart2 : cartList) {
                    if (cart2.getUser() == null) {
                        c.add(cart2);
                    }
                }
            }

            if(cartList != null) {
                for (Cart cart : cartList) {
                    if (cart.getUser() != null) {
                        for(Cart cartSession : c){
                            if(cartSession.getProduct() == (cart.getProduct())){
                                cartSession.setEnabled(false);
                                cartService.update(null, cartSession);
                                cart.setQuantity(cart.getQuantity() + cartSession.getQuantity());
                                cartService.update(null, cart);
                            }
                        }
                    }else {
                        cart.setUser(loggedUser);
                        cartService.update(null, cart);
                    }
                }
            }
            cartList = cartService.getCart(loggedUser, req.getRequestedSessionId());
        }else{
            cartList = cartService.getCart(null, req.getRequestedSessionId());
        }

        return cartList;
    }

 /*   @ModelAttribute("form")
    public UserForm getRegistrationForm() {
        return new UserForm();
    }*/
}
