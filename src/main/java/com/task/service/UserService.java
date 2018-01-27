package com.task.service;

import com.task.model.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public interface UserService {

    List<User> list();
    int addUser(User user);
    User getUserFromName(User user);

}
