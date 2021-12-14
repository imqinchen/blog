package com.qinchen.controller.admin;

import com.qinchen.pojo.User;
import com.qinchen.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.util.Calendar;


@Controller
@RequestMapping("/admin")
public class UserController {


    @Autowired  //注入userService
    private UserService userService;

    //跳转到登录页面，不写value默认是类上面的地址
    @GetMapping()
    public String toLoginPage(Model model){
        model.addAttribute("currentYear", Calendar.getInstance().get(Calendar.YEAR));
        return "admin/login";
    }


    //用户登录操作

    @PostMapping("/login")  //调用用户名和密码
    public String login(@RequestParam("username") String username,   //requestParam对用户名和密码进行注解
                        @RequestParam("password") String password,
                        HttpSession session,         //把用户名和密码放到session
                        RedirectAttributes attributes) {
        User user = userService.login(username, password);
        if (user != null) {
            //为了安全，session中不保存密码
            user.setPassword(null);
            //把用户名放到session
            session.setAttribute("user",user);
            return "admin/index";   // 返回后台首页
        } else {
            attributes.addFlashAttribute("massage", "用户名或密码错误");
            return "redirect:/admin";   //redirect用重定向返回页面
        }
    }


    //用户退出登录
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("user");  //将登陆放进session的用户名拿掉
        return "redirect:/admin";//redirect用重定向返回页面
    }
}
