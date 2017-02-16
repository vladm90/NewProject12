package com.springapp.controller;

import com.springapp.model.Cart;
import com.springapp.model.Locality;
import com.springapp.model.Role;
import com.springapp.model.User;
import com.springapp.service.ILocalityService;
import com.springapp.service.IRoleService;
import com.springapp.service.IUserService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 21.04.2016
 * Time: 17:23
 */

@Controller
public class AccountController extends AbstractController {

    @Autowired
    private ValidateForm validateForm;

    @Autowired
    private IUserService userService;

    @Autowired
    private ILocalityService localityService;

    @Autowired
    private IRoleService roleService;




    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public ModelAndView register(ModelMap model) {

        /*COUNTYS*/
        List<Locality> county = localityService.getCounties();
        model.put("county", county);

        return new ModelAndView("/account/createAccount", model);

    }

    @RequestMapping(value = "/register",  method =  RequestMethod.POST)
    public ModelAndView register(@Valid @ModelAttribute("form")  UserForm userForm,
                                     ModelMap model ,BindingResult result, HttpServletRequest req, HttpServletResponse res) {

        validateForm.validateForm(userForm, result);

        if (result.hasErrors()) {
            log.info("########## Field has errors ... ");
            model.put("form", userForm);

            /*COUNTYS*/
            List<Locality> county = localityService.getCounties();
            model.put("county", county);
            if(!userForm.getLocality().equals("-")){
                model.put("countyName", userForm.getCounty());
                model.put("localityName", userForm.getLocality());
            }

            List<Locality> locality = localityService.getLocalitiesByCounty(userForm.getCounty());
            model.put("locality",locality);


            return new ModelAndView("/account/createAccount", model);
        }
        log.info("########## Saving user ... ");

        // User user = userForm.getUser();
        User user = new User();
        BeanUtils.copyProperties(userForm, user);
        Locality locality = localityService.getLocalityByName(userForm.getCounty(), userForm.getLocality());
        user.setLocality(locality);
        user.setFbPicture("/images/icons/usericon.png");

        user.setRole(roleService.findById(2L));
        userService.save(user);

        User u = userService.getByEmail(null, user.getEmail());

        // Authenticate the user and set the session
        HttpSession session = req.getSession(true);
        session.setAttribute("SPRING_SECURITY_CONTEXT", user);
        SecurityContextHolder.getContext().setAuthentication(new UsernamePasswordAuthenticationToken(u, u.getPassword(), u.getAuthorities()));

        return new ModelAndView(redirect("/account/details"), model);
    }


    @RequestMapping(value =  "/account/details" , method = RequestMethod.GET)
    public ModelAndView tet(ModelMap model, HttpServletRequest req, HttpServletResponse res) {

          /*CART LIST*/
        List<Cart> cartList = cartList(null, req);
        model.put("cart", cartList);

        User loggedUser = getCurrentUser();

        if(loggedUser == null) {
            return new ModelAndView("/login", model);
        }

        model.put("loggedUser", loggedUser);

        return new ModelAndView("/account/details", model);

    }
}
