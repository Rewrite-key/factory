package lierengu.settings.web.controller;

import lierengu.commons.contants.Contants;
import lierengu.commons.contants.Session;
import lierengu.commons.domain.ReturnObject;
import lierengu.settings.domain.Admin;
import lierengu.settings.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    @RequestMapping("/settings/permission/admin/toLogin.do")
    public String toLogin(){return "settings/permission/admin/login";}

    @RequestMapping("/settings/permission/admin/login.do")
    @ResponseBody
    public Object login(String adminName, String password, String isRemPwd, HttpServletRequest request, HttpServletResponse response, HttpSession session){
        Map<String, Object> map = new HashMap<>();
        map.put("adminName",adminName);
        map.put("password",password);
        Admin admin = adminService.queryAdminByAdminNameAndPassword(map);

        ReturnObject returnObject = new ReturnObject();
        if (admin == null){
            returnObject.setCode(Contants.CODE.getFail());
            returnObject.setMessage("登陆失败");
        }else {
            returnObject.setCode(Contants.CODE.getSuccess());
            session.setAttribute(Session.SESSION,admin);

            if ("true".equals(isRemPwd)){
                Cookie cookie1 = new Cookie("adminName", admin.getAdminName());
                cookie1.setMaxAge(30*24*60*60);
                response.addCookie(cookie1);
                Cookie cookie2 = new Cookie("password", admin.getPassword());
                cookie2.setMaxAge(30*24*60*60);
                response.addCookie(cookie2);
            }else {
                Cookie cookie1 = new Cookie("adminName", "1");
                cookie1.setMaxAge(0);
                response.addCookie(cookie1);
                Cookie cookie2 = new Cookie("password", "1");
                cookie2.setMaxAge(0);
                response.addCookie(cookie2);
            }
        }
        return returnObject;
    }

    @RequestMapping("/settings/permission/admin/logout.do")
    public String logout(HttpServletResponse response,HttpSession session){
        Cookie cookie1 = new Cookie("adminName", "1");
        cookie1.setMaxAge(0);
        response.addCookie(cookie1);
        Cookie cookie2 = new Cookie("password", "1");
        cookie2.setMaxAge(0);
        response.addCookie(cookie2);
        session.invalidate();
        return "redirect:/";
    }
}
