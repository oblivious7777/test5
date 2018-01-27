package com.task.dao;

import com.task.model.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface UserMapper {

    @Select("select * from user")
    List<User> list();

    @Insert("insert into user (id,name,password,email,birthday) values (#{id},#{name},#{password},#{email},#{birthday})")
    int addUser(User user);


    @Select("select  *  from  user  where  name = #{name}")
    List<User> getUserFromName(User user);



}
