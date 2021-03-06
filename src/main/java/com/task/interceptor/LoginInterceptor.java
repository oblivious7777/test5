package com.task.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.task.service.PersistentLoginsService;
import com.task.units.CookieUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import java.io.OutputStream;

public class LoginInterceptor extends HandlerInterceptorAdapter {
  /**
     * 用于在登录前验证 _csrf 参数
     * */


    @Autowired
    @SuppressWarnings("SpringJavaAutowiringInspection")
    private PersistentLoginsService persistentLoginsService;

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        Cookie cookie= CookieUtils.getRootCookie(request);
        if(cookie!=null){
            if(persistentLoginsService.verifyUserFromtoken(cookie.getValue())) {
                System.out.println(persistentLoginsService.verifyUserFromtoken(cookie.getValue()));
                return true;
            }else {
                response.setContentType("text/html;charset=utf-8");
                response.setStatus(403);
                OutputStream oStream = response.getOutputStream();
                oStream.write("无效的登陆！！！".getBytes("UTF-8"));
                return false;
            }
        }else{
            response.setContentType("text/html;charset=utf-8");
            response.setStatus(403);
            OutputStream oStream = response.getOutputStream();
            oStream.write("先登陆！！！".getBytes("UTF-8"));

            return false;
        }
    }

    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
            throws Exception {
        super.afterCompletion(request, response, handler, ex);
    }




}