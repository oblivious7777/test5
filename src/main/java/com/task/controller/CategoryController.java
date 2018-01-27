package com.task.controller;

import com.task.model.Category;
import com.task.model.Category_;
import com.task.model.PersistentLogins;
import com.task.model.User;
import com.task.service.CategoryService;
import com.task.service.PersistentLoginsService;
import com.task.service.UserService;
import com.task.units.AppMD5Util;
import com.task.units.CookieUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.jms.Session;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;


@Controller
@RequestMapping(value = "",method = RequestMethod.GET)
public class CategoryController {

    @Autowired
    @SuppressWarnings("SpringJavaAutowiringInspection")
    private UserService userService;
    @Autowired
    @SuppressWarnings("SpringJavaAutowiringInspection")
    private PersistentLoginsService persistentLoginsService;


    @Autowired
    CategoryService categoryService;
    /**
     *
     * @param
     * @return
     *
     * 仅作登陆页面的载体并不提供内置方法
     */

    @RequestMapping(value = "/logon", method = RequestMethod.GET)
    public ModelAndView UserLogon(User user) {
        ModelAndView mAndView = new ModelAndView("userLogon");
        return mAndView;
    }


    /**
     *生成cookie页面
     * @param user 用户的数据
     * @param response cookie
     * @return
     *
     * 判断UserLogon方法中的user的数据是否记录在数据库中
     * 依此判断是否生成cookie
     *
     */

    @RequestMapping(value = "/getLogon", method = RequestMethod.POST)
    public ModelAndView getUserLogOn(User user,HttpServletResponse response) {
        if (user.getName() != null && user.getPassword() != null & user.getName().length() != 0 && user.getPassword().length() != 0) {//不能为空数据
            PersistentLogins p=persistentLoginsService.getUserFromName(user.getName());//获取卡密信息,这句话得修改?
            if(user.getName()!=null) {
                String userMD5 = AppMD5Util.getMD5(user.getName(), user.getPassword());
                if (p.getToken().equals(userMD5)) {
                    CookieUtils.addCookie(user, userMD5, response);
                    return new ModelAndView("successLogon");
                } else {
                    return new ModelAndView("failLogon");
                }
            }else{return new ModelAndView("failLogon");}
        }else{
            return new ModelAndView("failLogon");
        }
    }





    /**判定页面
     * 检测如果cookie的值与用户的值相同的话
     */

    @RequestMapping(value = "/u", method = RequestMethod.GET)
    public ModelAndView test(User user, HttpServletRequest request, HttpServletResponse response) {
           return new ModelAndView("testLogon");
    }





    @RequestMapping(value = "/quit", method = RequestMethod.GET)
    public ModelAndView userQuit(User user, HttpServletRequest request, HttpServletResponse response) {
        CookieUtils.delCookie(response,CookieUtils.getRootCookie(request));
        return new ModelAndView("testLogon");
    }





    /**
     * 注册页面的载体
     * @param user
     * @return
     */
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public ModelAndView userRegister(User user){
        return new ModelAndView("userRegister");
    }



    /**
     * controller层只负责判断输入的是否为空数据
     *
     * @param user
     * @return
     */
    @RequestMapping(value = "/getRegister", method = RequestMethod.POST)
    public ModelAndView userGetRegister(User user){
        //检测是否为空为null
        if (user.getName() != null && user.getPassword() != null && user.getEmail()!=null & user.getName().length() != 0 && user.getPassword().length() != 0 && user.getEmail().length()!=0 ) {
            //检测输入的账号是否重复
            User userProofread = userService.getUserFromName(user);
            if (user.getName().equals(userProofread.getName())) {
                return new ModelAndView("failLogon");
            }else{
                userService.addUser(user);
                return new ModelAndView("successRegister");
            }

        }else{
            return new ModelAndView("failLogon");
        }
    }


    @RequestMapping(value = "0", method = RequestMethod.GET)
    public String tetView(Model model) {
     task(model);
        return "T10";
    }
    @RequestMapping(value = "0/k", method = RequestMethod.GET)
    public String tetiew(Model model) {
        task(model);
        return "T10";
    }

    @RequestMapping(value = "1/u", method = RequestMethod.GET)
    public String etView(Model model) {
        //打印职业介绍
        List<Category_> listOcc= categoryService.listOcc();
        model.addAttribute("listOcc",listOcc);

        //根据学员人数获取职业入学信息
        Category NumericalValue=new Category();
        Category NumericalValue1=new Category();
        Category NumericalValue2=new Category();
        Category NumericalValue3=new Category();
        Category NumericalValue4=new Category();
        Category NumericalValue5=new Category();
        //前端web
        NumericalValue.setDirection("前端");
        NumericalValue.setOccupation("web");
        model.addAttribute("FrontWeb",categoryService.listOccDir(NumericalValue));
        //前端wab
        NumericalValue1.setDirection("前端");
        NumericalValue1.setOccupation("wab");
        model.addAttribute("FrontWab",categoryService.listOccDir(NumericalValue1));
        //前端tab
        NumericalValue2.setDirection("前端");
        NumericalValue2.setOccupation("tab");
        model.addAttribute("FrontTab",categoryService.listOccDir(NumericalValue2));
        //后端web
        NumericalValue3.setDirection("后端");
        NumericalValue3.setOccupation("web");
        model.addAttribute("AfterWeb",categoryService.listOccDir(NumericalValue3));
        //后端wab
        NumericalValue4.setDirection("后端");
        NumericalValue4.setOccupation("wab");
        model.addAttribute("AfterWab",categoryService.listOccDir(NumericalValue4));
        //后端tab
        NumericalValue5.setDirection("后端");
        NumericalValue5.setOccupation("tab");
        model.addAttribute("AfterTab",categoryService.listOccDirAll(NumericalValue5));


        return "T11";
    }


  public Model task(Model model){
      int listState=categoryService.listState();
      int listStateAlready=categoryService.listStateAlready();
      List<Category> listStateAll= categoryService.listStateAll();
      model.addAttribute("listState",listState);
      model.addAttribute("listStateAlready",listStateAlready);
      model.addAttribute("listStateAll",listStateAll);
        return model;

  }

}