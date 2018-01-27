package com.task.model;


import java.util.Date;

/**
 *校检自动登陆的表
 * id
 * username
 * series    用户使用密码登录成功之后获取的一个UUID值
 * token    在拦截器中校验是否能够登录的密文
 * 其加密方式是：EncryptionUtil.sha256Hex(用户名 + “_” + 密码 + “_” + 自动登录失效的时间点的字符串 + “_” +  自定义的salt)
 * validtime 失效时间
 *
 */

public class PersistentLogins {
    private Integer id;

    private String username;

    private String token;



    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token == null ? null : token.trim();
    }


    @Override
    public String toString() {
        return "PersistentLogins{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", token='" + token + '\'' +
            '}';
}
}