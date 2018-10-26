package com.abcd.controller;

import com.abcd.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by YanMing on 2017/2/24.
 */

@Controller
public class HomeController {
    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @RequestMapping("/hello")
    public String hello(){
        logger.info("the first jsp page");
        return "home";
    }

    @RequestMapping("/retUser")
    @ResponseBody
    public User retUser(){
        User user=new User();
        user.setName("小明");
        user.setSex("男");
        return user;
    }
}
