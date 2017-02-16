package com.springapp.controller;
import com.springapp.handler.FBConnection;
import com.springapp.handler.FBGraph;
import com.springapp.model.*;
import com.springapp.service.IProductService;
import com.springapp.service.IRoleService;
import com.springapp.service.IUserService;
import com.springapp.service.impl.RoleService;
import com.springapp.service.impl.UserService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.io.IOException;
import java.util.*;

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

    @Autowired
    private IProductService productService;

    @Autowired
    private IRoleService roleService;


    @RequestMapping(value =  "/test" , method = RequestMethod.GET)
    public ModelAndView tet(ModelMap model, HttpServletRequest req, HttpServletResponse res) {


        return new ModelAndView("/account/login", model);
    }

    @RequestMapping(value = {"/", "/shop"} , method = RequestMethod.GET)
    public ModelAndView shop(@RequestParam(value = "page", required = false) Integer page,
                             ModelMap model, HttpServletRequest req, HttpServletResponse res) {

        User loggedUser = getCurrentUser();
        model.put("loggedUser", loggedUser);

        /*CHECK FOR CARD DUPLICATES, SET ENABLED FALSE AND ADD TO QUANTITY*//*
        if(loggedUser != null) {
            checkCartDuplicates(loggedUser, req);
        }*/

        /*CART LIST*/
        List<Cart> cartList = cartList(loggedUser, req);
        model.put("cart", cartList);

        /*PAGINAREA PRODUSELOR*/
        List<Product> products = productService.getProducts();
        PagedListHolder<Product> pagedListHolder = new PagedListHolder<Product>(products);
        pagedListHolder.setPageSize(3);
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
        System.out.println(req.getRequestedSessionId());
        return new ModelAndView("/shop/index", model);
    }



    @RequestMapping(value = "/facebookLogin" , method = RequestMethod.GET)
    public ModelAndView facebookLogin(ModelMap model,String code,
                                 HttpServletRequest req, HttpServletResponse res) {


        FBConnection fbConnection = new FBConnection();
        String redirectNewAccount = fbConnection.getFBAuthUrl();

        return new ModelAndView(redirect(redirectNewAccount), model);
    }

    @RequestMapping(value = "/Facebook_Login/fbhome" , method = RequestMethod.GET)
    public ModelAndView facebook(ModelMap model,@RequestParam(value = "code", required = false) String code,
                             HttpServletRequest req, HttpServletResponse res)
                             throws ServletException, IOException {

        if (code == null || code.equals("")) {
            throw new RuntimeException("ERROR: Didn't get code parameter in callback.");
        }
        FBConnection fbConnection = new FBConnection();
        String accessToken = fbConnection.getAccessToken(code);

        FBGraph fbGraph = new FBGraph(accessToken);
        String graph = fbGraph.getFBGraph();
        Map<String, String> fbProfileData = fbGraph.getGraphData(graph);

        model.put("fbProfileData", fbProfileData);

        User user = userService.getByEmail(null, fbProfileData.get("email").toString());

        if(user == null){
            return new ModelAndView("/account/changePassword", model);
        }

        model.put("user", user);

        // Authenticate the user and set the session
        HttpSession session = req.getSession(true);
        session.setAttribute("SPRING_SECURITY_CONTEXT", user);
        SecurityContextHolder.getContext().setAuthentication(new UsernamePasswordAuthenticationToken(user, user.getPassword(), user.getAuthorities()));


        return new ModelAndView("redirect:/shop", model);
    }


    @RequestMapping(value = "/account/changePassword" , method = RequestMethod.POST)
    public ModelAndView changePassword(@ModelAttribute("form") UserFacebook userFacebook,
                                       ModelMap model,HttpServletRequest req, HttpServletResponse res) {

        //TODO validare parola + parola2
        //todo trebuie sa intre pe aici doar cand creaza un nou user, pt change password trebuie alta
        //TODO check if email exist

        //get data
        User user = new User();
        BeanUtils.copyProperties(userFacebook, user);

        user.setFbId(null);

        user.setRole(roleService.findById(2L));

        // save
        userService.save(user);

        model.put("user", user);



        // Authenticate the user and set the session
        HttpSession session = req.getSession(true);
        session.setAttribute("SPRING_SECURITY_CONTEXT", user);
        SecurityContextHolder.getContext().setAuthentication(new UsernamePasswordAuthenticationToken(user, user.getPassword(), user.getAuthorities()));


        return new ModelAndView("redirect:/shop", model);
    }




    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login(@RequestParam(value = "error", required = false) String error,
                              @RequestParam(value = "logout", required = false) String logout,
                              ModelMap model,HttpServletRequest req) {

         /*CART LIST*/
        List<Cart> cartList = cartList(null, req);
        model.put("cart", cartList);

        if (error != null) model.put("error", "Invalid email and password!");
        if (logout != null) model.put("msg", "You've been logged out successfully.");

        return new ModelAndView("login", model);
    }




        //for 403 access denied page// TREBUIE SA MODIFIC ASTA
    @RequestMapping(value = "/403", method = RequestMethod.GET)
    public ModelAndView accesssDenied(ModelMap model) {


        //check if user is login
       /* Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!(auth instanceof AnonymousAuthenticationToken)) {
            UserDetails userDetail = (UserDetails) auth.getPrincipal();
            
            model.addObject("username", userDetail.getUsername());

        }*/

        return new ModelAndView("403", model);

    }




}

