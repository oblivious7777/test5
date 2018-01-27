package com.task.units;

import com.task.model.PersistentLogins;
import com.task.model.User;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.List;

import static com.task.units.CookieConstantTable.COOKIE_MAX_AGE;

public class CookieUtils {
    /**
     *
     * @param user
     * @param userMD5
     * @param response
     */
    public static void addCookie(User user, String userMD5, HttpServletResponse response) {
        Cookie cookie = new Cookie("user", userMD5);
        cookie.setMaxAge(COOKIE_MAX_AGE);//设置周期
        response.addCookie(cookie);
    }
/*


 */


    public static void delCookie(HttpServletResponse response, Cookie cookie) {
        if (cookie != null) {
            cookie.setPath("/");
            cookie.setMaxAge(0);
            cookie.setValue(null);

            response.addCookie(cookie);
        }
    }

    /**
     * 返回cookie
     *
     * @param
     * @param request
     * @return
     */

    public static Cookie getRootCookie(HttpServletRequest request) {

        Cookie[] cookies = request.getCookies();//获取cookie
        if(cookies!=null)
        for (Cookie c : cookies) {
            if (c.getName().equals("user"))
                return c;
        }
        return null;

    }


}
