package com.springapp.controller;
import com.springapp.model.Role;
import com.springapp.model.User;
import com.springapp.service.IUserService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.List;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 14.03.2016
 * Time: 11:43
 */
@Controller
public class MainController extends AbstractController{


    @Autowired
    private IUserService userService;

    @Autowired
    private ValidateForm validateForm;

    @RequestMapping(value = { "/", "/welcome**" }, method = RequestMethod.GET)
    public ModelAndView welcomePage() {

        ModelAndView model = new ModelAndView();
        model.addObject("title", "Spring Security Custom Login Form");
        model.addObject("message", "This is welcome page!");
        model.setViewName("hello");
        return model;

    }

    @RequestMapping(value = "/admin**", method = RequestMethod.GET)
    public ModelAndView adminPage(ModelMap model) {


        model.put("title", "Spring Security Custom Login Form");
        model.put("message", "This is protected page!");


        List<User> user = userService.listUsers();

        model.put("users", user);
        User loggedUser = getCurrentUser();

        return new ModelAndView("admin", model);

    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login(ModelMap model,
                              @RequestParam(value = "error", required = false) String error,
                              @RequestParam(value = "logout", required = false) String logout) {


        if (error != null) {
            model.put("error", "Invalid username and password!");
        }

        if (logout != null) {
            model.put("msg", "You've been logged out successfully.");
        }


        return new ModelAndView("login", model);

    }


    @RequestMapping(value = "/registration",  method =  RequestMethod.POST)
    public ModelAndView registration(@Valid @ModelAttribute("form")  UserForm userForm,
                                     ModelMap model ,BindingResult result) {

       validateForm.validateForm(userForm, result);

        if (result.hasErrors()) {
            log.info("########## Field has errors ... ");
            model.put("form", userForm);
            return new ModelAndView("createAccount", model);
        }

        log.info("########## Saving user ... ");

        // User user = userForm.getUser();
        User user = new User();
        BeanUtils.copyProperties(userForm, user);


        Role role = new Role();
        role.setId(1L);
        user.setRole(role);

        userService.save(user);
        return new ModelAndView("successRegistration", model);

    }




    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public ModelAndView registration(ModelMap model) {

        //model.put("user", new User());
        return new ModelAndView("createAccount", model);

    }

    //for 403 access denied page
    @RequestMapping(value = "/403", method = RequestMethod.GET)
    public ModelAndView accesssDenied() {

        ModelAndView model = new ModelAndView();

        //check if user is login
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!(auth instanceof AnonymousAuthenticationToken)) {
            UserDetails userDetail = (UserDetails) auth.getPrincipal();

            model.addObject("username", userDetail.getUsername());

        }

        model.setViewName("403");
        return model;

    }



}

