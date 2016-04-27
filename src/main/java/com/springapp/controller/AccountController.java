package com.springapp.controller;

import com.springapp.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 21.04.2016
 * Time: 17:23
 */

@Controller
public class AccountController extends AbstractController {

    @RequestMapping(value =  "/account/details" , method = RequestMethod.GET)
    public ModelAndView tet(ModelMap model, HttpServletRequest req, HttpServletResponse res) {

        User loggedUser = getCurrentUser();

        if(loggedUser == null) {
            return new ModelAndView("/login", model);
        }

        model.put("user", loggedUser);

        return new ModelAndView("/account/details", model);
    }
}
