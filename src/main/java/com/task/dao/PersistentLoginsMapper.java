package com.task.dao;

import com.task.model.PersistentLogins;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface PersistentLoginsMapper {

    @Select("select * from persistent_logins")
    List<PersistentLogins> list();

    @Insert("insert into persistent_logins (id,username,token)  values (#{id},#{username},#{token})")
    int addPersistent_logins(PersistentLogins p);

    @Select("select  *  from  persistent_logins  where  username = #{username}")
    List<PersistentLogins> getUserFromName(String username);

    @Select("select  *  from  persistent_logins  where  username = #{username}")
    List<PersistentLogins> verifyUserFromName(String username);

    @Select("select  *  from  persistent_logins  where  token = #{token}")
    List<PersistentLogins> verifyUserFromtoken(String token);
}

