package com.springapp.controller;


import com.springapp.model.User;
import com.springapp.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import org.apache.commons.validator.EmailValidator;

import java.util.Locale;

/**
 * Created with InteliJ IDEA
 * User: vmotoroiu
 * Date: 28.03.2016
 * Time: 16:03
 */

@Component
public class ValidateForm implements Validator {

    @Override
    public boolean supports(Class<?> clazz) {
        return (UserForm.class.equals(clazz));
    }


    @Override
    public void validate(Object target, Errors errors) {
    }

    @Autowired
    private MessageSource messageSource;

    @Autowired
    private IUserService userService;

    public void validateForm(Object target, Errors errors) {
        UserForm userForm = (UserForm) target;
        Locale locale = LocaleContextHolder.getLocale();

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "errors.required.field");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastName", "errors.required.field");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "errors.required.field");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "errors.required.field");


        if (userForm.getFirstName() != null && userForm.getFirstName().length() <= 2 && !userForm.getFirstName().equals("")) {
            errors.rejectValue("firstName", "errors.required.field.parameter" , new Object[] {2, null, locale}, "min");
        }
        if (userForm.getLastName() != null && userForm.getLastName().length() <= 2 && !userForm.getLastName().equals("")) {
            errors.rejectValue("lastName", "errors.required.field.parameter" , new Object[] {2, null, locale}, "min");
        }
        if (userForm.getPassword() != null && userForm.getPassword().length() < 8 && !userForm.getPassword().equals("")) {
            errors.rejectValue("password", "errors.required.field.parameter" , new Object[] {8, null, locale}, "min");
        }

        if (userForm.getEmail() != null && !EmailValidator.getInstance().isValid(userForm.getEmail()) && !userForm.getEmail().equals("")) {
            errors.rejectValue("email", "errors.email");
        }else {
             /*check if email already exist*/
            User user = userService.getByEmail(null, userForm.getEmail());
            if(user != null) errors.rejectValue("email", "errors.email.duplicate");
        }

        if(userForm.getPassword() != null && !userForm.getPassword().equals(userForm.getConfirmPassword())){
            errors.rejectValue("password", "error.password");
            errors.rejectValue("confirmPassword", "error.password");
        }


        if(userForm.getLocality().toString().equals("-")){
            errors.rejectValue("locality", "errors.required.field.locality");
            errors.rejectValue("county", "errors.required.field.county");
        }











    }
}
