package com.springapp.controller;

import com.springapp.model.Role;
import com.springapp.model.User;
import com.springapp.service.IRoleService;
import com.springapp.service.IUserService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 20.04.2016
 * Time: 16:02
 */
@Controller
public class AdministrationController extends AbstractController {


    @Autowired
    private IUserService userService;

    @Autowired
    private ValidateForm validateForm;

    @Autowired
    private IRoleService roleService;

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public ModelAndView adminPage(ModelMap model) {

        return new ModelAndView("/admin/admin", model);

    }

    @RequestMapping(value = "/admin/listUsers", method = RequestMethod.GET)
    public ModelAndView listUsers(ModelMap model) {

        List<User> user = userService.listUsers();

        model.put("users", user);
        User loggedUser = getCurrentUser();

        return new ModelAndView("admin/listUsers", model);

    }

    @RequestMapping(value = "/admin/addUser",  method =  RequestMethod.GET)
    public ModelAndView addUser(@ModelAttribute("form")  UserForm userForm,
                                ModelMap model ,BindingResult result) {

        List<String> role = new ArrayList<String>();
        role.add("ROLE_ADMIN");
        role.add("ROLE_USER");

        model.put("form", userForm);
        model.put("role", role);

        return new ModelAndView("/admin/addUser", model);
    }

    @RequestMapping(value = "/admin/addUser",  method =  RequestMethod.POST)
    public ModelAndView userDetail(@Valid @ModelAttribute("form") UserForm userForm,
                                   ModelMap model ,BindingResult result) {

        log.info("########## Validate new user ... ");
        validateForm.validateForm(userForm, result);

        if (result.hasErrors()) {
            log.info("########## Field has errors ... ");

            List<String> role = new ArrayList<String>();
            role.add("ROLE_ADMIN");
            role.add("ROLE_USER");
            model.put("role", role);

            return new ModelAndView("/admin/addUser", model);
        }

        log.info("########## Saving user ... ");
        User user = new User();
        Role role = roleService.findByRole(userForm.getRole());

        BeanUtils.copyProperties(userForm, user);
        user.setRole(role);

        userService.save(user);
        return new ModelAndView(redirect("/admin/userDetail?userId=" + user.getId() + "&msg=create"), model);
    }

    @RequestMapping(value = "/admin/userDetail",  method =  RequestMethod.GET)
    public ModelAndView userDetail(@Valid @ModelAttribute("form") UserForm userForm,
                                   @RequestParam(value = "userId", required = true) Long userId,
                                   @RequestParam(value = "msg", required = false) String msg,
                                   ModelMap model ,BindingResult result) {

        User user = userService.findById(userId);
        model.put("user", user);

        if(msg != null && msg.equals("create")){
            model.put("css", "success");
            model.put("msg", "Userul a fost creat!");
        } else if (msg != null && msg.equals("update")){
            model.put("css", "success");
            model.put("msg", "Userul a fost actualizat!");
        }

        return new ModelAndView("admin/userDetail", model);
    }

    @RequestMapping(value = "/admin/updateUser",  method =  RequestMethod.GET)
    public ModelAndView updateUser(@Valid @ModelAttribute("form") UserForm userForm,
                                   @RequestParam(value = "userId", required = true) Long userId,
                                   ModelMap model ,BindingResult result) {

        User user = userService.findById(userId);
        BeanUtils.copyProperties(user, userForm);

        model.put("form", userForm);
        model.put("role", getRoleList(userId));

        return new ModelAndView("admin/updateUser", model);
    }

    @RequestMapping(value = "/admin/updateUser",  method =  RequestMethod.POST)
    public ModelAndView viewUser(@Valid @ModelAttribute("form") UserForm userForm,
                                 ModelMap model ,BindingResult result) {

        log.info("########## Validate new user ... ");
        validateForm.validateForm(userForm, result);

        if (result.hasErrors()) {
            log.info("########## Field has errors ... ");
            model.put("role", getRoleList(userForm.getId()) );
            return new ModelAndView("/admin/updateUser", model);
        }

        User user = new User();
        BeanUtils.copyProperties(userForm, user);
        Role role = roleService.findByRole(userForm.getRole());
        user.setRole(role);

        user = userService.update(null, user);
        model.put("user", user);

        return new ModelAndView(redirect("/admin/userDetail?userId=" + user.getId() + "&msg=update"), model);
    }


    public List getRoleList(Long userId){
        User user = userService.findById(userId);
        List<String> role = new ArrayList<String>();
        if (user.getRole().getId() == 1){
            role.add(user.getRole().getRole());
            role.add("ROLE_USER");
        } else {
            role.add(user.getRole().getRole());
            role.add("ROLE_ADMIN");
        }

        return role;
    }

}
