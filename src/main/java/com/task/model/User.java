package com.task.model;


import java.util.Date;

/**
 *简单的登陆表
 * id
 * name
 * password
 * email
 * time 登陆时间
 * set方法使用三元运算符
 * 如果赋值不为null的话，则返回将起始和结尾都删除的字符串对象
 * trim（）方法返回调用字符串的副本
 */



public class User {
    private Integer id;

    private String name;

    private String password;

    private String email;

    private Date birthday;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }


    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", birthday=" + birthday +
                '}';
    }
}