package com.task.service.impl;

import com.task.dao.UserMapper;

import com.task.model.User;
import com.task.service.UserService;

import com.task.units.unit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.List;



@Service
public class UserServiceImpl  implements UserService {

    @Autowired
    @SuppressWarnings("SpringJavaAutowiringInspection")
    UserMapper userMapper;


    @Autowired
   PersistentLoginsServiceImpl persistentLoginsServiceImpl;


    public List<User> list(){
        return  userMapper.list();
    }

    /**
     * 注册所使用的
     */

    public int addUser(User user){
        user.setBirthday(unit.getCreationTime());//获取记录时间
        persistentLoginsServiceImpl.addPersistent_logins(user);//将用户信息加密后输入到另一表中
        return userMapper.addUser(user);

    }

    /**
     * 若表中此用户不唯一则返回null
     * @param user
     * @return
     */

    public User getUserFromName(User user){
        List<User> getUser=userMapper.getUserFromName(user);
        if(getUser.size()!=1){
            return  new User();
        }else{
            return getUser.get(0);
        }
    }


}
