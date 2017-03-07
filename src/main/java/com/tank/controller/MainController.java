package com.tank.controller;

import com.tank.model.UserInfo;
import com.tank.service.UserInfoService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import java.util.List;

/**
 * Created by hzxiongtiankai on 2017/3/6.
 */
@Controller
public class MainController {

    @Resource
    private UserInfoService userInfoService;

    @RequestMapping("/")
    public String index(HttpServletRequest request, Model model) {
        List<UserInfo> userList = userInfoService.getAllUser();
        model.addAttribute("userInfoList", userList);
        return "index";
    }

    @RequestMapping("/addUser")
    public String addUser2(HttpServletRequest request, Model model) {
        String name = request.getParameter("name");
        String email = request.getParameter("email");

        //打印信息
        System.out.println("userName is:" + name);
        System.out.println("password is:" + email);

        //判空
        if(name==null || name.equals("") ){
            //名称为空 - 不添加进数据库
            //Add Info...
            List<UserInfo> userList = userInfoService.getAllUser();
            model.addAttribute("userInfoList", userList);
            return "redirect:/";
        }
        if(email==null || email.equals("")){
            //email为空 - 不添加进数据库
            //Add info...
            List<UserInfo> userList = userInfoService.getAllUser();
            model.addAttribute("userInfoList", userList);
            return "redirect:/";
        }

        //加入到数据库内
        UserInfo user = new UserInfo();
        user.setUserName(name);
        user.setUserEmail(email);
        user.setIsDelete((short) 0);
        userInfoService.addUser(user);

        List<UserInfo> userList = userInfoService.getAllUser();
        model.addAttribute("userInfoList", userList);

        return "redirect:/";
    }

}