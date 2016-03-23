package com.springapp.controller;

import com.springapp.model.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 16.03.2016
 * Time: 15:48
 */
public class AbstractController extends MultiActionController {


    /** log variable for all child classes */
    protected final Logger log = LoggerFactory.getLogger(getClass());

    protected User getCurrentUser() {
        User currentUser = null;
        if (SecurityContextHolder.getContext().getAuthentication() != null && SecurityContextHolder.getContext().getAuthentication().getPrincipal() instanceof User) {
            currentUser = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        }

        return currentUser;
    }

 /*   @ModelAttribute("form")
    public UserForm getRegistrationForm() {
        return new UserForm();
    }*/
}
