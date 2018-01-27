package com.task.service;

import com.task.model.PersistentLogins;
import com.task.model.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PersistentLoginsService {

    List<PersistentLogins> list();

    int addPersistent_logins(User user);

    PersistentLogins getUserFromName(String username);

    PersistentLogins verifyUserFromName(String username);

    boolean verifyUserFromtoken(String token);
}
